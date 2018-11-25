require(data.table)
setwd('/home/baydogan/Courses/IE582/ProjectRepo/fall18-instructor/')

testStart=as.Date('2018-11-16')
trainStart=as.Date('2012-07-15')
rem_miss_threshold=0.01 #parameter for removing bookmaker odds with missing ration greater than this fraction

source('data_preprocessing.r')
source('feature_extraction.r')


matches_data_path='/home/baydogan/Courses/IE582/Fall18/Project/Data/df9b1196-e3cf-4cc7-9159-f236fe738215_matches.rds'
odd_details_data_path='/home/baydogan/Courses/IE582/Fall18/Project/Data/df9b1196-e3cf-4cc7-9159-f236fe738215_odd_details.rds'

# read data
matches_raw=readRDS(matches_data_path)
odd_details_raw=readRDS(odd_details_data_path)

# preprocess matches
matches=matches_data_preprocessing(matches_raw)

# preprocess odd data
odd_details=details_data_preprocessing(odd_details_raw,matches)

# extract open and close odd type features from multiple bookmakers
features=extract_features.openclose(matches,odd_details,pMissThreshold=rem_miss_threshold,trainStart,testStart)

# divide data based on the provided dates 
train_features=features[Match_Date>=trainStart & Match_Date<testStart] 
test_features=features[Match_Date>=testStart] 


