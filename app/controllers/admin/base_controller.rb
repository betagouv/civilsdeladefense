# frozen_string_literal: true

require "turbolinks/redirection"

class Admin::BaseController < ApplicationController
  include Turbolinks::Redirection

  before_action :authenticate_administrator!
  load_and_authorize_resource
  layout "admin"

  protected

  def current_ability
    @current_ability ||= Ability.new(current_administrator)
  end

  def authenticated_user_or_administrator
    current_administrator || "unknown"
  end
end
