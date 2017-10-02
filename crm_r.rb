require_relative 'contact_r'    # my file is contact_r
                                # the CRM class uses the Contact class

class CRM


  def initialize
    @askagain = true
  end

  def main_menu
    while @askagain # repeat indefinitely
      print_main_menu
      user_selected = gets.to_i
      call_option(user_selected)
    end
  end

  def print_main_menu
    puts '[1] Add a new contact'
    puts '[2] Modify an existing contact'
    puts '[3] Delete a contact'
    puts '[4] Display all the contacts'
    puts '[5] Search by attribute'
    puts '[6] Exit'
    puts 'Enter a number: '
  end

  def call_option(user_selected)
    case user_selected
      when 1 then add_new_contact
      when 2 then modify_existing_contact
      when 3 then delete_a_contact
      when 4 then display_all_contacts
      when 5 then search_by_attribute
      when 6 then exit_the_program
    end
  end

# 1 ----------

  def add_new_contact   #object = instance

      print 'Enter First Name: '
      first_name = gets.chomp

      print 'Enter Last Name: '
      last_name = gets.chomp

      print 'Enter Email Address: '
      email = gets.chomp

      print 'Enter a Note: '
      note = gets.chomp

  Contact.create(first_name, last_name, email, note)

  end

# 2 ----------

  def modify_existing_contact

    puts "enter an id number"
    id = gets.chomp.to_i
    contact_person = Contact.find_by(id)

    puts "What would you like to modify?"
    variable = gets.chomp

      if variable == 'first_name'

        print 'Enter new First Name: '
        info = gets.chomp

      elsif variable == 'last_name'

        print 'Enter new Last Name: '
        info = gets.chomp

      elsif variable == 'email'

        print 'Enter new Email Address: '
        info = gets.chomp

      elsif variable == 'note'

        print 'Enter new Note (replaces old note): '
        info = gets.chomp

      else

        "you have only four choices"

      end

      puts "the new info entered is #{info}"


  end


# 3 ----------

  def delete_a_contact
    puts "enter an id number"
    id = gets.chomp.to_i

    contact_to_delete = Contact.find(id)

    contact_to_delete

    puts "Contact #{id} has been deleted"

  end

# 4 ----------

    def display_all_contacts
      Contact.all.each  do |contact|
        puts "the contacts is #{contact.first_name} and #{contact.last_name}, with email #{contact.email}"
      end
    end


# 5 seach by attribute


    def search_by_attribute

        print "Enter an attribute, first_name, last_name, email or notes: "

        key = gets.chomp

        print "Enter the current value (search term):"

        value = gets.chomp

        puts Contact.find_by(key, value).inspect

      end

      def exit_the_program
        @askagain = false
      end


end

a_crm_app = CRM.new

a_crm_app.main_menu
