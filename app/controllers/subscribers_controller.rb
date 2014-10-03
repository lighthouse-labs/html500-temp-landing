class SubscribersController < ApplicationController
  
  def index
    
  end

  def new
    @subscriber = Subscriber.new
  end

  def create
    @subscriber = Subscriber.new(subscriber_params)

    if @subscriber.save
      redirect_to subscribers_path
    else
      render :new
    end
  end


  protected

  def subscriber_params
    params.require(:subscriber).permit(
      :email
    )
  end
end
