module BelgianFaker
  class Address
    class << self
      
      def postal_code
        @zip = ['1980', '1740', '1000', '2000', '9000', '1981', '1982', '1930'].rand
      end
      
      def city 
        get_zip_and_city()[@zip || zip_code]
      end
      
      def get_zip_and_city
        Hash['1980', 'Zemst', '1740', 'Ternat', '1000', 'Brussel', '2000', 'Antwerpen', '9000', 'Gent', '1981', 'Hofstade', '1982', 'Weerde', '1930', 'Zaventem']
      end
      
      def street_suffix
        ['laan', 'straat'].rand
      end
      
      def street_name
        %w(Stations Moerenslos Jaak\ Lemmens Donker Licht Populieren Eiken Oogst Groen De\ Groene\  ).rand + street_suffix
      end
      
      def street_number
        (1..300).sort_by{rand}.first.to_s + ['A', 'B', 'C', '','','','','','','',''].rand
      end
    end
  end
end