def caesar_cipher(string, index)
  encrypt = string.chars.map { |c| c.ord }
  shift = encrypt.map do |c|
    ((c + index) < 123 ? (c + index) : (c + index) - 26)
  end
  result = shift.map { |c| c.chr }.join
end

print "Enter a string to encrypt... "
text = gets.chomp
print "Now enter a number to shift the letters with... "
number = gets.chomp.to_i

p caesar_cipher(text, number)