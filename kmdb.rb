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


# Delete existing data, so you'll start fresh each time this script is run.
# TODO!
Movie.destroy_all
Studio.destroy_all
Actor.destroy_all
Role.destroy_all

# Generate models and tables, according to the domain model.
# TODO!
# done using rails generate model ____ in the terminal, then going into the db/migrate folder to add the column headers.
# please check those 4 migrations for this step 


# Insert data into the database that reflects the sample data shown above.
# Do not use hard-coded foreign key IDs.
# TODO!
#studio
studio = Studio.new
studio["name"] = "Warner Bros."
studio.save
Warner_Bros = Studio.find_by({"name" => "Warner Bros."})

#movies
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

#actors
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

#roles 
role = Role.new
role["character_name"] = "Bruce Wayne"
role["movie_id"] = Batman_Begins["id"]
role["actor_id"] = Christian_Bale["id"]
role.save

role = Role.new
role["character_name"] = "Alfred"
role["movie_id"] = Batman_Begins["id"]
role["actor_id"] = Michael_Caine["id"]
role.save

role = Role.new
role["character_name"] = "Ra's Al Ghul"
role["movie_id"] = Batman_Begins["id"]
role["actor_id"] = Liam_Neeson["id"]
role.save

role = Role.new
role["character_name"] = "Rachel Dawes"
role["movie_id"] = Batman_Begins["id"]
role["actor_id"] = Katie_Holmes["id"]
role.save

role = Role.new
role["character_name"] = "Commissioner Gordon"
role["movie_id"] = Batman_Begins["id"]
role["actor_id"] = Gary_Oldman["id"]
role.save

role = Role.new
role["character_name"] = "Bruce Wayne"
role["movie_id"] = The_Dark_Knight["id"]
role["actor_id"] = Christian_Bale["id"]
role.save

role = Role.new
role["character_name"] = "Joker"
role["movie_id"] = The_Dark_Knight["id"]
role["actor_id"] = Heath_Ledger["id"]
role.save

role = Role.new
role["character_name"] = "Harvey Dent"
role["movie_id"] = The_Dark_Knight["id"]
role["actor_id"] = Aaron_Eckhart["id"]
role.save

role = Role.new
role["character_name"] = "Alred"
role["movie_id"] = The_Dark_Knight["id"]
role["actor_id"] = Michael_Caine["id"]
role.save

role = Role.new
role["character_name"] = "Rachel Dawes"
role["movie_id"] = The_Dark_Knight["id"]
role["actor_id"] = Maggie_Gyllenhaal["id"]
role.save

role = Role.new
role["character_name"] = "Bruce Wayne"
role["movie_id"] = The_Dark_Knight_Rises["id"]
role["actor_id"] = Christian_Bale["id"]
role.save

role = Role.new
role["character_name"] = "Commissioner Gordon"
role["movie_id"] = The_Dark_Knight_Rises["id"]
role["actor_id"] = Gary_Oldman["id"]
role.save

role = Role.new
role["character_name"] = "Bane"
role["movie_id"] = The_Dark_Knight_Rises["id"]
role["actor_id"] = Tom_Hardy["id"]
role.save

role = Role.new
role["character_name"] = "John Blake"
role["movie_id"] = The_Dark_Knight_Rises["id"]
role["actor_id"] = Joseph_Gordon_Levitt["id"]
role.save

role = Role.new
role["character_name"] = "Selina Kyle"
role["movie_id"] = The_Dark_Knight_Rises["id"]
role["actor_id"] = Anne_Hathaway["id"]
role.save


# Prints a header for the movies output
puts "Movies"
puts "======"

# Query the movies data and loop through the results to display the movies output.
# TODO!
# Note: I do not know how to format this into a table 

all_movies = Movie.all
for movie in all_movies
    puts "#{movie["title"]} | #{movie["year_released"]} | #{movie["rated"]} #{studio["name"]}"
end 


# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the cast data and loop through the results to display the cast output for each movie.
# TODO!

all_roles = Role.all
for role in all_roles
    # query to find the title for this movie role
    movie_title = Movie.find_by({"id" => role["movie_id"]})
    # query to find the actor name for this role
    actor_name = Actor.find_by({"id" => role["actor_id"]})
    puts "#{movie_title["title"]} | #{actor_name["name"]} | #{role["character_name"]}"
end