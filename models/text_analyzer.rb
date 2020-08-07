# Your TextAnalyzer model code will go here.
class TextAnalyzer
    attr_reader :text 

    def initialize(text)
        @text = text.downcase
    end

    def count_of_words
        @text.split(' ').count
    end

    def count_of_vowels
        @text.scan(/[aeiou]/).count
    end

    def count_of_consonants
        @text.scan(/[bcdfghjklmnpqrstuvwxyz]/).count
    end

    def most_used_letter
        arr = @text.gsub(/[^a-z]/, '').split('')
        arr2 = {}
        arr.uniq.map { |l| arr2[l] = arr.count(l) }
        most = { arr2.keys.first => arr2.values.first }
        arr2.each do |key, val|
            if val > most.values.first
                most = {}
                most[key] = val
            end
        end
        most 
    end
end