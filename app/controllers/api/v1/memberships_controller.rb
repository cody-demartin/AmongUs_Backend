class Api::V1::MembershipsController < ApplicationController

    def index
        memberships = Membership.all 
        render json: memberships 
    end

    def create
        membership = Membership.new(membership_params)
        group = Group.find(membership_params[:group_id])
        if membership.valid?
            membership.save
            serialized_data = ActiveModelSerializers::Adapter::Json.new(
                MembershipSerializer.new(membership)
            ).serializable_hash
            MembershipsChannel.broadcast_to group, serialized_data
            head :ok
        else
            render json: {error: "not accepted"}, status: :not_acceptable
        end
    end

    private

    def membership_params
        params.require(:membership).permit!
    end

end