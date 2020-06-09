#!/bin/bash
gawk -F'\t'  '{if($1== "Q9Z2Y3" && $2==  "Q9NSC5")printf("%s\t%s\n",$1,$2)}' il29.txt  >test.txt
sort -u test.txt >test1.txt
wc -l <test1.txt >pos_pos.txt
gawk -F'\t'  '{if($1==  "Q9Z2Y3" && $2!=  "Q9NSC5")printf("%s\t%s\n",$1,$2)}' il29.txt  >test.txt
sort -u test.txt >test1.txt
wc -l <test1.txt >pos_neg.txt
gawk -F'\t'  '{if($1!=  "Q9Z2Y3"&& $2== "Q9NSC5" )printf("%s\t%s\n",$1,$2)}' il29.txt  >test.txt
sort -u test.txt >test1.txt
wc -l <test1.txt >neg_pos.txt
gawk -F'\t'  '{if($1!= "Q9Z2Y3" && $2!=  "Q9NSC5" )printf("%s\t%s\n",$1,$2)}' il29.txt  >test.txt
sort -u test.txt >test1.txt
wc -l <test1.txt >neg_neg.txt
paste -d '\t' pos_pos.txt pos_neg.txt neg_pos.txt neg_neg.txt >pos_or_neg.txt
