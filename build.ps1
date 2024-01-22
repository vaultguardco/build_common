param (
	[string]$control_file,
	[string]$workspace
)

if(!$control_file) {
	Write-Output "No control file provided."
	return
}

if($workspace) {
	cd $workspace
}

Write-Output "Executing by file: $control_file"
& {Invoke-Expression( Get-Content -Raw $control_file) }
