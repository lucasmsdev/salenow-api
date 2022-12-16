class StatusController < ApplicationController
  def index
    render json: {
      app_name: "E-rural",
      version: 0.1,
      server: :ok
    }
  end
end