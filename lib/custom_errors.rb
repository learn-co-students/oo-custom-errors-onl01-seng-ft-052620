# require_relative './custome_error_module.rb'


class Person
  attr_accessor :partner, :name

  def initialize(name)
    @name = name
  end

  def get_married(person)
    self.partner = person
    if person.class != Person
      begin
      raise DataTypeError
      rescue DataTypeError => error
        puts error.message
      end
    else
    person.partner = self
    end
  end

  class DataTypeError < StandardError
    def message
      "you must give the get_married method an argument of an instance of the person class!"
    end
  end

end

beyonce = Person.new("Beyonce")
beyonce.get_married("Jay-Z")
puts beyonce.name
