#Pick three names and store them in an array.
#Prompt the user to enter their name.
#If their name is one of the names in the array,
# display a greeting message that includes their name.
#If their name isn't in the list, display "Who goes there?"


  permitted_person_array = ['Joe', 'Sue', 'Mike']

      puts "Enter your name please..."

      entered_name = gets.chomp

      permitted_person_array.each do |name|

        if entered_name == name
          return "entered_name matches name"

        else
          puts "who goes there?  does not match permitted_person_array"
          break
        end

      end
 return ""
