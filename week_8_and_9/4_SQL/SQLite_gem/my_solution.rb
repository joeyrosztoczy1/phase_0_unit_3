# U3.W7: BONUS Using the SQLite Gem

# I worked on this challenge [by myself, with:]

require 'sqlite3'


$db = SQLite3::Database.open "congress_poll_results.db"


def print_arizona_reps
  puts "AZ REPRESENTATIVES"
  az_reps = $db.execute("SELECT name FROM congress_members WHERE location = 'AZ'")
  az_reps.each { |rep| puts rep }
end

def print_longest_serving_reps(minimum_years) 
  puts "LONGEST SERVING REPRESENTATIVES"
  longest_reps = $db.execute("SELECT name, years_in_congress FROM congress_members WHERE years_in_congress > #{minimum_years}")  
  puts longest_reps
end

def print_lowest_grade_level_speakers(lowest_grade)
  puts "LOWEST GRADE LEVEL SPEAKERS (less than < 8th grade)"
  lowest_speakers = $db.execute("SELECT name FROM congress_members WHERE grade_current < #{lowest_grade}")
  puts lowest_speakers
end

def print_separator
  puts 
  puts "------------------------------------------------------------------------------"
  puts 
end


print_arizona_reps

print_separator

print_longest_serving_reps(35)

print_separator
print_lowest_grade_level_speakers(8) 

def print_NJ_NY_Maine_Florida_Alaska
  puts "STATE REPS FROM CUSTOM STATES!"
  nJ_NY_Maine_Florida_Alaska = $db.execute("SELECT name FROM congress_members WHERE location IN('NJ', 'NY', 'ME', 'FL', 'AK')")
  puts nJ_NY_Maine_Florida_Alaska
end

print_separator

print_NJ_NY_Maine_Florida_Alaska


##### BONUS #######
# TODO (bonus) - Stop SQL injection attacks!  Statmaster learned that interpolation of variables in SQL statements leaves some security vulnerabilities.  Use the google to figure out how to protect from this type of attack.
# using session states requires for someone to be logged in which helps protect against this attack, and then using character escapes is the next recommended step.


# TODO (bonus)
# Create a listing of all of the Politicians and the number of votes they recieved
# output should look like:  Sen. John McCain - 7,323 votes (This is an example, yours will not return this value, it should just 
#    have a similar format)
def print_reps_and_votes
  puts "Politicians and their VOTES!"
  names_votes = $db.execute("SELECT name, COUNT(voter_id) FROM congress_members JOIN votes ON congress_members.id = votes.politician_id")
  puts names_votes
end

print_separator
print_reps_and_votes
# Create a listing of each Politician and the voter that voted for them
# output should include the senators name, then a long list of voters separated by a comma
#
# * you'll need to do some join statements to complete these last queries!


# REFLECTION- Include your reflection as a comment below.
# How does the sqlite3 gem work?  What is the variable `$db` holding?  
# Try to use your knowledge of ruby and OO to decipher this as well as h
# ow the `#execute` method works.  Take a stab at explaining the line 
# `$db.execute("SELECT name FROM congress_members WHERE years_in_congress 
#   > #{minimum_years}")`.  Try to explain this as clearly as possible for 
# your fellow students.  
# If you're having trouble, find someone to pair on this explanation with you.
# The SQLite3 gem allows ruby to interface with the database engine. It is akin to using libraries or other code references in other languages.
# The variable $db holds a single encapsulated connection to whatever database the URI is holding (file passed as an argument)
# The execute is part of the Database class in ruby that runs a SQL query on the db. That is selecting names from the database for people who have at least
# a certain number of years of service!

