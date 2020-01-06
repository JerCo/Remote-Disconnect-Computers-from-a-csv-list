$filepath = read-host "Please enter the computer file location"

$computerlist = Import-Csv -Path $filepath
foreach ($computer in $computerlist){
	Restart-Computer -ComputerName $computer.RESTART -Force
}