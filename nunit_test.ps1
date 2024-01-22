param( 	
	[string]$path 
)  

Write-Output "++++++++++++++++++++++++++++++++++++" 
Write-Output "  Running NUnit tests" 
Write-Output "++++++++++++++++++++++++++++++++++++" 

nuget install NUnit.ConsoleRunner -Version 3.16.3 -DirectDownload -OutputDirectory .
NUnit.ConsoleRunner.3.16.3\tools\nunit3-console.exe $path
