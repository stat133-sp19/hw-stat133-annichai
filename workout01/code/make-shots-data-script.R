#title: make-shots-data-script.R
#description: the script will prepare data in order to create a csv data file that will contain the required variables to be used in the visualization phase
#input: five data CSV files (one for each player)
#output:  shots-data.csv

iguodala=read.csv("../data/andre-iguodala.csv", stringsAsFactors = FALSE)
green=read.csv("../data/draymond-green.csv", stringsAsFactors = FALSE)
durant=read.csv("../data/kevin-durant.csv", stringsAsFactors = FALSE)
thompson=read.csv("../data/klay-thompson.csv", stringsAsFactors = FALSE)
curry=read.csv("../data/stephen-curry.csv", stringsAsFactors = FALSE)


iguodala$name='Andre Iguodala'
green$name='Draymond Green'
durant$name='Kevin Durant'
thompson$name='Klay Thompson'
curry$name ='Stephen Curry'

iguodala$shot_made_flag[iguodala$shot_made_flag == 'n']='shot_no'
iguodala$shot_made_flag[iguodala$shot_made_flag == 'y']='shot_yes'
green$shot_made_flag[green$shot_made_flag == 'n']='shot_no'
green$shot_made_flag[green$shot_made_flag == 'y']='shot_yes'
durant$shot_made_flag[durant$shot_made_flag == 'n']='shot_no'
durant$shot_made_flag[durant$shot_made_flag == 'y']='shot_yes'
thompson$shot_made_flag[thompson$shot_made_flag == 'n']='shot_no'
thompson$shot_made_flag[thompson$shot_made_flag == 'y']='shot_yes'
curry$shot_made_flag[curry$shot_made_flag == 'n']='shot_no'
curry$shot_made_flag[curry$shot_made_flag == 'y']='shot_yes'

iguodala$minute = iguodala$period*12-iguodala$minutes_remaining
green$minute = green$period*12-green$minutes_remaining
durant$minute = durant$period*12-durant$minutes_remaining
thompson$minute = thompson$period*12-thompson$minutes_remaining
curry$minute = curry$period*12-curry$minutes_remaining

sink('andre-iguodala-summary.txt')
summary(iguodala)
sink()

sink('draymond-green-summary.txt')
summary(green)
sink()

sink('kevin-durant-summary.txt')
summary(durant)
sink()

sink('klay-thompson-summary.txt')
summary(thompson)
sink()

sink('stephen-curry-summary.txt')
summary(curry)
sink()

shots_data = rbind(iguodala, green, durant, curry, thompson)

write.csv(shots_data, "shots_data.csv")

sink('shots-data-summary.txt')
summary(shots_data)
sink()

