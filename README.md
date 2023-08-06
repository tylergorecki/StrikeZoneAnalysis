# StrikeZoneAnalysis

This is a project analyzing strike zone tendencies in the MLB. This project was worked on by Samuel Brown, James Carney, and Tyler Gorecki for our UVA Sports Analytics and Statistics Laboratory (SASL) fall 2022 project. 

Our original goal was to analyze whether there is a trend among hitters in the MLB in terms of getting better or worse strike calls. 

## File Descriptions

All pitches used in the analysis are from the 2022 MLB season. 

Called Strikes Write Up : final deliverable after semester of work on this project

Called Strikes App.Rmd : interactive R-shiny app that we created for interactive component of project; users can analyze individual hitters, trends over time, and more

Pitches.Rmd : code that created the statistics and other data manipulation/modeling (Pitches.pdf is output of this file)

all_takes2.csv : File for all taken pitches from the season with hitter name, pitch location, zone size for the hitter (top and bottom), boolean called strike value

hitters.csv : our self-created statistic for each hitter in MLB during this time with some summary statistics given our data as well

Qualified.csv : list of qualified hitters in this time frame and some of their statistics

Pitch Data folder : raw pitch data from Baseball Savant

## Project Description

To start, we first had to download data for all pitches from the 2022 season, which we then extended to the past five seasons (2018-2022). Because Baseball Savant limits the number of lines of data that can be downloaded from the site at a time, we had to learn how to read in multiple csv's from a folder without manually merging the datasets, which would've been inefficient. We figured out how to do this and it was actually rather simple, but it is a good skill to learn. 

From there, we wanted to approach modeling the borderline pitches. We plotted the zone for certain hitters, with the probability of each location corresponding to the color of that part of the zone. While we did see some small trends, there were so many pitches for each hitter that no big results came out of it. We instead thought to make a statistic that measures the amount of strikes 'gained' throughout a season and we did this using gam modeling. This statistic would tell us whether a hitter gets more or less strike calls than expected within a season. We compared this between each of the past five seasons and were surprised to see an actual trend among hitters from year to year. 

While somewhat unorthodox, if a player is getting better strike calls, it may lead them to get better pitches and thus have the opportunity perform better. When first looking at this new statistic, we thought it might be a way to predict regression to the mean (similar to low ERA but high FIP), but instead we see it as a beneficial attribute for a hitter. The last thing we did before strictly claiming that some hitters get better calls consistently was checking the strikes gained compared to a player's stature. While some people may claim that the superstars in baseball get better strikes, this was not the case, and it was actually somewhat random for which players get better strike calls. The one thing we know for sure, however, is that there is a consistent year-to-year trend for this statistic. 
