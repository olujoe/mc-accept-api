FIXTURE_PATH = 'spec/fixtures'.freeze

def mock_response(filename)
  filename = File.join(FIXTURE_PATH, filename)

  OpenStruct.new(
      code: 200,
      body: File.read(filename),
      headers: { 'joe' => 'bloggs' }
  )
end

def set_service_url(service)
  #raise 'SERVER param must be set !!!' unless ENV['SERVER']
  case ENV['SERVER']
    when 'INT'
      service.service_url = 'http://zgbwcjvap7701.jupiter.bbc.co.uk:9080'        
    when 'DEV'
      service.service_url = 'http://10.161.155.12:9080'  
    else
      service.service_url = 'http://10.161.155.12:9080'
  end
end