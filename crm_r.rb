require_relative 'contact_r'    # my file is contact_r
                                # the CRM class uses the Contact class

class CRM


  def initialize

  end

  def main_menu
    while true # repeat indefinitely
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
      when 3 then delete a contact
      when 4 then display all the contacts
      when 5 then seach by attribute
      when 6 then Exit
    end
  end

#----------

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

#----------

  def modify_existing_contact

    puts "enter an id number"
    id = gets.chomp.to_i
    contact_person = Contact.find_by(id)

    puts "What would you like to modify?"
    variable = gets.chomp

      if variable == 'first_name'

        print 'Enter First Name: '
        first_name = gets.chomp

      elsif variable == last_name

        print 'Enter Last Name: '
        last_name = gets.chomp

      elsif variable == email

        print 'Enter Email Address: '
        email = gets.chomp

      elsif variable == note

        print 'Enter a Note: '
        note = gets.chomp

      else

        "you have only four choices"

      end

      contact_person.update(first_name, last_name, email, note)

  end


#----------

  def delete_contact
    puts "enter an id number"
    id = gets.chomp.to_i
    contact_person = Contact.find_by(id)  # class Method --> def self.find_by(inputted_variable)
    contact_person.delete(first_name, last_name, email, note)
  end

  def display_all_contacts
    p Contacts
  end

  def search_by_attribute

  end


end

a_crm_app = CRM.new

a_crm_app.main_menu
