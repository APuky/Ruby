dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
def substrings(string,dictionary)
  sub_hash={}
  string_array=string.split(" ")
  dictionary.each do |dict_word|
    string_array.each do |test_word|
      if test_word.downcase.include?(dict_word)
        if sub_hash.has_key?(dict_word)
          sub_hash[dict_word]+=1
        else
          sub_hash[dict_word]=1
        end
      end
    end
  end
  puts sub_hash
end
puts "Type your string down below to check how many matches there are in the dictionary!"
substring=gets.chomp
substrings(substring="Howdy partner, sit down! How's it going?",dictionary)
