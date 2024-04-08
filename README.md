# PANA
Using AutoHotKey for PANA Term Collection

# What is AutoHotkey? 

AutoHotKey is a windows scripting language designed to automate repetitive tasks using keyboard shortcuts. 

# How can AutoHotKey be used in the PANA workflow? 

The initial stage of PANA term collection is repetitive and therefore, able to automate using this tool, and other automation tools like it. Currently, the scripts are set up to conduct initial searches for English terms in our assigned list. They are not designed to perform searches requiring term splitting or searches in Spanish.  

 

# Instructions 

1. If you don’t already use Google Chrome, install it here: https://www.google.com/chrome/
            Note: In your Google Chrome browser, you will need to save the username and password for the PANA resources that require them (i.e. Armarc and lcsh-es.org) before you run a script. The scripts operate under the assumption that the username and passwords are pre-filled when you visit the resource’s website. 

3. Download and Install AutoHotKey: https://www.autohotkey.com/ 
            Choose the appropriate installer based on your system architecture (32-bit or 64-bit) and click on the download link. 

3. In your web browser, navigate to the PANA GitHub repository: https://github.com/rechey/PANA 

4. On the GitHub page, click on the "Code" button, and then click "Download ZIP." 

5. Locate the downloaded ZIP file and extract its contents to a folder of your choice. 

6. Inside the extracted folder, you will find different types of scripts for each term collector. Locate the files with your name. 
          Note: Each term collector will be assigned two scripts, Script A and Script B. Both scripts are designed to execute simple keyword searches. Script A is designed to perform a search for the first term in our assigned terms list, while Script B is designed to perform searches for each subsequent term in our assigned term list. 

7. Edit the script labeled "YourName_ScriptA using a text editor like Notepad by right-clicking on it and selecting the "Edit Script" option. 

8. *Important* Find the target location for Google Chrome inside the code of Script A (lines 7 & 19) and replace it with your Google Chrome target location. To edit the script, delete the highlighted portion of the code (shown in screenshot) and replace it with your Google Chrome target location and then save your changes. 
            An easy way to find your Google Chrome target location is to right-click on the Google Chrome shortcut icon on your desktop, navigate to “Properties” and copy the contents next to “Target”. 
            Script B does not require any editing. 😊  

9. To run a script, locate the scripts labeled with your name.  

10. Run Script A first by right-clicking on it and selecting “Open” or by double clicking the file. Script A will search for the first term in our assigned terms list. To search for all subsequent terms, run Script B. 

11. To stop the script while it is running, press Ctrl+x 

12. *Important* To run Script B successfully, AutoHotKey will search for an active Chrome window titled "AutoHotKey". To ensure the script works properly, make sure the Chrome window opened by Script A is active and open on the first tab, which should display our list of terms in a spreadsheet named "AutoHotKey". Otherwise, Script B will fail to execute. 

13. *Important* AutoHotKey will execute scripts in your currently active Google Chrome window. If you have more than one Chrome window open, ensure that you activate the Chrome window created by Script A before running Script B. 
            What is an active window?  
            “The window in front (foreground) of all other open windows, on a graphical user interface.” 


# Additional notes: 

1. Lemb Digit@l: This resource cannot be automated. Server for this resource is sensitive to multiple page refresh triggers, referred to as a “single-page application” (SPA). Automation using AutoHotKey requires multiple log-in requests, which will overwhelm the server. 🙁  

2. Biblioteca Nacional de España (BNE or abne): This resource cannot be automated. Searching inside this resource directly does not yield results. Searches must be performed through https://fast.oclc.org/searchfast/ , which complicates the process. Perhaps one day, I will solve this issue. For now, it’s much easier to perform searches manually according to the steps outlined in this recording. 

3. Biblioteca Nacional de Argentina: This resource cannot be automated. Server is very sensitive and crashes frequently. 

 
