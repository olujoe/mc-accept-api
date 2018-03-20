require_relative 'response/response_json'
require_relative 'services/service'
require_relative 'services/moscachecollector_controller'
require_relative 'services/moscollector_controller'
#require_relative '../big_te_automation_api.rb'

module BigTednewshubMoscollectorAutomationApi
  # Namespace for Services model
  module Services

    def moscachecollector_controller
      @moscachecollector_controller ||= MosCacheCollectorController.new
    end

    def moscollector_controller
      @moscollector_controller ||= MosCollectorController.new
    end
    
  end
end