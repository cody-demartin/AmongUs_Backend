class DeleteChannel < ApplicationCable::Channel
  def subscribed
      stream_from "delete_channel"
      DeleteChannel.all
  end

  def unsubscribed
    raise NotImplementedError
  end
end
