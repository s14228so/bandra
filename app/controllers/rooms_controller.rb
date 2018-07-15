class RoomsController < ApplicationController
  
 def show
    @messages = Message.all.order(created_at: :desc).limit(10)
  end
end
