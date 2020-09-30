class MembershipsChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'memberships_channel'
  end

  def unsubscribed
    raise NotImplementedError
  end
end
