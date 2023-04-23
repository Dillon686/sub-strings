# frozen_string_literal: true

dictionary = %w[below down go going horn how howdy it i low own part partner sit]

def substrings(word, dictionary)
  hash = {}
  string_without_spaces = array_to_string(string_to_array(word)).downcase
  dictionary.each do |entry|
    modified_string = string_without_spaces

    while modified_string.include?(entry)
      if hash[entry].nil?
        hash[entry] = string_without_spaces.include?(entry) ? 1 : 0
      else
        hash[entry] += string_without_spaces.include?(entry) ? 1 : 0
      end
      modified_string = modified_string.sub(entry, '')
    end
  end
  hash.select { |_k, v| v.positive? }
end

def string_to_array(string)
  string.split(' ')
end

def array_to_string(array)
  array.join('').delete(' ')
end

p substrings("Howdy partner, sit down! How's it going?", dictionary)
