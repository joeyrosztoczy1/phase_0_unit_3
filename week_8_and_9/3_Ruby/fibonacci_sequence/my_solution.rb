# U3.W8-9: 


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Inputs- an integer
# Output- If the integer falls into a Fibonacci sequence
# Step 1- start with a seed value, if array[0] then...
# Step 2- check and make sure each following value is the sum of the previous two values


# 3. Initial Solution

def is_fibonacci?(num)
	seeds = [0,1]
	next_num = 0
	while seeds.max <= num
		seeds.length.times do |i|
			next_num = (seeds[i]+seeds[i-1])
		end
		seeds = seeds.push(next_num)
	end
	return seeds.include?(num)
end



# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE
def random_fibonacci
   [0,1,1,2,3,5,8,13,21,34,55,89,144,233,377,610,987,1597,2584,4181,6765,10946].sample
end

# describe "is_fibonacci?" do
#    it "returns true when a integer is one number of the Fibonacci sequence" do
#       is_fibonacci?(random_fibonacci).should be_true
#    end
#    it "returns true with a large Fibonacci number" do
#       is_fibonacci?(8670007398507948658051921).should be_true
#    end
#    it "returns false when it's not in the Fibonacci seqence" do
#       is_fibonacci?(random_fibonacci+100).should be_false
#    end
#    it "returns false on large non-Fibonacci numbers" do
#       is_fibonacci?(927372692193078999171).should be_false
#    end
# end

def assert(message) 
	raise ArgumentError, message unless yield
end

assert("Sorry this doesn't correctly identify fibonacci sequences!") { is_fibonacci?(random_fibonacci) == true }
assert("Sorry this doesn't work for large fib sequences!") { is_fibonacci?(8670007398507948658051921) == true }
assert("This should have returned false!") { is_fibonacci?(random_fibonacci+100) == false }
assert("This should return false as well!") { is_fibonacci?(927372692193078999171) == false}




# 5. Reflection 


# I liked this challenge because it gave the opportunity to solve it in a very difficult and mathematically precise way, or to
# look for a simpler option. Wikipedia suggested that fibonacci numbers are a function of square root mathematics, and try to root
# large numbers in ruby means drawing in some math libraries (at least it seemed that way). Instead of using this function though,
# you can iterate through the sequence by generating it yourself since we are using a program and can store the information (the math formula
# works much better when trying to do it by hand as you don't have to create the sequence itself).
#
#
