# History of source lines

## Command lines

```bash
DIR_CLOC=~/Scripts/cpan
FILE_CLOC=~/Scripts/cpan/Task-EGA/cloc.md

printf "\n## " >> ${FILE_CLOC}
date           >> ${FILE_CLOC}
echo           >> ${FILE_CLOC}
echo '```text' >> ${FILE_CLOC}
cloc ${DIR_CLOC} --exclude-dir .idea --exclude-lang JSON,RobotFramework,XML,YAML \
    | egrep -v "^\s+" | egrep -v "(files|ignored)\." | egrep -v "https" \
    >> ${FILE_CLOC}
echo           >> ${FILE_CLOC}
find ${DIR_CLOC} -type d -not -name ".*" -maxdepth 1 \
    | grep -v "cpan$" \
    | parallel --keep-order "echo; echo {}; cloc {} --exclude-dir .idea --exclude-lang JSON,RobotFramework,XML,YAML" \
    | egrep "SUM:|cpan" \
    >> ${FILE_CLOC}
echo '```' >> ${FILE_CLOC}

```

## Tue Nov 24 14:10:29 2009

```text
SLOC	Directory	SLOC-by-Language (Sorted)
2415    Bio-Alien-Blastz ansic=1767,perl=648
2005    AlignDB-IntSpan perl=2005
1962    AlignDB-IntSpanXS perl=1962
883     AlignDB-Util    perl=883
707     AlignDB-SQL     perl=707
652     AlignDB-Excel   perl=652
623     AlignDB-Codon   perl=623
519     Bio-Alien-Chaining perl=519
378     AlignDB-Window  perl=378
159     AlignDB-Stopwatch perl=159
102     AlignDB-DeltaG  perl=102
90      AlignDB-Run     perl=90
10      Task-Aphid      perl=10
0       top_dir         (none)

Totals grouped by language (dominant language first):
perl:          8738 (83.18%)
ansic:         1767 (16.82%)

Total Physical Source Lines of Code (SLOC)                = 10,505
Development Effort Estimate, Person-Years (Person-Months) = 2.36 (28.36)
 (Basic COCOMO model, Person-Months = 2.4 * (KSLOC**1.05))
Schedule Estimate, Years (Months)                         = 0.74 (8.91)
 (Basic COCOMO model, Months = 2.5 * (person-months**0.38))
Estimated Average Number of Developers (Effort/Schedule)  = 3.18
Total Estimated Cost to Develop                           = $ 319,233
 (average salary = $56,286/year, overhead = 2.40).
```

## Sat Oct 13 21:58:59 2012

```text
SLOC	Directory	SLOC-by-Language (Sorted)
2602    Bio-Alien-Blastz ansic=1950,perl=652
2202    AlignDB-IntSpan perl=2202
1962    AlignDB-IntSpanXS perl=1962
1288    Task-Aphid      perl=1288
1039    AlignDB-Codon   perl=1039
888     AlignDB-Util    perl=888
887     AlignDB-Excel   perl=887
707     AlignDB-SQL     perl=707
535     AlignDB-Window  perl=535
519     Bio-Alien-Chaining perl=519
222     AlignDB-Stopwatch perl=222
102     AlignDB-DeltaG  perl=102
90      AlignDB-Run     perl=90
0       top_dir         (none)

Totals grouped by language (dominant language first):
perl:         11093 (85.05%)
ansic:         1950 (14.95%)

Total Physical Source Lines of Code (SLOC)                = 13,043
Development Effort Estimate, Person-Years (Person-Months) = 2.97 (35.59)
 (Basic COCOMO model, Person-Months = 2.4 * (KSLOC**1.05))
Schedule Estimate, Years (Months)                         = 0.81 (9.72)
 (Basic COCOMO model, Months = 2.5 * (person-months**0.38))
Estimated Average Number of Developers (Effort/Schedule)  = 3.66
Total Estimated Cost to Develop                           = $ 400,671
 (average salary = $56,286/year, overhead = 2.40).
```

## Mon Apr 11 10:24:14 CST 2016

```text

-------------------------------------------------------------------------------
Language                     files          blank        comment           code
-------------------------------------------------------------------------------
Perl                           102           3438           1907          13146
C/C++ Header                     2            769           3027           2693
JSON                            14             14              0           1101
C                                2            159              3            774
XML                              6              0              0            704
YAML                            10              0              0             80
make                             1              4              0             14
CMake                            1              4              0              8
RobotFramework                   3              0              0              5
-------------------------------------------------------------------------------
SUM:                           141           4388           4937          18525
-------------------------------------------------------------------------------

