require 'active_support/concern'

module Rescue
  extend ActiveSupport::Concern

  included do

    rescue_from ActiveRecord::RecordNotFound do |exception|
      json_response({ message: exception.message }, 404)
    end

    rescue_from ActiveRecord::RecordInvalid do |exception|
      json_response({message: exception.message }, 422)
    end


  end

end
