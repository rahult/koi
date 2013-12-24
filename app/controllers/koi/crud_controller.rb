module Koi
  class CrudController < ActionController::Base
    layout 'application'
    has_crud
    defaults :route_prefix => ''
    respond_to :html, :json, only: [:index, :show]
  end
end
