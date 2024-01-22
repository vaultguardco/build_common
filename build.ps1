param (
	[string]$control_file,
	[string]$workspace
)

if(!$control_file) {
	Write-Output "No control file provided."
	return
}

# if($workspace) {
	# cd $workspace
# }

Write-Output "Parsing control-file: $control_file"
foreach($line in Get-Content $control_file) {
	$command = ($line -split ' ')[0]
	if($command -eq "#") {continue} # It's a comment so let's skip it!
	$path = $line.TrimStart("$command").TrimStart()
	
	switch($command) {
		"build_sln_win" {
			& "./build_sln_win.ps1" -path "$path"
		}
		"nunit_test" {
			& "./nunit_test.ps1" -path "$path"
		}
		"build_dotnet" {
			& "./build_dotnet.ps1" -path "$path"
		}
	}
}