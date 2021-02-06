class Country

    attr_accessor :full_name, :nativeNname, :code, :language

    @@all = []

    def initialize(country_hash)
        country_hash.each do |k, v|
        self.send("#{k}=", v) if self.respond
        end
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
