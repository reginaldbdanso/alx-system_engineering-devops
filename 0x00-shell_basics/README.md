#Description of Main Directory
##0x00-shell basics

*Second Readme file*
*The project is going great so far*

*Scripts*
1. 0-current working directory
// prints current working directory.

2. 1-listit
// displays the constents of your current directory.

3. 2-bring_me_home
//changes the working directory to the user’s home directory.

4. 3-listfiles
// Displays current directory contents in a long format.

5. 4-listmorefiles
// Display current directory contents, including hidden files using the long format.

6. 6-firstdirectory
// creates a directory named my_first_directory in the /tmp/ directory.

7. 7-movethatfile
// Move the file betty from /tmp/ to /tmp/my_first_directory.

8. 8-firstdelete
// Deletes the file betty in /tmp/my_first_directory

9. 9-firstdirdeletion
// Deletes the directory my_first_directory that is in the /tmp directory.

10. 10-back
// changes the working directory to the previous one.

11. 11-lists
// lists all files (even ones with names beginning with a period character, which are normally hidden) in the current directory and the parent of the working directory and the /boot directory (in this order), in long format.

12. 12-file_type
// prints the type of the file named iamafile. The file iamafile will be in the /tmp directory.

13. 13-symbolic_link
// Creates a symbolic link to /bin/ls, named __ls__. The symbolic link should be created in the current working directory.

14. 14-copy_html
// copies all the HTML files from the current working directory to the parent of the working directory, but only copy files that did not exist in the parent of the working directory or were newer than the versions in the parent of the working directory.

15. 100-lets_move
// moves all files beginning with an uppercase letter to the directory /tmp/u.

You can assume that the directory /tmp/u will exist when we will run your script

16. 101-clean_emacs
// Deletes all files in the current working directory that end with the character ~.

17. 102-tree
// Creates the directories welcome/, welcome/to/ and welcome/to/school in the current directory.

18. 103-commas
// lists all the files and directories of the current directory, separated by commas (,) taking the following into account:

Directory names should end with a slash (/)
Files and directories starting with a dot (.) should be listed
The listing should be alpha ordered, except for the directories . and .. which should be listed at the very beginning
Only digits and letters are used to sort; Digits should come first
You can assume that all the files we will test with will have at least one letter or one digit
The listing should end with a new line

19. school.mgc
// A magic file school.mgc that can be used with the command file to detect School data files. School data files always contain the string SCHOOL at offset 0.