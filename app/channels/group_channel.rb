class GroupChannel < ApplicationCable::Channel
  def subscribed
    
    stream_from "group_channel"
    GroupChannel.all_members
    GroupChannel.all_memberships
  end

  def unsubscribed
    raise NotImplementedError
  end

  def self.all_members(members)
    ActionCable.server.broadcast('group_channel', members: members)
  end

  def self.all_memberships(memberships)
    ActionCable.server.broadcast('group_channel', memberships: memberships)
  end
end
