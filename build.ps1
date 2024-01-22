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

Write-Output "Parsing control-file: $control_file"
foreach($line in Get-Content $control_file) {
	Write-Output "Line containing: $line"
}
# & {Invoke-Expression( Get-Content -Raw $control_file) }
