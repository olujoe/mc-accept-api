
require_relative '../../../spec/helpers/test_helper'
module BigTednewshubMoscollectorAutomationApi
  class MosCacheCollectorController < Service
    include BigTednewshubMoscollectorAutomationApi::Response

    attr_accessor :host, :service_url
    def initialize
      @service_url = set_service_url(self)
      puts "SERVER = #{service_url}"
    end

    def set_moscachecollector_controller(request:nil, payload:nil)
      case request
      when 'add'
        ResponseJsonNoBody.new(safe_put(moscachecollector_controller_add_url, 
          headers: {'Content-Type' => 'application/json'}, payload: payload.to_json ))
      when 'all'
        ResponseJson.new(safe_get(moscachecollector_controller_all_url, 
          headers: {'Content-Type' => 'application/json'} ))
      when 'details'
        ResponseJsonNoBody.new(safe_get(moscachecollector_controller_details_url, 
          headers: {'Content-Type' => 'application/json'} ))
      when 'init'
        ResponseJsonNoBody.new(safe_put(moscachecollector_controller_init_url, 
          headers: {'Content-Type' => 'application/json'} ))
      when 'roId'
        ResponseJsonNoBody.new(safe_get(moscachecollector_controller_roid_url, 
          headers: {'Content-Type' => 'application/json'} ))
      end
    end

    # urls
    def moscachecollector_controller_add_url
      url 'moscollector/cache/add'
    end

    def moscachecollector_controller_all_url
      url 'moscollector/cache/all'
    end

    def moscachecollector_controller_details_url
      url 'moscollector/cache/details'
    end
    def moscachecollector_controller_init_url
      url 'moscollector/cache/init'
    end

    def moscachecollector_controller_roid_url
      url "moscollector/cache/#{$roId}"
    end

  end
end
