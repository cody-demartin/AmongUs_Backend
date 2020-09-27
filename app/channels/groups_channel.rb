class GroupsChannel < ApplicationCable::Channel
  
  def subscribed
    stream_from "groups_channel"
  end

  def unsubscribed
    raise NotImplementedError
  end

end
