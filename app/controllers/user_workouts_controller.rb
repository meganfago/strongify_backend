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
    
    def myworkouts 
        #binding.pry
        @user = User.find_by(id: userworkout_params['user_id']) 
        @workouts = @user.workouts
        @user_workouts = @user.user_workouts 
        render json: {user_workouts: @user_workouts, workouts: @workouts} , status: :ok
      end  

    private 

    def userworkout_params 
        params.permit(:workout_id, :user_id, :user_sets, 
            :user_reps, :user_weight,
            :user_sets2, :user_reps2, 
            :user_weight2,:user_sets3, 
            :user_reps3, :user_weight3,
            :description, :workout_name, 
            :exercise_name, :exercise_name2, :exercise_name3)
    end
end
