class ExercisesController < ApplicationController
    def index
        @exercises = Exercise.all
        render json: @exercises, status: :ok
      end
    
      def create
        @exercise = Exercise.create(exercise_params)
        if @exercise
            render json: @exercise, status: :ok
        else
            render json: {errors: @exercise.errors.full_messages},
            status: :unprocessable_entity
      end

      def update
        @exercise = Exercise.find(params[:id])
        @exercise.update(exercise_params)
      end 

      def destroy 
        @exercise = Exercise.find(params[:id])
        @exercise.destroy
      end 

      private
    
      def exercise_params
        params.permit(:name)
      end
end
