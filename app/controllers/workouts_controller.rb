class WorkoutsController < ApplicationController
    before_action: authorize!

    def index 
        @workouts = Workout.all 
        render json: @workouts, status: :ok
    end 

    def show
        @workout = Workout.find(params[:id])
        render json: @workout, status: :ok
    end 

    def create
        @workout = Workout.create(workout_params)
        if @workout
            render json: @workout, status: :ok
        else
            render json: {errors: @workout.errors.full_messages},
            status: :unprocessable_entity
        end
    end 

    def update
        @workout = Workout.find(params[:id])
        @workout.update(workout_params)
    end 

    def destroy
        @workout = Workout.find(params[:id])
        @workout.destroy
    end 

    private 

    def workout_params
        params.permit(:name, :user_id)
    end 

end
