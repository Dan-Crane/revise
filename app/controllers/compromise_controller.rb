# frozen_string_literal: true

class CompromiseController < ApplicationController
  def search
    if params[:email].blank?
      redirect_to(root_path, alert: 'Empty field!') && return
    else
      @parameter = params[:email].downcase
      @results = Compromise.all.where('lower(email) LIKE :email', email: @parameter)
    end
  end
end
