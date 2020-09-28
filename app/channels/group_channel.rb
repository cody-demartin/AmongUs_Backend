class GroupChannel < ApplicationCable::Channel
  def subscribed
    # group = Group.find(params[:id])
    # stream_for group
    stream_from "group_channel"
    GroupChannel.all_members
  end

  def unsubscribed
    raise NotImplementedError
  end

  def self.all_members(members)
    ActionCable.server.broadcast('group_channel', members: members)
  end
end
