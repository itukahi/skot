class RoomsController < ApplicationController
  def index
    @targets = Target.all
  end

  def show
    @target_id = params[:target_id]
    @chats = Chat.where(target_id: params[:target_id])
  end
end
