module BelgianFaker
  class Name
    class << self
      def name
        Formats.rand.call.join(' ')
      end
    
      def first_name
        %w(Emma Marie Julie Amber Lotte Laura Luna Britt Femke Hanne Milan Robbe Thomas Seppe Wout Rune Xander Jelle Kobe Senne Bart Jan Ben Benjamin Johan Suzy Anja Bram Stijn Cedric Sara Lieve).rand      
      end
    
      def last_name
        %w(De\ Jong De\ Vries Jansen Van\ den\ Berg Bakker Van\ Dijk Visser Janssen Smit Meijer/Meyer Peeters Janssens Maes Jacobs Mertens Willems Claes Goossens Wouters De\ Smet).rand
      end
      
      def prefix
        %w(Mr. Mrs. Mv. Miss Dr.).rand
      end
    end
    
    Formats = [
      Proc.new { [ prefix, first_name, last_name ] },
      Proc.new { [ first_name, last_name ] },
      Proc.new { [ first_name, last_name ] },
      Proc.new { [ first_name, last_name ] },
      Proc.new { [ first_name, last_name ] },
      Proc.new { [ first_name, last_name ] },
      Proc.new { [ first_name, last_name ] },
      Proc.new { [ first_name, last_name ] },
      Proc.new { [ first_name, last_name ] },
      Proc.new { [ first_name, last_name ] }
      ]
  end
end