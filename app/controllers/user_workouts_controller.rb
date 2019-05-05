class UserWorkoutsController < ApplicationController
    def index
        @user_workouts = UserWorkout.all 
        render json: @user_workouts, status: :ok
    end 

    def show
        @user_workout = UserWorkout.find(params[:id])
        render json: @user_workout, status: :ok
    end 

    def create
        @user_workout = UserWorkout.create(userworkout_params)
        if @user_workout
            render json: @user_workout, status: :ok
        else
            render json: {errors: @user_workout.errors.full_messages},
            status: :unprocessable_entity
        end 
    end 

    def update 
        @user_workout = UserWorkout.find(params[:id])
        @user_workout.update(userworkout_params)
    end 

    def destroy
        @user_workout = UserWorkout.find(params[:id])
        @user_workout.destroy
    end 

    private 

    def userworkout_params 
        params.permit(:workout_id, :user_id, :user_sets, :user_reps, :user_weight)
    end
end
