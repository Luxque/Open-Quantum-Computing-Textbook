param (
  [Parameter(Mandatory=$true, Position=0)]
  [string]$Lang
)

$BookRoot = Join-Path -Path $PSScriptRoot -ChildPath "..\text" | Resolve-Path -Relative
$BookPath = Join-Path -Path $BookRoot -ChildPath $Lang


function Open-Book {
  param (
    [Parameter(Mandatory=$true, Position=0)]
    [string]$Path
  )

  mdbook serve $Path --open --watcher=poll
}


Open-Book -Path $BookPath
