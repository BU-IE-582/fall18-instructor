
require(data.table)
setwd('/home/baydogan/Courses/IE582/ProjectRepo/fall18-instructor/')
source('data_preprocessing.r')

matches_data_path='/home/baydogan/Courses/IE582/Fall18/Project/Data/df9b1196-e3cf-4cc7-9159-f236fe738215_matches.rds'
odd_details_data_path='/home/baydogan/Courses/IE582/Fall18/Project/Data/df9b1196-e3cf-4cc7-9159-f236fe738215_odd_details.rds'

# read data
matches_raw=readRDS(matches_data_path)
odd_details_raw=readRDS(odd_details_data_path)

# preprocess matches

matches=matches_data_preprocessing(matches_raw)
