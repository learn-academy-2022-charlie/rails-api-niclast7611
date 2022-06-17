class ApplicationController < ActionController::Base
    protect_from_forgery except: :sample

    def sample
  　　 render json: animal
    end
end
