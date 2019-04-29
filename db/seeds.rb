# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Workout.destroy_all
Exercise.destroy_all
WorkoutExercise.destroy_all
User.destroy_all

User.create(name: "Megan", username: "meganfago", email: "meganfago@strongify.com")

upper_body_a = Workout.create(name: "Upper Body A", user_id: 1)
upper_body_b = Workout.create(name: "Upper Body B", user_id: 1)
leg_day = Workout.create(name: "Leg Day", user_id: 1)

bench_press = Exercise.create(name: "Bench Press")
curls = Exercise.create(name: "Curls")
deadlifts = Exercise.create(name: "Deadlifts")
low_bar_squats = Exercise.create(name: "Low-bar Squats")
prone_leg_curls = Exercise.create(name: "Prone Leg Curls")

WorkoutExercise.create(workout_id: upper_body_a.id, exercise_id: bench_press.id, sets: 4, reps: 12, weight: "100 lbs")
WorkoutExercise.create(workout_id: upper_body_b.id, exercise_id: curls.id, sets: 3, reps: 25, weight: "30 lbs")
WorkoutExercise.create(workout_id: leg_day.id, exercise_id: deadlifts.id, sets: 5, reps: 8, weight: "95 lbs")
WorkoutExercise.create(workout_id: leg_day.id, exercise_id: low_bar_squats.id, sets: 3, reps: 8, weight: "110 lbs")
WorkoutExercise.create(workout_id: leg_day.id, exercise_id: prone_leg_curls.id, sets: 3, reps: 10, weight: "80 lbs")