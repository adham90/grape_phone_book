Dir["#{File.dirname(__FILE__)}/app/models/**/*.rb"].each {|f| require f}
Dir["#{File.dirname(__FILE__)}/app/**/*.rb"].each {|f| require f}

module API
  class Root < Grape::API
    use Rack::Session::Cookie
    default_format :json
    format :json

    mount API::Accounts
  end
end

