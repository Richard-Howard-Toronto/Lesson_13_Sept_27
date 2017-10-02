
require 'pry'

class Contact

  @@contacts = []  #These variables will be available to all Contact object instances.
  @@id = 100

    def initialize(first_name, last_name, email, note)
        @first_name = first_name
        @last_name = last_name
        @email = email
        @note = note
        @id = @@id
        @@id += 1 # this way the next contact will get a different id
        @time = Time.now  #time stamp for the new client
    end

    # -> 'settor' Class Method remember, we preface the method name with 'self.' if it is a class method

    def self.create(first_name, last_name, email, note)
      new_contact = Contact.new(first_name, last_name, email, note)
      @@contacts << new_contact
      return new_contact
    end


    # a setter (*set* the value of an attribute)
    def first_name=(first_name)
      @first_name=first_name
    end

    # a setter (*set* the value of an attribute)
    def last_name=(last_name)
      @last_name=last_name
    end

    # a setter (*set* the value of an attribute)
    def email=(email)
      @email = email
    end

    # a setter (*set* the value of an attribute)

    def note=(note)
      @note = note
    end

#---------------------------------

    def self.find_by(key, value)
      @@contacts.find  { | contact | contact.send(key) == value}
    end

    # a getter (*get* the value of an attribute)

    def first_name
      @first_name
    end

    # a getter (*get* the value of an attribute)

    def last_name
      @last_name
    end

    # a getter (*get* the value of an attribute)

    def email
      @email
    end

    # a getter (*get* the value of an attribute)

    def note
      @note
    end

    # a getter (*get* the value of an attribute)

    def id
      @id
    end

    def time
      @time
    end

  # a getter -> This method should return all of the existing contacts
  def self.all
    @@contacts
  end

  # This method should accept an id as an argument
  # and return the contact who has that id
  def self.find=(id)

  end

  # This method should allow you to specify
  # 1. which of the contact's attributes you want to update
  # 2. the new value for that attribute
  # and then make the appropriate change to the contact

  # this is a setter

  def update(attribute1,value1)  #passing the inputted name to the contact

    if attribute1 == 'first_name'
      @first_name=value1
    elsif attribute1 == 'last_name'
      @last_name=value1
    elsif attribute1 == 'email'
      @email= email
    elsif attribute1 == 'note'
      @note = note

    end


  end

  # This method should work similarly to the find method above
  # but it should allow you to search for a contact using attributes other than id
  # by specifying both the name of the attribute and the value
  # eg. searching for 'first_name', 'Betty' should return the first contact named Betty


  # This method should delete all of the contacts
  def self.delete_all

  end

  def full_name
    puts "Full name is #{first_name} #{last_name}"
  end

  # This method should delete the contact
  # HINT: Check the Array class docs for built-in methods that might be useful here
  def delete

  end

  # Feel free to add other methods here, if you need them.

end

#use Contact.create, not Contact.new

# setters

contact1 = Contact.create('Richard','Howard','1@mail','from Dartmouth')
contact2 = Contact.create('Dave','Smith','2@mail',' Halifax')
contact3 = Contact.create('Joe','Jones','3@mail',' Chester')
contact4 = Contact.create('Sue','Jones','4@mail',' South')
contact5 = Contact.create('Rapper','Ron','5@mail',' North')
contact6 = Contact.create('Doug','Brone','6@mail',' Est')

# getter, gets the info from the note instance variable
#
p contact1.first_name
p contact1.last_name
p contact1.note
p contact1.email
p contact1.id
p contact1.time
p contact1.full_name
