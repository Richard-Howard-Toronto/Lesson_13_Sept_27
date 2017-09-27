class Contact

  @@contacts = []  #These variables will be available to all Contact object instances.
  @@id = 100


    def initialize(first_name, last_name, email, note)
        @first_name = first_name
        @last_name = last_name
        @email = email
        @note = note
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






  # This method should call the initializer,
  # store the newly created contact, and then return it
  def self.create

  end

  # This method should return all of the existing contacts
  def self.all

  end

  # This method should accept an id as an argument
  # and return the contact who has that id
  def self.find

  end

  # This method should allow you to specify
  # 1. which of the contact's attributes you want to update
  # 2. the new value for that attribute
  # and then make the appropriate change to the contact
  def update

  end

  # This method should work similarly to the find method above
  # but it should allow you to search for a contact using attributes other than id
  # by specifying both the name of the attribute and the value
  # eg. searching for 'first_name', 'Betty' should return the first contact named Betty
  def self.find_by

  end

  # This method should delete all of the contacts
  def self.delete_all

  end

  def full_name

  end

  # This method should delete the contact
  # HINT: Check the Array class docs for built-in methods that might be useful here
  def delete

  end

  # Feel free to add other methods here, if you need them.

end


contact = Contact.new('Richard','Howard','rh@gmail','from Dartmouth')


# setters

contact.note = 'beginning student'
contact.email = 'new email.com'
contact.first_name = 'Rocky'
contact.last_name ='Moose'

# getter, gets the info from the note instance variable

p contact.first_name
p contact.last_name
p contact.note
p contact.email
