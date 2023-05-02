class Admin::DashboardController < ApplicationController
  before_action :authenticate_user! TODO – reinstate
  before_action :set_flashes

  def index
  end
end
