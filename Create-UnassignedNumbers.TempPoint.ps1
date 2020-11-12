<#	
	.NOTES
	===========================================================================
	 Created with: 	SAPIEN Technologies, Inc., PowerShell Studio 2020 v5.7.178
	 Created on:   	9/8/2020 10:12 AM
	 Created by:   	Matías Bernhardt
	 Organization: 	Matías Bernhardt
	 Filename:     	Create-UnassignedNumbers.ps1
	===========================================================================
	.DESCRIPTION
		Import CSV file to create SfB Unassigned Numbers.
#>

$Folder = "C:\share\enable-sfb\"
$CSVFile = $Folder + "Create-UnassignedNumbers.csv"

$CSV = import-csv $CSVFile

foreach ($Config in $CSV) {
	$identity = $Config.Identity.Trim()
	$NumberRangeStart = $Config.NumberRangeStart.Trim()
	$NumberRangeEnd = $Config.NumberRangeEnd.Trim()
	$AnnouncementService = $Config.AnnouncementService.Trim()
	$AnnouncementName = $Config.AnnouncementName.Trim()
	
	New-CsUnassignedNumber -Identity $identity -NumberRangeStart $NumberRangeStart -NumberRangeEnd $NumberRangeEnd -AnnouncementService $AnnouncementService -AnnouncementName $AnnouncementName
}
