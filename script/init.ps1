param (
  [Parameter(Mandatory=$true, Position=0)]
  [string]$Lang
)

$BookRoot = Join-Path -Path $PSScriptRoot -ChildPath "..\text" | Resolve-Path -Relative
$BookPath = Join-Path -Path $BookRoot -ChildPath $Lang
$tomlPath = Join-Path -Path $BookPath -ChildPath "book.toml"


function Initialize-Book {
  param (
    [Parameter(Mandatory=$true, Position=0)]
    [string]$Path
  )

  mdbook init $Path --title="Open Quantum Computing Textbook" --ignore=git
}


function Open-Book {
  param (
    [Parameter(Mandatory=$true, Position=0)]
    [string]$Path
  )

  mdbook serve $Path --open --watcher=poll
}


# TODO: Recursively copy Markdown fils from text\eng. Name the function Copy-Book.


function Enable-MathJax {
  param (
    [Parameter(Mandatory=$true, Position=0)]
    [string]$Path
  )

  @(
    "",
    "[output.html]",
    "mathjax-support = true"
  ) | Add-Content -Path $Path
}


Initialize-Book -Path $BookPath
Enable-MathJax -Path $tomlPath
Open-Book -Path $BookPath
