#!/bin/bash
#sed -i "s/find_string/replace_with_this_string" file_to_be_edited
#example find_string=NVT_GCMG_300K_i
#we want to change the letter i to the variable $i
#we have to change the whole string to avoid mistakes

sed -i "s/NVT_GCMC_300K_i/NVT_GCMC_300K_$i/" submit.sh
