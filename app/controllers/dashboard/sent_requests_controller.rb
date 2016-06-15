class Dashboard::SentRequestsController < ApplicationController
  before_action :find_user, only: [:index]
  before_action :find_sent_requests, only: [:index]

  def index

  end

  private

  def find_user
    @user = current_user if current_user
  end

  def find_sent_requests
    @sent_requests = current_user.sent_requests
  end

end

