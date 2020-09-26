class Api::V1::MembershipsController < ApplicationController

    def index
        memberships = Membership.all 
        render json: memberships 
    end

    def create
        membership = Membership.new(membership_params)
        if membership.valid?
            membership.save
            render json: {membership: membership}, status: :created
        else
            render json: {error: "not accepted"}, status: :not_acceptable
        end
    end

    private

    def membership_params
        params.require(:membership).permit!
    end

end