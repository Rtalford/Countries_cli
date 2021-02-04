require 'pry' 
require 'rest-client'


 class API

  def self.get_data
    response = RestClient.get('https://restcountries.eu/rest/v2/all')
    #create a variable)
    country_array = JSON.parse(response) #["results"]
    #binding.pry
    country_array.each do |country|
    Country.new(country)
    end
    
  end 
end

# git add . 
# git commit -m "add some descriptive message here about what you did"
# git push

