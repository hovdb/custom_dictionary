# Output file.
my $outfile = 'dictionary.xml';

# Opening the output file
open (oFILE, ">> $outfile") || die "problem opening $outfile\n";

# Print beginning of dictionary file
print oFILE "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n";
print oFILE @lines1;

print oFILE "<Grammars>\n";
print oFILE @lines2;

#Edit Dictionary Name
print oFILE "<Dictionary name=\"cars_dic\">\n";
print oFILE @lines3;

# Edit Dictionary Entry Set
print oFILE "<EntrySet name=\"cars_codes\" case=\"off\">\n";
print oFILE @lines4;

open(iFILE, "data.txt");          #opens the input file data.txt in read-mode
while(<iFILE>){                   #reads line by line from iFILE which is the filehandle for data.txt
   chomp;
   print oFILE "<Entry headword=\"$_\" />\n"    ; #Reads from data.txt & writes each line into output file dictionary.xml
}
#close the input file.
close iFILE;                      

# Print end of Dictionary file
print oFILE "</EntrySet>\n";
print oFILE @lines5;

print oFILE "</Dictionary>\n";
print oFILE @lines6;

print oFILE "</Grammars>\n";
print oFILE @lines7;

# Close Out-Put file dictionary.xml
close(oFILE);

