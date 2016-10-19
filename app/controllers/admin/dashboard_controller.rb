class Admin::DashboardController < ApplicationController
  @admin_name = ENV['ADMIN_NAME']
  @admin_password = ENV['ADMIN_PASSWORD']
  http_basic_authenticate_with name: 'Jungle', password: 'book'
  before_filter :authorize
  def show
  end
end
