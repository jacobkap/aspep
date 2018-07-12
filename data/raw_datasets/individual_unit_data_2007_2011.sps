individual_unit_data_2007_2011

This setup file was created using the R package asciiSetupReader(version 1.5.0) on 2018-07-12 10:28:53.


data list
V1       1-2
V2       3-3
V3       4-6
V4       7-9
V5       10-12
V6       13-14
V7       15-17
V8       18-20
V9       21-30
V10      31-31
V11      32-32
V12      33-44
V13      45-45
V14      46-46
V15      47-56
V16      57-57
V17      58-58
V18      59-70
V19      71-71
V20      72-72
V21      73-82
V22      83-83
V23      84-84
V24      85-94
V25      95-95
V26      96-96
.

variable labels
V1       "state code"
V2       "type of government code"
V3       "county code"
V4       "unit identification number"
V5       "supplement code"
V6       "sub code"
V7       "filler"
V8       "data function item code"
V9       "full-time employees"
V10      "filler"
V11      "full-time employees data flag"
V12      "full-time payroll"
V13      "filler"
V14      "full-time payroll data flag"
V15      "part-time employees"
V16      "filler"
V17      "part-time employees data flag"
V18      "part-time payroll"
V19      "filler"
V20      "part-time payroll data flag"
V21      "part time hours"
V22      "filler"
V23      "part-time hours data flag"
V24      "full-time equivalent employees"
V25      "filler"
V26      "g-30 designation"
.

