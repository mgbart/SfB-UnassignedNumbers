<#	
	.NOTES
	===========================================================================
	 Created with: 	SAPIEN Technologies, Inc., PowerShell Studio 2020 v5.7.178
	 Created on:   	9/8/2020 10:04 AM
	 Created by:   	Matías G. Bernhardt
	 Organization: 	Matías G. Bernhardt
	 Filename:     	Create-Announcements.ps1
	===========================================================================
	.DESCRIPTION
		Import CSV file to create SfB Announcements to use in SfB Unassigned Numbers
#>

$Folder = "C:\share\enable-sfb\"
$CSVFile = $Folder + "Create-Announcements.csv"

$CSV = import-csv $CSVFile

foreach ($Anno in $CSV) {
	$Parent = $Anno.Parent.Trim()
	$Name = $Anno.Name.Trim()
	$Language = $Anno.Language.Trim()
	$Text = $Anno.TextToSpeechPrompt.Trim()
	$TargetUri = $Anno.TargetUri.Trim()
	
	New-CsAnnouncement -Parent $Parent -Name $Name -language $Language -TextToSpeechPrompt $Text -TargetUri $TargetUri
}
