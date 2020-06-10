module CustomErrors

class PartnerError < StandardError
    def message
        "you must give the get_married method an argument of an instance of the person class!"
      end
end


end