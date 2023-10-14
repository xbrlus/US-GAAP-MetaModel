python3.9 ~/arelle/Arelle-master/arellecmdline.py --plugins xule --xule-compile /Users/campbellpryde/Documents/GitHub/US-GAAP-MetaModel/queries/source/2021/ --xule-rule-set /Users/campbellpryde/Documents/GitHub/US-GAAP-MetaModel/queries/compile/meta-2021-ruleset.zip --xule-crash

python3.9 ~/arelle/Arelle-master/arellecmdline.py --plugins xule --xule-compile /Users/campbellpryde/Documents/GitHub/US-GAAP-MetaModel/queries/source/2022/ --xule-rule-set /Users/campbellpryde/Documents/GitHub/US-GAAP-MetaModel/queries/compile/meta-2022-ruleset.zip --xule-crash

python3.9 ~/arelle/Arelle-master/arellecmdline.py --plugins 'xule|transforms/SEC|validate/EFM|inlineXbrlDocumentSet' -f http://www.sec.gov/Archives/edgar/data/1322439/000162828021004645/egle-20201231.htm -v --xule-time .005 --xule-debug --noCertificateCheck   --logFile  /Users/campbellpryde/Documents/GitHub/US-GAAP-MetaModel/queries/output/contra.xml --xule-rule-set /Users/campbellpryde/Documents/GitHub/US-GAAP-MetaModel/queries/compile/meta-2021-ruleset.zip    --xule-run-only contra

python3.9 ~/arelle/Arelle-master/arellecmdline.py --plugins 'xule|transforms/SEC|validate/EFM|inlineXbrlDocumentSet' -f http://www.sec.gov/Archives/edgar/data/1322439/000162828021004645/egle-20201231.htm -v --xule-time .005 --xule-debug --noCertificateCheck   --logFile  /Users/campbellpryde/Documents/GitHub/US-GAAP-MetaModel/queries/output/contra.xml --xule-rule-set /Users/campbellpryde/Documents/GitHub/US-GAAP-MetaModel/queries/compile/meta-2021-ruleset.zip    --xule-run-only cashInflow

python3.9 ~/arelle/Arelle-master/arellecmdline.py --plugins 'xule|transforms/SEC|validate/EFM|inlineXbrlDocumentSet' -f http://www.sec.gov/Archives/edgar/data/1322439/000162828021004645/egle-20201231.htm -v --xule-time .005 --xule-debug --noCertificateCheck   --logFile  /Users/campbellpryde/Documents/GitHub/US-GAAP-MetaModel/queries/output/contra.xml --xule-rule-set /Users/campbellpryde/Documents/GitHub/US-GAAP-MetaModel/queries/compile/meta-2021-ruleset.zip    --xule-run-only restricted

#2022
python3.9 ~/arelle/Arelle-master/arellecmdline.py --plugins 'xule|transforms/SEC|validate/EFM|inlineXbrlDocumentSet' -f https://www.sec.gov/Archives/edgar/data/1363829/000136382922000169/0001363829-22-000169-xbrl.zip -v --xule-time .005 --xule-debug --noCertificateCheck   --logFile  /Users/campbellpryde/Documents/GitHub/US-GAAP-MetaModel/queries/output/contra2022.xml --xule-rule-set /Users/campbellpryde/Documents/GitHub/US-GAAP-MetaModel/queries/compile/meta-2022-ruleset.zip    --xule-run-only contra

python3.9 ~/arelle/Arelle-master/arellecmdline.py --plugins 'xule|transforms/SEC|validate/EFM|inlineXbrlDocumentSet' -f https://www.sec.gov/Archives/edgar/data/1363829/000136382922000169/0001363829-22-000169-xbrl.zip -v --xule-time .005 --xule-debug --noCertificateCheck   --logFile  /Users/campbellpryde/Documents/GitHub/US-GAAP-MetaModel/queries/output/restricted2022.xml --xule-rule-set /Users/campbellpryde/Documents/GitHub/US-GAAP-MetaModel/queries/compile/meta-2022-ruleset.zip   --xule-run-only restricted

python3 ~/arelle/Arelle-master/arellecmdline.py --plugin xule/savexuleqnames --xule-qnames-dir '/Users/campbellpryde/Documents/GitHub/US-GAAP-MetaModel/queries/taxonomy/2022' --xule-qnames-format json -f 'https://xbrl.fasb.org/meta/dev/us-gaap-metaModel-entire-2023.xsd'


