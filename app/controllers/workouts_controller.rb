class WorkoutsController < ApplicationController
    
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
        params.permit(:workout_name, :exercise_name, :sets, :reps, :weight, 
        :user_name, :user_id, :description, :exercise_name2, :sets2, :reps2, :weight2,
        :exercise_name3, :sets3, :reps3, :weight3)
    end 

end