value labels
V8       
000      "total"
001      "airports"
002      "space research & technology (federal)"
005      "correction"
006      "national defense and international relations (federal)"
012      "elementary and secondary - instruction"
112      "elementary and secondary - other total"
014      "postal service (federal)"
016      "higher education - other"
018      "higher education - instructional"
021      "other education (state)"
022      "social insurance administration (state)"
023      "financial administration"
024      "firefighters"
124      "fire - other"
025      "judicial & legal"
029      "other government administration"
032      "health"
040      "hospitals"
044      "streets & highways"
050      "housing & community development (local)"
052      "local libraries"
059      "natural resources"
061      "parks & recreation"
062      "police protection - officers"
162      "police - other"
079      "welfare"
080      "sewerage"
081      "solid waste management"
087      "water transport & terminals"
089      "other & unallocable"
090      "liquor stores (state)"
091      "water supply"
092      "electric power"
093      "gas supply"
094      "transit"
V1       
00       "united states"
01       "alabama"
02       "alaska"
03       "arizona"
04       "arkansas"
05       "california"
06       "colorado"
07       "connecticut"
08       "delaware"
09       "district of columbia"
10       "florida"
11       "georgia"
12       "hawaii"
13       "idaho"
14       "illinois"
15       "indiana"
16       "iowa"
17       "kansas"
18       "kentucky"
19       "louisiana"
20       "maine"
21       "maryland"
22       "massachusetts"
23       "michigan"
24       "minnesota"
25       "mississippi"
26       "missouri"
27       "montana"
28       "nebraska"
29       "nevada"
30       "new hampshire"
31       "new jersey"
32       "new mexico"
33       "new york"
34       "north carolina"
35       "north dakota"
36       "ohio"
37       "oklahoma"
38       "oregon"
39       "pennsylvania"
40       "rhode island"
41       "south carolina"
42       "south dakota"
43       "tennessee"
44       "texas"
45       "utah"
46       "vermont"
47       "virginia"
48       "washington"
49       "west virginia"
50       "wisconsin"
51       "wyoming"
V2       
0        "state"
1        "county"
2        "municipal"
3        "township"
4        "special district"
5        "school district"
6        "u.s. government"
V11      
"C"      "Without contacting the respondent, the analyst corrects data provided in an inappropriate item code or individual unit, corrects data so detail adds to total, corrects other reported minor reporting errors that prevents the use of the original data provided by the respondent."
"R"      "1) Data item is reported directly by the respondent. 2) Respondent does not complete the survey form, but provides additional information which is compiled and used to complete the form, i.e., annual report, Website, etc."
"T"      "Respondent reports totals and these data are prorated based on the prior year distribution."
"U"      "Analyst obtains correct data from the respondent via telephone, e-mail, or fax."
"V"      "1) Analyst verifies the data with the respondent via telephone, e-mail, or fax. 2) Analyst corrects improperly keyed data and replaces with the reported values from the questionnaire."
"A"      "Missing or inappropriate data fixed by computer calculations are based on prior year factors or prior year state averages."
"B"      "Analyst obtains information from a report or other administrative source without prior respondent contact and there exists documentation verifying that these data sources are comparable to reported data."
"D"      "Analyst obtains information from a Website without prior respondent contact and there exists documentation verifying that these data sources are comparable to reported data."
"G"      "The prior year data were adjusted by a growth rate that was determined by the growth of responding units that were similar to the nonrespondent in size, geography and type of government."
"I"      "For Regional Occupational Programs (ROP) units, zeroes were imputed since the prior year data consisted of all zeroes."
"J"      "The unit contained partially reported data sufficient to determine unit totals at the total employee/total pay level. Data were imputed using pro-rated values based on prior year or cell median ratios. Flag J differs from Flag T in that Flag T implies that the unit total for that variable was reported, e.g., if full-time pay is reported, then full-time pay for each item code of that unit will receive a flag of T. While Flag J implies that the unit total for that variable was not reported, e.g., if total employees are reported, but neither full-time nor part-time employees are reported, then full-time employees will be pro--rated and full-time employees for each item code of that unit will receive a flag of J."
"P"      "Data were from a donor that was randomly selected from units similar to the nonrespondent. A per capita adjustment based on population enrollment was made."
"Q"      "A growth rate was applied to the prior year that carried a flag of P."
"S"      "This flag is used for imputed values of part-time hours. Part-time hours are imputed as the value of the item code's part-time employees multiplied by the unit's average part-time hours per employee for the given item code in the prior year. If the given item code in the prior year is not available, then the median average part-time hours per employee for the given item code is used instead. The median is calculated for the current year data in the unit's imputation cell."
"Z"      "Data are the summation of multiple individual state agencies (i.e., state level data) or the summation of multiple data function codes (i.e., total data function code of '000'')."
"X"      "The analyst creates a value missing entry, an erroneous reported entry, or an imputed value without contacting the respondent."
V14      
"C"      "Without contacting the respondent, the analyst corrects data provided in an inappropriate item code or individual unit, corrects data so detail adds to total, corrects other reported minor reporting errors that prevents the use of the original data provided by the respondent."
"R"      "1) Data item is reported directly by the respondent. 2) Respondent does not complete the survey form, but provides additional information which is compiled and used to complete the form, i.e., annual report, Website, etc."
"T"      "Respondent reports totals and these data are prorated based on the prior year distribution."
"U"      "Analyst obtains correct data from the respondent via telephone, e-mail, or fax."
"V"      "1) Analyst verifies the data with the respondent via telephone, e-mail, or fax. 2) Analyst corrects improperly keyed data and replaces with the reported values from the questionnaire."
"A"      "Missing or inappropriate data fixed by computer calculations are based on prior year factors or prior year state averages."
"B"      "Analyst obtains information from a report or other administrative source without prior respondent contact and there exists documentation verifying that these data sources are comparable to reported data."
"D"      "Analyst obtains information from a Website without prior respondent contact and there exists documentation verifying that these data sources are comparable to reported data."
"G"      "The prior year data were adjusted by a growth rate that was determined by the growth of responding units that were similar to the nonrespondent in size, geography and type of government."
"I"      "For Regional Occupational Programs (ROP) units, zeroes were imputed since the prior year data consisted of all zeroes."
"J"      "The unit contained partially reported data sufficient to determine unit totals at the total employee/total pay level. Data were imputed using pro-rated values based on prior year or cell median ratios. Flag J differs from Flag T in that Flag T implies that the unit total for that variable was reported, e.g., if full-time pay is reported, then full-time pay for each item code of that unit will receive a flag of T. While Flag J implies that the unit total for that variable was not reported, e.g., if total employees are reported, but neither full-time nor part-time employees are reported, then full-time employees will be pro--rated and full-time employees for each item code of that unit will receive a flag of J."
"P"      "Data were from a donor that was randomly selected from units similar to the nonrespondent. A per capita adjustment based on population enrollment was made."
"Q"      "A growth rate was applied to the prior year that carried a flag of P."
"S"      "This flag is used for imputed values of part-time hours. Part-time hours are imputed as the value of the item code's part-time employees multiplied by the unit's average part-time hours per employee for the given item code in the prior year. If the given item code in the prior year is not available, then the median average part-time hours per employee for the given item code is used instead. The median is calculated for the current year data in the unit's imputation cell."
"Z"      "Data are the summation of multiple individual state agencies (i.e., state level data) or the summation of multiple data function codes (i.e., total data function code of '000'')."
"X"      "The analyst creates a value missing entry, an erroneous reported entry, or an imputed value without contacting the respondent."
V17      
"C"      "Without contacting the respondent, the analyst corrects data provided in an inappropriate item code or individual unit, corrects data so detail adds to total, corrects other reported minor reporting errors that prevents the use of the original data provided by the respondent."
"R"      "1) Data item is reported directly by the respondent. 2) Respondent does not complete the survey form, but provides additional information which is compiled and used to complete the form, i.e., annual report, Website, etc."
"T"      "Respondent reports totals and these data are prorated based on the prior year distribution."
"U"      "Analyst obtains correct data from the respondent via telephone, e-mail, or fax."
"V"      "1) Analyst verifies the data with the respondent via telephone, e-mail, or fax. 2) Analyst corrects improperly keyed data and replaces with the reported values from the questionnaire."
"A"      "Missing or inappropriate data fixed by computer calculations are based on prior year factors or prior year state averages."
"B"      "Analyst obtains information from a report or other administrative source without prior respondent contact and there exists documentation verifying that these data sources are comparable to reported data."
"D"      "Analyst obtains information from a Website without prior respondent contact and there exists documentation verifying that these data sources are comparable to reported data."
"G"      "The prior year data were adjusted by a growth rate that was determined by the growth of responding units that were similar to the nonrespondent in size, geography and type of government."
"I"      "For Regional Occupational Programs (ROP) units, zeroes were imputed since the prior year data consisted of all zeroes."
"J"      "The unit contained partially reported data sufficient to determine unit totals at the total employee/total pay level. Data were imputed using pro-rated values based on prior year or cell median ratios. Flag J differs from Flag T in that Flag T implies that the unit total for that variable was reported, e.g., if full-time pay is reported, then full-time pay for each item code of that unit will receive a flag of T. While Flag J implies that the unit total for that variable was not reported, e.g., if total employees are reported, but neither full-time nor part-time employees are reported, then full-time employees will be pro--rated and full-time employees for each item code of that unit will receive a flag of J."
"P"      "Data were from a donor that was randomly selected from units similar to the nonrespondent. A per capita adjustment based on population enrollment was made."
"Q"      "A growth rate was applied to the prior year that carried a flag of P."
"S"      "This flag is used for imputed values of part-time hours. Part-time hours are imputed as the value of the item code's part-time employees multiplied by the unit's average part-time hours per employee for the given item code in the prior year. If the given item code in the prior year is not available, then the median average part-time hours per employee for the given item code is used instead. The median is calculated for the current year data in the unit's imputation cell."
"Z"      "Data are the summation of multiple individual state agencies (i.e., state level data) or the summation of multiple data function codes (i.e., total data function code of '000'')."
"X"      "The analyst creates a value missing entry, an erroneous reported entry, or an imputed value without contacting the respondent."
V20      
"C"      "Without contacting the respondent, the analyst corrects data provided in an inappropriate item code or individual unit, corrects data so detail adds to total, corrects other reported minor reporting errors that prevents the use of the original data provided by the respondent."
"R"      "1) Data item is reported directly by the respondent. 2) Respondent does not complete the survey form, but provides additional information which is compiled and used to complete the form, i.e., annual report, Website, etc."
"T"      "Respondent reports totals and these data are prorated based on the prior year distribution."
"U"      "Analyst obtains correct data from the respondent via telephone, e-mail, or fax."
"V"      "1) Analyst verifies the data with the respondent via telephone, e-mail, or fax. 2) Analyst corrects improperly keyed data and replaces with the reported values from the questionnaire."
"A"      "Missing or inappropriate data fixed by computer calculations are based on prior year factors or prior year state averages."
"B"      "Analyst obtains information from a report or other administrative source without prior respondent contact and there exists documentation verifying that these data sources are comparable to reported data."
"D"      "Analyst obtains information from a Website without prior respondent contact and there exists documentation verifying that these data sources are comparable to reported data."
"G"      "The prior year data were adjusted by a growth rate that was determined by the growth of responding units that were similar to the nonrespondent in size, geography and type of government."
"I"      "For Regional Occupational Programs (ROP) units, zeroes were imputed since the prior year data consisted of all zeroes."
"J"      "The unit contained partially reported data sufficient to determine unit totals at the total employee/total pay level. Data were imputed using pro-rated values based on prior year or cell median ratios. Flag J differs from Flag T in that Flag T implies that the unit total for that variable was reported, e.g., if full-time pay is reported, then full-time pay for each item code of that unit will receive a flag of T. While Flag J implies that the unit total for that variable was not reported, e.g., if total employees are reported, but neither full-time nor part-time employees are reported, then full-time employees will be pro--rated and full-time employees for each item code of that unit will receive a flag of J."
"P"      "Data were from a donor that was randomly selected from units similar to the nonrespondent. A per capita adjustment based on population enrollment was made."
"Q"      "A growth rate was applied to the prior year that carried a flag of P."
"S"      "This flag is used for imputed values of part-time hours. Part-time hours are imputed as the value of the item code's part-time employees multiplied by the unit's average part-time hours per employee for the given item code in the prior year. If the given item code in the prior year is not available, then the median average part-time hours per employee for the given item code is used instead. The median is calculated for the current year data in the unit's imputation cell."
"Z"      "Data are the summation of multiple individual state agencies (i.e., state level data) or the summation of multiple data function codes (i.e., total data function code of '000'')."
"X"      "The analyst creates a value missing entry, an erroneous reported entry, or an imputed value without contacting the respondent."
V23      
"C"      "Without contacting the respondent, the analyst corrects data provided in an inappropriate item code or individual unit, corrects data so detail adds to total, corrects other reported minor reporting errors that prevents the use of the original data provided by the respondent."
"R"      "1) Data item is reported directly by the respondent. 2) Respondent does not complete the survey form, but provides additional information which is compiled and used to complete the form, i.e., annual report, Website, etc."
"T"      "Respondent reports totals and these data are prorated based on the prior year distribution."
"U"      "Analyst obtains correct data from the respondent via telephone, e-mail, or fax."
"V"      "1) Analyst verifies the data with the respondent via telephone, e-mail, or fax. 2) Analyst corrects improperly keyed data and replaces with the reported values from the questionnaire."
"A"      "Missing or inappropriate data fixed by computer calculations are based on prior year factors or prior year state averages."
"B"      "Analyst obtains information from a report or other administrative source without prior respondent contact and there exists documentation verifying that these data sources are comparable to reported data."
"D"      "Analyst obtains information from a Website without prior respondent contact and there exists documentation verifying that these data sources are comparable to reported data."
"G"      "The prior year data were adjusted by a growth rate that was determined by the growth of responding units that were similar to the nonrespondent in size, geography and type of government."
"I"      "For Regional Occupational Programs (ROP) units, zeroes were imputed since the prior year data consisted of all zeroes."
"J"      "The unit contained partially reported data sufficient to determine unit totals at the total employee/total pay level. Data were imputed using pro-rated values based on prior year or cell median ratios. Flag J differs from Flag T in that Flag T implies that the unit total for that variable was reported, e.g., if full-time pay is reported, then full-time pay for each item code of that unit will receive a flag of T. While Flag J implies that the unit total for that variable was not reported, e.g., if total employees are reported, but neither full-time nor part-time employees are reported, then full-time employees will be pro--rated and full-time employees for each item code of that unit will receive a flag of J."
"P"      "Data were from a donor that was randomly selected from units similar to the nonrespondent. A per capita adjustment based on population enrollment was made."
"Q"      "A growth rate was applied to the prior year that carried a flag of P."
"S"      "This flag is used for imputed values of part-time hours. Part-time hours are imputed as the value of the item code's part-time employees multiplied by the unit's average part-time hours per employee for the given item code in the prior year. If the given item code in the prior year is not available, then the median average part-time hours per employee for the given item code is used instead. The median is calculated for the current year data in the unit's imputation cell."
"Z"      "Data are the summation of multiple individual state agencies (i.e., state level data) or the summation of multiple data function codes (i.e., total data function code of '000'')."
"X"      "The analyst creates a value missing entry, an erroneous reported entry, or an imputed value without contacting the respondent."
.



execute
