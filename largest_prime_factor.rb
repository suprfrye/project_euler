# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

def largest_prime_factor(num)
  raise ArgumentError.new("Number must be greater than 1") if num < 2
  prime_factors = []
  divisor = 0
  i = 2
  until divisor == 1 do
    if num % i == 0
      num /= i
      divisor = num
      prime_factors  << i
    else
      i += 1
    end
  end
  prime_factors.max
end

p largest_prime_factor(600851475143)
