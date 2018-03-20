module BigTednewshubMoscollectorAutomationApi

  module Response

    class ResponseJson
      attr_reader :code, :body, :headers, :results, :errors, :size
      def initialize(response)
        @code     = response.code
        @body     = JSON.parse(response.body).map { |hash| Hashie::Mash.new(hash) } 
        @headers  = response.headers        
      end
    end

    class ResponseJsonMos
      attr_reader :code, :body, :headers, :results, :errors, :size
      def initialize(response)
        @code     = response.code
        @body     = JSON.parse(response.body) 
        @headers  = response.headers        
      end
    end

    class ResponseJsonNoBody
      attr_reader :code, :body, :headers, :results, :errors, :size
      def initialize(response)
        @code     = response.code
        @headers  = response.headers        
      end
    end 

  end
  
end