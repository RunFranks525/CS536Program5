Scott Franklin - franklin
Lewis Kunik - lewis
CS536 Program5 ReadMe

To invoke our program, download the zip file included in our submission, and unzip the file.  From here, type . configure.sh to configure the directory.  To clean the directory of unneeded class files, type make clean.  To compile all code, type make.   
From here, we have three different forms of tests for our program.  The first tests a large file of input with correct types of all situations that we could predict.  To invoke this test, type make test.  Because this should produce no type errors, the terminal output should not include errors.  Output can be found in test.out, and the input file is test.ha.  
The second test file tests a large file of input with a fairly exhaustive set of type-errors in all different contexts.  To invoke this test, type make bad.  All error output is spat out to the terminal, and can be compared against comments at each line in the input file, typeErrors.ha.  Output for the file, while sort of irrelevant to this program test, is found in typeErrors.out. 
The last file tests a file given by the course with input of pre-known errors.  This input file is called example.ha.  To run the test for this file, type make ex.  Output of type errors will go to the terminal, and can be compared to the known set of output in the file example.err. Again, while sort of irrelevant to our test, example.out has output for this test. `
