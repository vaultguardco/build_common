param( 	
	[string]$path 
)  

Write-Output "++++++++++++++++++++++++++++++++++++" 
Write-Output "  Starting build of $path" 
Write-Output "++++++++++++++++++++++++++++++++++++"  

dotnet restore $path -r win-x86
nuget restore $path 
msbuild $path /p:Configuration=Release
