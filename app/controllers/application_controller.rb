class ApplicationController < ActionController::Base
  before_action :authenticate_user!
end

def default_url_options
  { host: ENV["DOMAIN=www.asktom.me"] || "localhost:3000" }
end
