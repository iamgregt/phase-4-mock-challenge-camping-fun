class SignupsController < ApplicationController

    def index
        render json: Signup.all
    end

    def show
        signup = Signup.find_by(id:params[:id])
        render json: signup
    end

    def create
        signup = Signup.create(signup_params)
        render json: signup, methods: [:summary]
    end


    private

    def summary
        "name :#{activity.name}"
    end

    def signup_params
        params.permit(:time, :camper_id, :activity_id)
    end

end
