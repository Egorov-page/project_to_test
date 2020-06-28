#!/bin/bash

robot --outputdir ../ ../test/tests.robot
robot --outputdir ../ --log log_GUI --report report_GUI ../test/test_GUI.robot