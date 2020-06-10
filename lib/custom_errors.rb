require_relative 'errors'

class Person
  attr_accessor :partner, :name
  include CustomErrors

  def initialize(name)
    @name = name
  end

  def get_married(person)
    if person.class != Person
      begin
        raise PartnerError
      rescue PartnerError => error
          puts error.message
      end
    else
      person.partner = self
    end

  end

end

beyonce = Person.new("Beyonce")
beyonce.get_married("Jay-Z")
puts beyonce.name




