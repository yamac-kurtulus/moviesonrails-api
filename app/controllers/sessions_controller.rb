# frozen_string_literal: true

class SessionsController < ApplicationController
  prepend_before_filter :require_no_authentication, :only => [:create ]
  include Devise::Controllers::InternalHelpers
  before_filter :ensure_params_exist

  def create
    build_resource
    resource = User.find_for_database_authentication(:login=>params[:user_login][:login])
    if resource.nil?
      render :json=> {:success=>false, :message=>"Invalid email or pasword"}, :status=>401
    end

    if resource.valid_password?(params[:user_login][:password])
      sign_in("user", resource)
      render :json=> {:success=>true, :auth_token=>resource.authentication_token, :login=>resource.login, :email=>resource.email}
    else
      render :json=> {:success=>false, :message=>"Invalid email or pasword"}, :status=>401
  end
