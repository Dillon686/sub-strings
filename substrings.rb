dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(word, dictionary)
    hash = {}
    string_without_spaces = array_to_string(string_to_array(word))
    start_index = 0
    end_index = start_index + word.length

    #while end_index < string_without_spaces.length
        dictionary.each do |entry|
            string_copy = string_without_spaces
            hash[entry] = 0
            string_copy.include?(entry) ? hash[entry] += 1 : hash[entry] += 0
        end
        start_index += 1
        end_index += 1
    #end

    hash.select{|k, v| v > 0}
end

def string_to_array(string)
    string.split("")
end

def array_to_string(array)
    unformatted_string = array.join("").delete(" ")
    unformatted_string
end

p substrings("below below", dictionary)