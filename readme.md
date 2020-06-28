## **Todoist API Testing Python** 
 
#### Required installations:
Open CMD navigate to your working directory to "run" folder execute the following command
~~~~
pip install -r ../requirements.txt
~~~~
#### Running Tests Commands:
~~~~
bash tests_api.sh
~~~~
#### Results:
~~~~
Tests
==============================================================================
Create New Project                                                    | PASS |
------------------------------------------------------------------------------
Create New Task                                                       | PASS |
------------------------------------------------------------------------------
Create New Task with date                                             | PASS |
------------------------------------------------------------------------------
Create New Task with date and time                                    | PASS |
------------------------------------------------------------------------------
Create New SubTask                                                    | PASS |
------------------------------------------------------------------------------
Create New Project without name                                       | PASS |
------------------------------------------------------------------------------
Create New Task with error date                                       | PASS |
------------------------------------------------------------------------------
Create New Task with error time                                       | PASS |
------------------------------------------------------------------------------
Create New Note                                                       | PASS |
------------------------------------------------------------------------------
Tests                                                                 | PASS |
9 critical tests, 9 passed, 0 failed
9 tests total, 9 passed, 0 failed
==============================================================================

Create new project                                                    | PASS |
------------------------------------------------------------------------------
test GUI                                                              | PASS |
1 critical test, 1 passed, 0 failed
1 test total, 1 passed, 0 failed
==============================================================================
