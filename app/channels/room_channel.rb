class RoomChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    stream_from "room_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def channel_select(data)
    stream_from "room_channel_#{data['select']}"
  end

  def speak(data)
    #コメントする
    # ActionCable.server.broadcast 'room_channel', {message: data['message'], target_id: data['target_id'], user_id: data['user_id']}
    #追加する
    Chat.create! contents: data['message'], target_id: data['target_id'], user_id: data['user_id']
  end
end
