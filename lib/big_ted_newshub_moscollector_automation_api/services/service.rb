module BigTednewshubMoscollectorAutomationApi
  # Base class for bsd service models
  class Service
    include HTTParty
    debug_output $stdout
    attr_accessor :code, :headers, :body
    default_timeout 20

    def url(path)
      if self.class.base_uri
        "#{self.class.base_uri}/#{path}"
      else
        "#{service_url}/#{path}"
      end
    end

    protected

    def safe_get(path, headers: {}, query: {})
      rescue_connection_errors(path) do
        self.class.get(path, headers: headers, query: query)
      end
    end

    def safe_post(path, headers: {}, query: {}, payload: {})
      rescue_connection_errors(path) do
        self.class.post(path, headers: headers, query: query, body: payload)
      end
    end

    def safe_put(path, headers: {}, query: {}, payload: {})
      rescue_connection_errors(path) do
        self.class.put(path, headers: headers, query: query, body: payload)
      end
    end

    private

    def rescue_connection_errors(url)
    yield
    rescue Net::OpenTimeout, SocketError => e
      raise "Failed to connect to #{url}: #{e}"
    end
  end
end