param(
	[string]$path 
)  

Write-Output "++++++++++++++++++++++++++++++++++++"
Write-Output "  Starting build of $path"
Write-Output "++++++++++++++++++++++++++++++++++++"

dotnet restore $path
dotnet build $path --no-restore
dotnet test $path --no-build --verbosity normal

dotnet publish $path --configuration Release
