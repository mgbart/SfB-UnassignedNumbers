# SfB-UnassignedNumbers
Create announcements and Unassigned Number features from a CSV file

# Prepare your CSV files

1. Create a file for your Announcements (Example Provided under CSV)

Name,Language,TextToSpeechPrompt,TargetUri,Parent
US-NewYork-Announcement,en-US,This number is no longer assigned... We are forwarding your call now.,sip:+12223334001@example.com,service:ApplicationServer:pool01.example.com
US-SanFrancisco-Announcement,en-US,This number is no longer assigned... We are forwarding your call now.,sip:+15556667001@example.com,service:ApplicationServer:pool01.example.com

2. Create a file for each of your Unassigned Number Ranges (Example Provided under CSV)

Identity,AnnouncementName,NumberRangeStart,NumberRangeEnd,AnnouncementService
US-NewYork-FwdToReception,US-NewYork-Announcement,+12223334000,+12223334199,service:ApplicationServer:pool01.example.com
US-SanFrancisco-FwdToReception,US-SanFrancisco-Announcement,+15556667000,+15556667500,service:ApplicationServer:pool01.example.com

# Run your scripts

3. Run Create-Announcements.ps1

4. Run Create-UnassignedAnnouncements.ps1
