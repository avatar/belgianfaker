module BelgianFaker
  class PhoneNumber
    class << self
      def phone_number
        BelgianFaker.numerify(Formats.rand)
      end
      
      def mobile_number
        BelgianFaker.numerify(MobileFormats.rand)
      end
    end
      
    
    Formats = [
      '0# / ### ## ##',
      '0## / ### ## ##'
    ]
    
    MobileFormats = [
      '04## / ### ###',
      '04## / ## ## ##'
    ]
  end
end