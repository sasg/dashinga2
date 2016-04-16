require 'dashing'

configure do
  set :dashinga2, 'dashinga2'
  set :default_dashboard, 'dashinga2'

  # icinga2 api config
  set :icinga2_api_url, 'https://localhost:5665'
  #set :icinga2_api_nodename, 'clientcertificatecommonname'
  #set :icinga2_api_username, 'dashing'
  #set :icinga2_api_password, 'icinga'

  helpers do
    def protected!
     # Put any authentication code you want in here.
     # This method is run before accessing any resource.
    end
  end
end

map Sinatra::Application.assets_prefix do
  run Sinatra::Application.sprockets
end

run Sinatra::Application
