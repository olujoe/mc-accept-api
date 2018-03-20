require 'spec_helper'
require 'version'
require_relative '../lib/big_ted_newshub_moscollector_automation_api'
require_relative '../spec/helpers/test_helper'
require 'pry'


describe BigTednewshubMoscollectorAutomationApi do
  it 'has a version number' do
    expect(BigTednewshubMoscollectorAutomationApi::VERSION).not_to be nil
  end
end

describe BigTednewshubMoscollectorAutomationApi::Service do
  it 'can initialise a service client' do
    expect(BigTednewshubMoscollectorAutomationApi::Service.new).to be_an_instance_of BigTednewshubMoscollectorAutomationApi::Service
  end
end

describe BigTednewshubMoscollectorAutomationApi::Response do
  it 'can parse json response' do
    response = BigTednewshubMoscollectorAutomationApi::Response::ResponseJson.new(mock_response('mock_json.json'))
    expect(response.body.size).to be > 0
  end
end

describe BigTednewshubMoscollectorAutomationApi::MosCollectorController do
  it 'can view heartbeat of mos collector' do
    response = BigTednewshubMoscollectorAutomationApi::MosCollectorController.new.set_moscollector_controller(request: 'heartbeat')
    expect(response.code).to eql 200
  end       
end 

describe BigTednewshubMoscollectorAutomationApi::MosCollectorController do
  it 'can view roReqAll of mos collector' do
    response = BigTednewshubMoscollectorAutomationApi::MosCollectorController.new.set_moscollector_controller(request: 'roReqAll')
    expect(response.code).to eql 200
  end       
end 

describe BigTednewshubMoscollectorAutomationApi::MosCacheCollectorController do
  it 'can view add mos cache collector' do
    response = BigTednewshubMoscollectorAutomationApi::MosCacheCollectorController.new.set_moscachecollector_controller(request: 'add')
    expect(response.code).to eql 200
  end
end

#=begin
describe BigTednewshubMoscollectorAutomationApi::Response  do
  it 'can view all mos cache collector' do
    response = BigTednewshubMoscollectorAutomationApi::MosCacheCollectorController.new.set_moscachecollector_controller(request: 'all')

    expect(response.code).to eql 200
  end
end

describe BigTednewshubMoscollectorAutomationApi::MosCacheCollectorController do
  it 'can view details mos cache collector' do
    response = BigTednewshubMoscollectorAutomationApi::MosCacheCollectorController.new.set_moscachecollector_controller(request: 'details')
    expect(response.code).to eql 200
  end
end

describe BigTednewshubMoscollectorAutomationApi::MosCacheCollectorController do
  it 'can view init mos cache collector' do
    response = BigTednewshubMoscollectorAutomationApi::MosCacheCollectorController.new.set_moscachecollector_controller(request: 'init')
    expect(response.code).to eql 200
  end
end

describe BigTednewshubMoscollectorAutomationApi::MosCacheCollectorController do
  it 'can view roId of specific mos cache collector' do
    response = BigTednewshubMoscollectorAutomationApi::MosCacheCollectorController.new.set_moscachecollector_controller(request: 'roId')
    expect(response.code).to eql 200
  end
end
