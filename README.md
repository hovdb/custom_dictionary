
[README.txt](https://github.com/hovdb/custom_dictionary/files/7218033/README.txt)


Creating a custom dictionary from a list of terms/strings.


1. Create a list called data.txt in the format as the example file.


2. Modify the dictionary.pl and update cars with the dictionary name and cars codes (do a find and replace on cars)


3. Save script.


4. Run script from terminal: perl dictionary.pl


5. Validate dictionary.xml is created in the correct format (see example dictionary.xml)


6. Create a Content Pattern for the dictionary you just created:
*****Content Pattern Name: CAR_COMPANIES******************
(?A:cars_dic/cars)
******End**************************************************************


7. Create a rule to reference the pattern name you created (use the name of the pattern)  See README.txt
