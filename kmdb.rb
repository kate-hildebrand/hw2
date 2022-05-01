# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy.
# - Movie data includes the movie title, year released, MPAA rating,
#   and studio.
# - There are many studios, and each studio produces many movies, but
#   a movie belongs to a single studio.
# - An actor can be in multiple movies.
# - Everything you need to do in this assignment is marked with TODO!

# Rubric
# 
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:
# - Generate the models and migration files to match the domain model from hw1.
#   Table and columns should match the domain model. Execute the migration
#   files to create the tables in the database. (5 points)
# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids.
#   Delete any existing data beforehand so that each run of this script does not
#   create duplicate data. (5 points)
# - Query the data and loop through the results to display output similar to the
#   sample "report" below. (10 points)

# Submission
# 
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the 
#   Homework 2 assignment in Canvas

# Successful sample output is as shown:

# Movies
# ======

# Batman Begins          2005           PG-13  Warner Bros.
# The Dark Knight        2008           PG-13  Warner Bros.
# The Dark Knight Rises  2012           PG-13  Warner Bros.

# Top Cast
# ========

# Batman Begins          Christian Bale        Bruce Wayne
# Batman Begins          Michael Caine         Alfred
# Batman Begins          Liam Neeson           Ra's Al Ghul
# Batman Begins          Katie Holmes          Rachel Dawes
# Batman Begins          Gary Oldman           Commissioner Gordon
# The Dark Knight        Christian Bale        Bruce Wayne
# The Dark Knight        Heath Ledger          Joker
# The Dark Knight        Aaron Eckhart         Harvey Dent
# The Dark Knight        Michael Caine         Alfred
# The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
# The Dark Knight Rises  Christian Bale        Bruce Wayne
# The Dark Knight Rises  Gary Oldman           Commissioner Gordon
# The Dark Knight Rises  Tom Hardy             Bane
# The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
# The Dark Knight Rises  Anne Hathaway         Selina Kyle

# Delete existing data, so you'll start fresh each time this script is run.
Movie.destroy_all
Studio.destroy_all
Actor.destroy_all
Role.destroy_all
# TODO!

# Generate models and tables, according to the domain model.
# TODO!

# Insert data into the database that reflects the sample data shown above.
# Do not use hard-coded foreign key IDs.
# TODO!
studio = Studio.new
studio["name"] = "Warner Bros."
studio.save
Warner_Bros = Studio.find_by({"name" => "Warner Bros."})

movie = Movie.new
movie["title"] = "Batman Begins"
movie["year_released"] = 2005
movie["rated"] = "PG-13"
movie["studio_id"] = Warner_Bros["id"]
movie.save
Batman_Begins = Movie.find_by({"title" => "Batman Begins"})

movie = Movie.new
movie["title"] = "The Dark Knight"
movie["year_released"] = 2008
movie["rated"] = "PG-13"
movie["studio_id"] = Warner_Bros["id"]
movie.save
The_Dark_Knight = Movie.find_by({"title" => "The Dark Knight"})

movie = Movie.new
movie["title"] = "The Dark Knight Rises"
movie["year_released"] = 2012
movie["rated"] = "PG-13"
movie["studio_id"] = Warner_Bros["id"]
movie.save
The_Dark_Knight_Rises = Movie.find_by({"title" => "The Dark Knight Rises"})

actor = Actor.new		
actor["name"] 	= "Christian Bale"
actor.save
Christian_Bale	= Actor.find_by({"name" => "Christian Bale"})

actor = Actor.new		
actor["name"] 	= "Michael Caine"
actor.save		
Michael_Caine	= Actor.find_by({"name" => "Michael Caine"})
				
actor = Actor.new		
actor["name"] 	= "Liam Neeson"
actor.save		
Liam_Neeson	= Actor.find_by({"name" => "Liam Neeson"})
				
actor = Actor.new		
actor["name"] 	= "Katie Holmes"
actor.save		
Katie_Holmes	= Actor.find_by({"name" => "Katie Holmes"})
		
actor = Actor.new		
actor["name"] 	= "Gary Oldman"
actor.save		
Gary_Oldman	= Actor.find_by({"name" => "Gary Oldman"})
		
actor = Actor.new		
actor["name"] 	= "Heath Ledger"
actor.save		
Heath_Ledger	= Actor.find_by({"name" => "Heath Ledger"})
		
actor = Actor.new		
actor["name"] 	= "Aaron Eckhart"
actor.save		
Aaron_Eckhart	= Actor.find_by({"name" => "Aaron Eckhart"})
		
actor = Actor.new		
actor["name"] 	= "Maggie Gyllenhaal"
actor.save		
Maggie_Gyllenhaal	= Actor.find_by({"name" => "Maggie Gyllenhaal"})
		
actor = Actor.new		
actor["name"] 	= "Tom Hardy"
actor.save		
Tom_Hardy	= Actor.find_by({"name" => "Tom Hardy"})
		
actor = Actor.new		
actor["name"] 	= "Joseph Gordon-Levitt"
actor.save		
Joseph_Gordon_Levitt	= Actor.find_by({"name" => "Joseph Gordon-Levitt"})
		
actor = Actor.new		
actor["name"] 	= "Anne Hathaway"
actor.save		
Anne_Hathaway	= Actor.find_by({"name" => "Anne Hathaway"})


# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

# Query the movies data and loop through the results to display the movies output.
# TODO!

# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the cast data and loop through the results to display the cast output for each movie.
# TODO!
