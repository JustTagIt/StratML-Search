# StratML-Search
Functions to explore StratML files



This repository contains a zipped folder, "xml", that holds XML files marked up in StratML vocabulary.  This folder also has a stylesheet file, 'stratml.xsl' that is called in one of the example routines.  The instructions here are to be able to load up this folder in a native XML database (BaseX) and query with some XQuery routines



* install BaseX from http://basex.org [the full package]
* run the bin\basexgui.bat 
* create a  new database
  * Database > New... 
  * select the xml folder
  * Call the database "StratML-Files"
  * Under the "Full Text" tab tick the "Full Text" checkbox
* In the code editor open the "StratML-Programmes\basicInformation.xq" file
* Ensure that the basicInformation.xqm module file is in the same StratML-Programmes folder
* run the code.  Note that you can add/remove the XQuery comments "(:  ....  :)" to only run specific functions
