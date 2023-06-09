In order to run the scripts, the project must 
be situated as follows...

  C:/eclipse/workspace/Tumor-Immune_System/...


Documentation is in the 
"Tumor-Immune_System/Documentation" directory.


The referenced papers are in the
"Tumor-Immune_System/Documentation/References" 
directory.


The file "Tumor-Immune System/TIS_rule.ods"
is the OpenOffice spreadsheet used to generate
CD++ code.


To test the Tumor-Immune System model...

  1) Go to the "Tumor-Immune_System" directory

  2) Edit "TIS.ma" to change the size of the 
     cell space and the initial coordinates 
     of the tumor

  3) Edit "TIS.inc" to change the other 
     model parameters

  4) Run TIS_test_run.bat to generate the 
     log file

  5) Run TIS_test_drw.bat to generate the 
     drw file


The four tests described in the report can
be found in the "Tumor-Immune_System/Test" 
directory.  Each test has the following 
files...

  * "Readme_test-?.txt"  description of test
  * "TIS_test-?.ma"      model file
  * "TIS_test-?.inc"     model parameters
  * "TIS_test-?.pal"     palette file
  * "TIS_test-?.drw"     processed results
  * "TIS-test-?_run.bat" script to run simulation
  * "TIS-test-?_drw.bat" script to process results

  (the log files were deleted from the tests to
   save space; they can be obtained by re-running 
   the simulations)
