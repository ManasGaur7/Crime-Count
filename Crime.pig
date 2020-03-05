data = LOAD '/home/manas/Downloads/Datasets/crime.csv' USING PigStorage(',');
Only_Crime = FOREACH data GENERATE $2 as type;
group1 = GROUP Only_Crime BY $0;
count = FOREACH group1 GENERATE group as type, COUNT(Only_Crime.type) as COUNT;
dump count;
