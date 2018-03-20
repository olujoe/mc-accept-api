# coding: utf-8

require 'httparty'
require 'crack'
require 'hashie'
require 'pry'

require_relative '../lib/big_ted_newshub_moscollector_automation_api/services'
require_relative '../lib/big_ted_newshub_moscollector_automation_api/response/response_json'
# Namespace for Project
module BigTednewshubMoscollectorAutomationApi
  include Services
end