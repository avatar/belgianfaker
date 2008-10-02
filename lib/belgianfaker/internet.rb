module BelgianFaker
  class Internet
    class << self
      def email(name = nil, company=nil)
        [ user_name(name), domain_name(company) ].join('@')
      end
      
      def free_email(name = nil)
        [ user_name(name), %w(gmail.com yahoo.com hotmail.com).rand ].join('@')
      end
      
      def user_name(name = nil)
        return name.scan(/\w+/).shuffle.join(%w(. _).rand).downcase if name
        
        [
          Proc.new { Name.first_name.gsub(/\W/, '').downcase },
          Proc.new {
            [ Name.first_name, Name.last_name ].map {|n|
              n.gsub(/\W/, '')
            }.join(%w(. _).rand).downcase }
        ].rand.call
      end
      
      def domain_name(company)
        [ domain_word(company), domain_suffix ].join('.')
      end
      
      def domain_word(company)
        company.split(' ').first.gsub(/\W/, '').downcase
      end
      
      def domain_suffix
        %w(be nl eu com net).rand
      end
    end
  end
end