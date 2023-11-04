def caesar_cipher(string, index)
  decoder = string.chars.map { |c| c.ord }
  adder = decoder.map { |c| c + index }
  returner = adder.map { |c| c.chr }.join
end