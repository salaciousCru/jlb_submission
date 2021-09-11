#makefile

# The makefile should produce the README.md which should contain the following information:

#    The title of the project.
#    The date and time at which make was run.
#    The number of lines of code contained in guessinggame.sh.

# The README.md should be produced entirely from the makefile and should not be edited by hand.
# The second URL should be the GitHub Pages site that is generated from the README.md file.
# As long as you satisfy all of the criteria above with your program then you should receive full credit for this assignment.


README.md:
	touch README.md
	echo "#The Unix Workbench - JB Submission" > README.md
	echo "**make file date and time**" >> README.md
	ls -l | egrep 'makefile' >> README.md 
	echo "**number of code lines in guessinggame**" >> README.md
	wc -l guessinggame.sh >> README.md
