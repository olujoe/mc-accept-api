
require_relative '../../../spec/helpers/test_helper'
module BigTednewshubMoscollectorAutomationApi
  class MosCollectorController < Service
    include BigTednewshubMoscollectorAutomationApi::Response

    attr_accessor :host, :service_url
    def initialize
      @service_url = set_service_url(self)
      puts "SERVER = #{service_url}"
    end

    def set_moscollector_controller(request:nil, query:nil)
      case request
      when 'heartbeat'
        ResponseJsonMos.new(safe_get(moscollector_controller_heartbeat_url, 
          headers: {'Content-Type' => 'application/json'}, query: query ))
      when 'roReq'
        ResponseJsonMos.new(safe_get(moscollector_controller_roReq_url, 
          headers: {'Content-Type' => 'application/json'}, query: query ))
      when 'roReqAll'
        ResponseJsonMos.new(safe_get(moscollector_controller_roReqAll_url, 
          headers: {'Content-Type' => 'application/json'}, query: query ))
      end
    end

    # urls
    def moscollector_controller_heartbeat_url
      url 'moscollector/heartbeat'
    end

    def moscollector_controller_roReq_url
      url 'moscollector/roReq'
    end

    def moscollector_controller_roReqAll_url
      url 'moscollector/roReqAll'
    end

  end
end
