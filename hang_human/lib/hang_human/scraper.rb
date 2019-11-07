class HangHuman::Scraper 

    def get_animal_page 
        Nokogiri::HTML(open("https://en.wikipedia.org/wiki/List_of_animal_names"))
    end

    def get_animal_words
        animal_table = get_animal_page.css('table.wikitable')[1]
        animals = animal_table.css('tbody tr').collect do |tr| 
            tr.css("td a")[0].to_s.scan(/>\w+</)
        end.collect{|animal| animal.to_s.downcase.scan(/\w+/)}.flatten
    end

     def get_rand_animal
        rand_animal = get_animal_words.sample
        rand_animal
    end

end