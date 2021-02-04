class Country

    attr_accessor :full_name, :native_name, :code, :language

    @@all = []

    def initialize(country_hash)
        country_hash.each do |k, v|
            self.send("#{k}=", v)
        end
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