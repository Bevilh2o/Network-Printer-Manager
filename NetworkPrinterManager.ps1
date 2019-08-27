#Author: Michel Bevilacqua  

$isDone = $false;

while (!$isDone)
{
	echo 'Enter the number corresponding to the printer you want to install and press "Enter"'
	echo '0. INSERT PRINTER NAME HERE'
	echo '1. INSERT PRINTER NAME HERE'
	$Printer = Read-Host -Prompt 'Number'
	<# 
	Exception handling still need to be implemented
	Try 
	{
	#>
		switch ($Printer)
		{
			#EXAMPLE: $result = add-printerport -name "10.40.100.20" -printerhostaddress "10.40.100.20"; add-printer -name "LF-LEXMARK" -drivername "Lexmark XC9200 Series PS3" -port "10.40.100.20"; break
			0 { $result = add-printerport -name "INSERT PRINTER PORT HERE" -printerhostaddress "INSERT PRINTER IP HERE"; add-printer -name "INSERT PRINTER NAME HERE" -drivername "INSERT PRINTER DRIVER NAME HERE" -port "INSERT PORT HERE"; break}   
			1 { $result = add-printerport -name "INSERT PRINTER PORT HERE" -printerhostaddress "INSERT PRINTER IP HERE"; add-printer -name "INSERT PRINTER NAME HERE" -drivername "INSERT PRINTER DRIVER NAME HERE" -port "INSERT PORT HERE"; break}
			default {"Invalid number"; break}
		}

		$result
	
	<#
	} 
	Catch 
	{ 
		Write-Output 'Something went wrong: The printer name already exist'
	}
	Catch
	{
		Write-Output 'Something went wrong: The printer port already exist'
	}
	#>
	
	echo 'Would you like to install another printer? Enter the corresponding number and press "Enter"'
	echo '0. Yes'
	echo '1. No'
	
	$Continue = Read-Host -Prompt 'Number'
	
	switch ($Continue)
	{
		0 {break}   
		1 {$isDone = $true; break}
		default {$isDone = $true; break}
	}
}