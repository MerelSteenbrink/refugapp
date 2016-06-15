class Dashboard::ReceivedRequestsController < ApplicationController
  before_action :find_user, only: [:index]
  before_action :find_received_requests, only: [:index]

  def index

  end

  def accept
    @request = Request.find(params[:id])
    @request.update(status: "accepted")

    redirect_to dashboard_root_path
  end

  def refuse
    @request = Request.find(params[:id])
    @request.update(status: "declined")

    redirect_to dashboard_root_path
  end

  private

  def find_user
    @user = current_user if current_user
  end

  def find_received_requests
    @received_requests = current_user.received_requests
  end
end
