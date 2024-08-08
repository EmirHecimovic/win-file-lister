Windows File Lister

Overview

The Windows File Lister is a PowerShell script designed to list all files from specific user directories and any connected external drives on a Windows machine. The script outputs the list of files to a text file saved on the user’s desktop.

Features

	•	Lists all files on the user’s Desktop.
	•	Lists all files in the Downloads folder.
	•	Lists all files in the Documents folder.
	•	Lists all files on any connected external drives.
	•	Saves the output to a text file on the user’s desktop.
	•	Handles errors silently and continues processing other directories.

Usage

Prerequisites

	•	Windows operating system.
	•	PowerShell (Run as Administrator).

Running the Script

	1.	Download the Script: Download the windows_file_lister.ps1 script from this repository.
	2.	Open PowerShell as Administrator.
 	4.	Output: The script will create a file named files_list.txt on your desktop containing the list of files from the specified directories and external drives.

  Script Explanation

	•	Output File Initialization: The script initializes or clears the output file located on the desktop.
	•	Directory Listing: Uses Get-ChildItem to recursively list files in the Desktop, Downloads, and Documents folders.
	•	External Drives Listing: Identifies external drives by filtering for drives with letters D: through Z:, then recursively lists files on each external drive.
	•	Appending Results: All results are appended to the output file specified on the desktop.
	•	Completion Notification: Provides a completion message with the location of the output file.

Contributing

Contributions are welcome! Please fork this repository and submit pull requests for any enhancements or bug fixes.

License 

This project is open-source and available under the MIT License.

