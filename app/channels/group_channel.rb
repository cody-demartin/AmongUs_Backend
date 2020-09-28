class GroupChannel < ApplicationCable::Channel
  def subscribed
    group = Group.find(params[:group])
    stream_for group
    # stream_from "group_channel"
  end

  def unsubscribed
    raise NotImplementedError
  end
end
