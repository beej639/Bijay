def substrings(string, substring)
    words = string.downcase.split(" ")
    frequencies = Hash.new(0)
    
    words.each do |word|
        substring.each do |vocab|
            if word.include? vocab.downcase
                frequencies[word] += 1
            end
        end
    end
    
    frequencies = frequencies.sort_by {|a,b| b}
    frequencies.reverse!
    frequencies.each do |word, frequency|
        puts word + " " + frequency.to_s
    end
end

dictionary = ["below", "down", "go", "going", "horn", "how", "howdy","it", "i", "low", "own", "part", "partner", "sit"]

substrings("Howdy partner, sit down! How's it going?", dictionary)
