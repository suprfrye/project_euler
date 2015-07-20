# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

def smallest_multiple
  multiple = 2520
  while true do
    factors = (1..20).select {|num| multiple % num == 0}
    factors.length == 20 ? break : multiple += 15
  end
  multiple
end

p smallest_multiple # It takes a while, but the number is 232792560.