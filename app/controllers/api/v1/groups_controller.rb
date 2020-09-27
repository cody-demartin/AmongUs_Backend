class Api::V1::GroupsController < ApplicationController

    def index
        groups = Group.all 
        render json: groups 
    end

    def create
        group = Group.new(group_params)
        if group.valid?
            group.save
            # render json: {group: group}, status: :created
            serialized_data = ActiveModelSerializers::Adapter::Json.new(
                GroupSerializer.new(group)
            ).serializable_hash
            ActionCable.server.broadcast 'groups_channel', serialized_data
            head :ok
        else
            render json: {error: "not accepted"}, status: :not_acceptable
        end
    end

    private

    def group_params
        params.require(:group).permit!
    end

end
