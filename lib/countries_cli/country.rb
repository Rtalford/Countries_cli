require 'pry'

class Country

    attr_accessor :name, :capital, :region, :subregion, :population

    @@all = []

    def initialize(country_hash)
        country_hash.each do |k, v|
        self.send("#{k}=", v) if self.respond_to?("#{k}=")
        end
        save
    end

    def save 
        @@all << self
    end

    def self.all
        @@all
    end

    def self.locate_country(index)
         @@all[index.to_i-1]
    end

end 
