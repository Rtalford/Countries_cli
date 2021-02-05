class CLI 

    def intro 
        greeting 
        #API.get_data
        country = Api.get_country()
        input = nil 
        while input != "exit"
            puts country_name
            puts "Please select a country by the number"
            input = gets.strip
        if input.to_i >= 1 && input.to_i <= Country.all.length 
            country = countries[input.to_i - 1]
            more_info 
        else 
            error 
        end 
    end 
    end 

    def greeting 
        puts "Hello there, Welcome to REST_Countries." 
        puts "Please select a country you would like to learn more about from the list provided."
    end 

    def country_name
        Country.all.each.with_index(1) do |country, i|
        puts "#{i}. #{country}"
        end
        #country facts
    end
               
        
    def country_facts
        
        choice = user_response
        
        country = Country.locate_country(choice)
        country_information(country)    
    end 
        
    def country_information(country)
        puts "Full_name: #{country.full_name}"
        puts "NativeName: #{country.nativeName}"
        puts "Code: #{country.code}"
        puts "Language: #{country.language}"
        selection
    end 
        
    def new_country
        puts "Please select a new country you would like to learn about"
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
               
        
        if choice == 'more info'
            puts "Please type 'more info' or 'no' to exit website"
            country_name
            selection 
                   
        elsif choice == 'no'
            goodbye

        elsif choice == 'no'
            #?

        else 
            error
            selection
        
        end       
    end 
    
end 




# class CLI

    # def intro
       
    #     puts "Hello there, Welcome to REST_Countries"
    #     puts "Please select a country you would like to learn more about 
    #     from the list provided." 
    #     API.get_data 
    #     binding.pry
    #     country_name
    #     country_facts
    #     app_response
    #     selection(user_response)
    #     app_response
    # end 

#     def user_response
#         gets.strip
#     end 

#     def app_response
#         puts "Input 'next' to select a new country from the list provided, 'no' 
#         to exit the website."
#         selection
#     end

#     def country_name
#         Country.all.each.with_index(1) do |country, i|
#         puts "#{i}. #{country}"
#         end
#     end
       

#     def country_facts

#         choice = user_response

#         country = Country.locate_country(choice)
#         country_information(country)    
#     end 

#     def country_information(country)
#         puts "Full_name: #{country.full_name}"
#         puts "NativeName: #{country.nativeName}"
#         puts "Code: #{country.code}"
#         puts "Language: #{country.language}"
#         selection
#     end 

   

#     def goodbye
#         puts "Thank you for choosing our website to learn about different countries. We hope to see you soon"
#     end 

#     def error
#         puts "That is an invalid entry. Please try again."
#         selection
#     end 

#     def selection 
#         choice = user_response
       

#         if choice == 'next'
#            puts "Please select a new country from a list provided or 'no' 
#            to exit the website "
#            country_name
#            selection 
           
#         elsif choice == 'no'
#             goodbye
#         else 
#             error

#         end

#     end 
# end 
