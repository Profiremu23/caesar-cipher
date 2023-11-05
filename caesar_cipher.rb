def caesar_cipher(string, index)
  decoder = string.chars.map { |c| c.ord }
  adder = decoder.map do |c|
    if (c + index > 122 or (c + index > 90 and c < 91) ) or (c == 122 or c == 90)
      c + index - 26
    elsif c > 96 or c > 64
      c + index
    else
      c
    end
  end
  returner = adder.map { |c| c.chr }.join
end

p "Please enter a string to encrypt..."
text = gets.chomp
p "Please enter a number to shift the characters within the string..."
idx_shift = gets.chomp.to_i

p caesar_cipher(text, idx_shift)