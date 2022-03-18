class GymsController < ApplicationController

    def show
        gym = find_gym
        render json: {gym: gym,something_simple: gym.something_simple}, status: :ok
    end

    def destroy
        gym = find_gym
        gym.destroy
        head :no_content
    end

    private
    def find_gym
        Gym.find(params[:id])
    end
end
