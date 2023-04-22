dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(word, dictionary)
    hash = {}
    string_without_spaces = array_to_string(string_to_array(word)).downcase
    start_index = 0
    end_index = start_index + word.length

    dictionary.each do |entry|
        hash[entry] = 0
        string_without_spaces.include?(entry) ? hash[entry] += 1 : hash[entry] += 0
    end
    hash.select{|k, v| v > 0}
end

def string_to_array(string)
    string.split(" ")
end

def array_to_string(array)
    unformatted_string = array.join("").delete(" ")
    unformatted_string
end

p substrings("Howdy partner, sit down! How's it going?", dictionary)