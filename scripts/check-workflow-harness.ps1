$ErrorActionPreference = "Stop"
$workflows = Get-ChildItem "$PSScriptRoot\..\.github\workflows" -Filter *.yml
if ($workflows.Count -eq 0) { throw "No workflows found." }

foreach ($workflow in $workflows) {
    $content = Get-Content -Raw $workflow.FullName
    if ($content -notmatch '(?m)^permissions:\s*$') { throw "$($workflow.Name) lacks top-level permissions." }
    if ($content -notmatch '(?m)^concurrency:\s*$') { throw "$($workflow.Name) lacks top-level concurrency." }
    if ($content -notmatch '(?m)^\s+timeout-minutes:\s+\d+') { throw "$($workflow.Name) lacks a job timeout." }
    if ($content -match 'persist-credentials:\s*true') { throw "$($workflow.Name) persists checkout credentials." }
    foreach ($match in [regex]::Matches($content, 'uses:\s*[^\s@]+@([^\s#]+)')) {
        if ($match.Groups[1].Value -notmatch '^[0-9a-f]{40}$') {
            throw "$($workflow.Name) has an unpinned action: $($match.Value)"
        }
    }
}

Write-Output "Workflow harness passed for $($workflows.Count) workflow(s)."
