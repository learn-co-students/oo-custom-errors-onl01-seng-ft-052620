class Person
  attr_accessor :partner, :name

  def initialize(name)
    @name = name
  end

  def get_married(person)
    self.partner = person
    if person.class != Person #if the variable person is not a class, then output PartnerError
      begin
        raise PartnerError
      rescue PartnerError => error #by adding a rescue, it allows the program to keep running after we raise the error
          puts error.message
      end
    else
      person.partner = self
    end
  end
  
  class PartnerError < StandardError #this can be placed inside class, outside class, or create & include a new module in class
    def message #can include a custom error
      "you must give the get_married method an argument of an instance of the person class!"
    end
  end
end


beyonce = Person.new("Beyonce")
beyonce.get_married("Jay-Z")
puts beyonce.name

# basic pattern of error rescuing:
# begin
#   raise YourCustomError
# rescue YourCustomError
# end




