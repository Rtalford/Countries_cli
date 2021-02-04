class Country

    attr_accessor :full_name, :nativeName, :code, :language

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

    def self.locate_country(country_name)
        @@all.each.detect do |country| 
            country.name == country_name
        end
    end

end 



# country_array.each do |country|
    #     Country.new(country["full_name"], country["native_name"], 
    #     country["code"], country["language"])
    #end

        #full_name, native_name, code, language

