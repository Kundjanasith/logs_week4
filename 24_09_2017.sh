#Rscript 24_09_2017.R  out/1w/b/0.5_001.txt out_gg/1w/b/0.5/001.txt  out/1w/m/0.5_001.txt out_gg/1w/m/0.5/001.txt

for j in 0.5 1.0 1.5 2.0
do
    rm -rf out_ggg/b-$j.txt
    rm -rf out_ggg/m-$j.txt
    for k in 001 002 003 004 005 006 007 008 009 010 011 012 013 014 015 016 017 018 019 020 021 022 023 024 025
    do
        Rscript 24_09_2017.R out/1w/b/$j'_'$k.txt out_gg/1w/b/$j/$k.txt out/1w/m/$j'_'$k.txt out_gg/1w/m/$j/$k.txt
    done
    cat out_gg/1w/b/$j/*.txt >> out_ggg/b-1-$j.txt
    cat out_gg/1w/m/$j/*.txt >> out_ggg/m-1-$j.txt
done

for j in 0.5 1.0 1.5 2.0 2.5
do  
    rm -rf out_ggg/b-$j.txt
    rm -rf out_ggg/m-$j.txt
    for k in 001 002 003 004 005 006 007 008 009 010 011 012 013 014 015 016 017 018 019 020 021 022 023 024 025
    do
        Rscript 24_09_2017.R out/2w/b/$j'_'$k.txt out_gg/2w/b/$j/$k.txt out/2w/m/$j'_'$k.txt out_gg/2w/m/$j/$k.txt
    done
    cat out_gg/2w/b/$j/*.txt >> out_ggg/b-2-$j.txt
    cat out_gg/2w/m/$j/*.txt >> out_ggg/m-2-$j.txt
done

for j in 0.5 1.0 1.5 2.0 2.5 3.0
do
    rm -rf out_ggg/b-$j.txt
    rm -rf out_ggg/m-$j.txt
    for k in 001 002 003 004 005 006 007 008 009 010 011 012 013 014 015 016 017 018 019 020 021 022 023 024 025
    do
        Rscript 24_09_2017.R out/3w/b/$j'_'$k.txt out_gg/3w/b/$j/$k.txt out/3w/m/$j'_'$k.txt out_gg/3w/m/$j/$k.txt
    done
    cat out_gg/3w/b/$j/*.txt >> out_ggg/b-3-$j.txt
    cat out_gg/3w/m/$j/*.txt >> out_ggg/m-3-$j.txt
done

