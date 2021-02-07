
 class API

  def self.get_data
    response = RestClient.get('https://restcountries.eu/rest/v2/all')
    country_array = JSON.parse(response)
    country_array.each do |country|
      country_info = {
      name: country["name"],
      capital: country["capital"],
      region: country["region"],
      subregion: country["subregion"],
      population: country["population"],
    } 
     Country.new(country)
    end
   Country.all
  end
    
end





