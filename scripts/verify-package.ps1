$ErrorActionPreference = "Stop"
$package = cargo package --locked --allow-dirty --no-verify --list
if ($LASTEXITCODE -ne 0) { throw "cargo package listing failed." }

foreach ($required in @(
    "Cargo.toml",
    "Cargo.lock",
    "README.md",
    "LICENSE",
    "src/citeweft.rs",
    "src/entity_model.rs",
    "src/layout.rs",
    "src/reference_model.rs",
    "src/routing.rs"
)) {
    if ($package -notcontains $required) {
        throw "Packaged crate is missing $required."
    }
}

$archive = cargo package --locked --allow-dirty --no-verify --list | Out-Null
if ($LASTEXITCODE -ne 0) { throw "cargo package verification failed." }
Write-Output "CiteWeft package inventory passed."
