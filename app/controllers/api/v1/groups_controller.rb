class Api::V1::GroupsController < ApplicationController

    def index
        groups = Group.all 
        render json: groups 
    end

    def create
        group = Group.new(group_params)
        if group.valid?
            group.save
            render json: {group: group}, status: :created
        else
            render json: {error: "not accepted"}, status: :not_acceptable
        end
    end

    private

    def group_params
        params.require(:group).permit!
    end

end
