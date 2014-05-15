# U3.W7: GPS 3.1 Create an Electronic Grocery List
# Learning Competencies:
# Implement a basic Ruby class and identify when to use instance variables
# Identify the attributes and methods of a class based on user stories
# Identify tradeoffs between simple OO design patterns
# Summary
# In this challenge, you will create an electronic grocery list command-line application. Show off the object-oriented design principles you learned last week. You should spend time discussing tradeoffs with different designs. This is your grocery list, so get creative and have fun, but also make it great code!

# Release 0: User Stories
# With your partner, talk about what you would like to do with your grocery list. Start each statement with "As a user, I want to ..." These are what we call "user stories."
# As users we would like to be able to add items to the list and a quantity for each item. We would also want to be able to
# check off items once they have been put into the cart. we would want to retunr/display the current list. be able to 
# remove items from the list. Be able to name/date the list.
#


# Release 1: Pseudocode
# create a class 'grocery_list'
# intialize the with grocery_item as argument
# create a hash 'grocery_item' 
# create a method to add grocery_item to list
# create a method to delete grocery_item from list
#

# Release 2: Write Driver Code
def assert
    raise ArgumentError, "We have a problem at this line!" unless yield
end

# Release 3: Initial Solution
# Create your initial solution.

class Grocery_List
    
    def initialize
        @grocery_list = {}
    end
    
    def add_item(item, quantity)
        @grocery_list[item] = quantity
        puts @grocery_list
    end
    
    def clear_list
        @grocery_list = {}
    end
    
    def subtract_item(subtracted_item)
        @grocery_list.delete_if { |key, value| key == subtracted_item } 
    end
    
     def check_off_list(checked_off_item)
        puts 'Checked off!'
        @grocery_list.each_key do |key|
             checked_off_item == key  ? @grocery_list[key] = "Done!" : "not here!"
        end
    end
    
    def show_list
        puts @grocery_list
    end
    
end

a = Grocery_List.new
a.add_item("apples", 2)
a.show_list
a.check_off_list("apples")
a.show_list

# Release 4: Refactor your solution
# With your partner, review the code. Is it DRY? Are the names good?

# Release 5: Reflect
# Copy your code from stypi into the our_solution.rb file. Then complete a reflection in the designated section.

# Release 6: Sync your changes to Github!
# Release 6: Submit Feedback.
