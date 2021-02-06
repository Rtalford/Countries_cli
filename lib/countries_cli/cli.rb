class CLI

    def intro
       
        puts "Hello there, Welcome to REST_Countries"
        puts "Please select a country you would like to learn more about 
        from the list provided." 
        countries = API.get_data 
        binding.pry
        country_name
        country_facts
        app_response
      
           
    end 

    def user_response
        gets.strip
    end 

    def app_response
        puts "Type 'next' to continue and view more countries or 'no' 
        to exit the website."
        selection
    end

    def country_name
        Country.all.each.with_index(1) do |country, i|
            puts ""
        puts "#{i}. #{country.full_name}"
        end 
    end

   

    def country_facts

        choice = user_response
       
        country = Country.locate_country(choice)
        country_information(country)    
    end 

    def country_information(country)
        puts "full_name: #{country.full_name}"
        puts "native_name: #{country.native_name}"
        puts "code: #{country.code}"
        puts "language: #{country.language}"
        selection
    end 


    def goodbye
        puts "Thank you for choosing our website to learn about different countries. We hope to see you soon"
    end 

    def error
        puts "That is an invalid entry. Please try again."
        selection
    end 

    def selection 
        choice = user_response
       

        if choice == 'next'
           puts "Please select a new country from a list provided or 'no' 
           to exit the website "
           country_name
           country_facts
           app_response
           

        #elsif choice 
       
        elsif choice == 'no'
            goodbye
        else 
            error

        end

    end 


end 
