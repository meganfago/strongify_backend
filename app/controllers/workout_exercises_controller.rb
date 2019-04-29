class WorkoutExercisesController < ApplicationController

    def index
        @workout_exercises = WorkoutExercise.all 
        render json: @workout_exercises, status: :ok
    end 

    def show
        @workout_exercise = WorkoutExercise.find(params[:id])
        rneder json: @workout_exercise, status: :ok
    end 

    def create
        @workout_exercise = WorkoutExercise.create(workoutexercise_params)
        if @workout_exercise
            render json: @workout_exercise, status: :ok
        else
            render json: {errors: @workout_exercise.errors.full_messages},
            status: :unprocessable_entity
        end 
    end 

    def update 
        @workout_exercise = WorkoutExercise.find(params[:id])
        @workout_exercise.update(workoutexercise_params)
    end 

    def destroy
        @workout_exercise = WorkoutExercise.find(params[:id])
        @workout_exercise.destroy
    end 

    private 

    def workoutexercise_params 
        params.permit(:workout_id, :exercise_id, :sets, :reps, :weight)
    end
end
