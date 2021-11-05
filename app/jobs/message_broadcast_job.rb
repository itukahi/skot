class MessageBroadcastJob < ApplicationJob
  queue_as :default

  def perform(message)
    ActionCable.server.broadcast "room_channel_#{message.target_id}", message: 
    render_message(message), user: message.user_id
  end

  private

  def render_message(message)
    ApplicationController.renderer.render(partial: 'rooms/message', locals: { message: message })
  end
end
