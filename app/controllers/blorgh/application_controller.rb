module Blorgh
  class ApplicationController < ::ApplicationController 
    helper Rails.application.routes.url_helpers
  end
end
