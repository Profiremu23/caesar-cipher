def caesar_cipher(string, index)
  decoder = string.chars.map { |c| c.ord }
  adder = decoder.map { |c| c + index }
  returner = adder.map { |c| c.chr }.join
end

p "Please enter a string to encrypt..."
text = gets.chomp
p "Please enter a number to shift the characters within the string..."
idx_shift = gets.chomp.to_i

p caesar_cipher(text, idx_shift)