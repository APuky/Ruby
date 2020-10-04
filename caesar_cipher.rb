def caesar_cipher(string,shift)
  letters_lower=("a".."z").to_a
  letters_upper=("A".."Z").to_a
  cipher=""
  string.each_char do |c|
    if letters_lower.include?(c)
      if letters_lower.index(c)+shift>25
        cipher+=letters_lower[letters_lower.index(c)+shift-26]
      else
        cipher+=letters_lower[letters_lower.index(c)+shift]
      end
    elsif letters_upper.include?(c)
      if letters_upper.index(c)+shift>25
        cipher+=letters_upper[letters_upper.index(c)+shift-26]
      else
        cipher+=letters_upper[letters_upper.index(c)+shift]
      end
    else
      cipher+=c
    end
  end
  p letters_upper
  puts cipher
end


caesar_cipher("What a string!",4)