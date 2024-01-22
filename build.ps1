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
	$command = ($line -split ' ')[0]
	if($command -eq "#") {return} # It's a comment so let's skip it!
	
	Write-Output "Found command: $command"
}
# & {Invoke-Expression( Get-Content -Raw $control_file) }
