# file: contact.rb

class Contact

  def initialize (first_name, last_name, email, notes = 'N/A')
    @first_name  = first_name
    @last_name  = last_name
    @email      = email
    @notes      = notes
  end

# CREATE FOUR READERS

    def first_name
      @first_name
    end

    def last_name
      @last_name
    end

    def email
      @email
    end

    def notes
      @notes
    end

  #WRITERS

  def first_name=(first_name)
    @first_name = first_name
  end

  def last_name=(last_name)
    @last_name = last_name
  end

  def notes=(notes)
    @notes = notes
  end

  # etc


end

#now write an instance

  jones = Contact.new('Bill','Jones','vill@mail.com','no  booth')
  clark = Contact.new('Clark','Kent','clark@mail.com','goes into phone booth')

p clark

p clark.firstname
p clark.last_name
p clark.notes
