class ApplicationController < ActionController::Base
    before_action :record_page_view
    include SessionsHelper
  
    def record_page_view
      ActiveAnalytics.record_request(request)
    end
  end
  