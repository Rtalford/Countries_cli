
 class API

  def self.get_data
    response = RestClient.get('https://restcountries.eu/rest/v2/all')
    #create a variable)
    country_array = JSON.parse(response)#["name"]
    country_array.each do |country|
      Country.new(country)
    end
   Country.all
  end
    

end





