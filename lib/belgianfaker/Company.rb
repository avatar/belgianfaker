module BelgianFaker
  class Company
    class << self
      def name
        "#{company_name} #{suffix} #{form}"
      end
    
      def suffix
        ['Inc', 'Technologies', '', 'Associations'].rand
      end
      
      def form
        %w(VZW BVBA NV CV VOF Comm.V. CVA).rand
      end
      
      def company_name
        %w(Drop Zone M.B.D. Corp Olieslaeger J. en Co Cartacarta Mijten Tradep Orion Diamond Trading Artikona A & S Kantoor Cleys Interieurinrichting Cross Cargo Bockaert&Thienpont-BOTHA Segers Electro Muntpost Intern. Belgium Vlaamse Leasing Maatsch. Monfort J. Vicotra SVK F.J.S. Consultants Dimatronics Laruelle Trans. Stogel Lymarc Dewaay Secur. Serv. Tire Distribution Lobbestael Vervoer Coox Motors UTi Belgium Vecu Thys Interieur Industrie Berka Alinea Ter Architectes Lesos Engineering Spriet Hans Transport Penfo Fotografie Ameel Garage Ons Dorp Marmaris Riemst Benoot En Cie Louis et Fils Ed Somers Projectontw. Mercure Pharmacie Nicolaï Jo en Co Schildermans Roger 't Boeksken Amelit Botex Carolimmo Wymar International Loiselet et Fils Quickletter L. Sécurité Codulec Obelix Supermarkt Tales Systems Verplaetsen Aircondit. Wouters Wilfried Apotheek Ketten Wulf Cek Plus L'Eternel Féminin Vanmarcke Alpha Services MIJE Van Orshaegen Casteleyn Geert Veribouw Elleboudt Lesage-Huysentruyt Immo Schillebeekx Garage Belcipro De Muelenaere Luc Notaris Tack Oudenaarde Vandermaesen Rudy Dinant Parking Masterparts Eticolor Drukkerij Belimex Dexis K.E.P. Tomar Kolen Watson Wyatt Bogaert-De Smet Confis. Van De Voorde Asphalia Christian Desaeger Leunens Medtech Cassiers Optometrisch Ctr Unlimited Fuel Organisat. Casters Algemene Ondern. Oosterwijck Vermeulen Hugo De Schepper Eric Gartner Belgium Hegge Invest Ford Fabrieken te Genk Dierckx L. Conservatories Eftec Md Center Rik Garage).rand
      end
    end
  end
end