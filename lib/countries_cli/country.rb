class Country

    attr_accessor :full_name, :native_name, :code, :language

    @@all = []

    def initialize(full_name, native_name, code, language)
       @full_name = full_name 
       @native_name = native_name
       @code = code
       @language = language
        save
    end

    def save 
        @@all << self
    end

    def self.all
        @@all
    end

    def self.locate_country(country_name)
        @@all.each.detect do |country| 
            country.name == country_name
        end
    end

end 
