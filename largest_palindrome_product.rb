# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

def largest_palindrome_product
  palindromes = []
  for i in (900..999) do
    for j in (900..999) do
      palindromes << i*j if ((i*j).to_s == (i*j).to_s.reverse)
    end
  end
  palindromes.max
end

p largest_palindrome_product