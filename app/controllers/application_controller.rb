class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  PERMITTED_PARAMS = [ :user_id,
                       :product_id,
                       :project_id
                     ]
end
