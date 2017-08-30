class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  include Pundit
  after_action :verify_authorized, except: :index
  after_action :verify_policy_scoped, only: :index

  PERMITTED_PARAMS = [ :user_id,
                       :product_id,
                       :project_id,
                       :activity_id,
                       :task_id
                     ]
  private

   def current_user
     nil
   end
end
