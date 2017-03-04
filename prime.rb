# Add  code here!
def eratosthenes(int)
  prime_numbers = (0..int).to_a
  prime_numbers[0] = nil
  prime_numbers[1] = nil
  counter = 0
  prime_numbers.each do |p|
    next unless p # skips nil/known prime numbers
    break if p*p > int #if the square is outside the range
    counter += 1
    (p * p).step(int, p) { |m| prime_numbers[m] = nil}
  end
  puts "Solved for #{int} in #{counter} steps"
  prime_numbers.compact
end

def prime?(n)
  eratosthenes(n).include?(n)
end