/Users/wangq/Scripts/cpan/AlignDB-Codon
SUM:                             8            192            159            738
/Users/wangq/Scripts/cpan/AlignDB-DeltaG
SUM:                             3             86             85            205
/Users/wangq/Scripts/cpan/AlignDB-Excel
SUM:                             3            279            184           1013
/Users/wangq/Scripts/cpan/AlignDB-GC
SUM:                             3            120             49            521
/Users/wangq/Scripts/cpan/AlignDB-IntSpan
SUM:                            17            713            377           2196
/Users/wangq/Scripts/cpan/AlignDB-IntSpanXS
SUM:                            33           1456           3155           6592
/Users/wangq/Scripts/cpan/AlignDB-Run
SUM:                             3             56             43            178
/Users/wangq/Scripts/cpan/AlignDB-SQL
SUM:                            13            178             72            849
/Users/wangq/Scripts/cpan/AlignDB-Stopwatch
SUM:                             3             92             49            280
/Users/wangq/Scripts/cpan/AlignDB-ToXLSX
SUM:                             3            215            121            935
/Users/wangq/Scripts/cpan/AlignDB-Util
SUM:                             7            243            230           1286
/Users/wangq/Scripts/cpan/AlignDB-Window
SUM:                             3            196            219            696
/Users/wangq/Scripts/cpan/App-Fasops
SUM:                            18            257             51           1172
/Users/wangq/Scripts/cpan/App-RL
SUM:                            24            266            125           1152
/Users/wangq/Scripts/cpan/Task-EGA
SUM:                             4             39             18            741
```

## Sat May 14 04:13:02 CST 2016

```text

-------------------------------------------------------------------------------
Language                     files          blank        comment           code
-------------------------------------------------------------------------------
Perl                           101           3366           1779          12767
C/C++ Header                     2            769           3027           2693
JSON                            13             13              0           1026
C                                2            159              3            774
make                             2            213            103            595
YAML                            13              0              0            180
CMake                            1              4              0              8
RobotFramework                   3              0              0              5
-------------------------------------------------------------------------------
SUM:                           137           4524           4912          18048
-------------------------------------------------------------------------------

/Users/wangq/Scripts/cpan/AlignDB-Codon
SUM:                             8            192            159            738
/Users/wangq/Scripts/cpan/AlignDB-DeltaG
SUM:                             5             88             85            281
/Users/wangq/Scripts/cpan/AlignDB-Excel
SUM:                             3            279            184           1013
/Users/wangq/Scripts/cpan/AlignDB-GC
SUM:                             3            120             49            521
/Users/wangq/Scripts/cpan/AlignDB-IntSpan
SUM:                            18            913            487           2766
/Users/wangq/Scripts/cpan/AlignDB-IntSpanXS
SUM:                            27           1456           3153           5890
/Users/wangq/Scripts/cpan/AlignDB-Run
SUM:                             3             56             43            178
/Users/wangq/Scripts/cpan/AlignDB-SQL
SUM:                            13            178             72            849
/Users/wangq/Scripts/cpan/AlignDB-Stopwatch
SUM:                             3             92             49            280
/Users/wangq/Scripts/cpan/AlignDB-ToXLSX
SUM:                             3            215            122            933
/Users/wangq/Scripts/cpan/AlignDB-Window
SUM:                             3            196            219            696
/Users/wangq/Scripts/cpan/App-Fasops
SUM:                            22            414            134           1918
/Users/wangq/Scripts/cpan/App-RL
SUM:                            25            286            138           1273
/Users/wangq/Scripts/cpan/Task-EGA
SUM:                             4             39             18            736
```

## Tue Jun 21 06:20:15 CST 2016

```text

-------------------------------------------------------------------------------
Language                     files          blank        comment           code
-------------------------------------------------------------------------------
Perl                           113           3654           1991          14419
C/C++ Header                     2            769           3027           2693
C                                2            159              3            774
make                             2            213            103            595
CMake                            1              4              0              8
-------------------------------------------------------------------------------
SUM:                           120           4799           5124          18489
-------------------------------------------------------------------------------

/Users/wangq/Scripts/cpan/AlignDB-Codon
SUM:                             7            191            159            668
/Users/wangq/Scripts/cpan/AlignDB-DeltaG
SUM:                             3             87             85            146
/Users/wangq/Scripts/cpan/AlignDB-Excel
SUM:                             2            278            184            941
/Users/wangq/Scripts/cpan/AlignDB-GC
SUM:                             2            119             49            455
/Users/wangq/Scripts/cpan/AlignDB-IntSpan
SUM:                            16            912            487           2677
/Users/wangq/Scripts/cpan/AlignDB-IntSpanXS
SUM:                            24           1456           3153           5873
/Users/wangq/Scripts/cpan/AlignDB-Run
SUM:                             2             55             43            111
/Users/wangq/Scripts/cpan/AlignDB-SQL
SUM:                            12            177             72            781
/Users/wangq/Scripts/cpan/AlignDB-Stopwatch
SUM:                             2             91             49            210
/Users/wangq/Scripts/cpan/AlignDB-ToXLSX
SUM:                             2            214            122            864
/Users/wangq/Scripts/cpan/AlignDB-Window
SUM:                             2            195            219            627
/Users/wangq/Scripts/cpan/App-Fasops
SUM:                            18            449            144           2138
/Users/wangq/Scripts/cpan/App-Rangeops
SUM:                             8            213            187            713
/Users/wangq/Scripts/cpan/App-RL
SUM:                            15            288            136           1228
/Users/wangq/Scripts/cpan/Task-EGA
SUM:                             6             77             36           1068
```
