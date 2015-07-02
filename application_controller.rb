require 'bundler'
Bundler.require
require './models/person.rb'
require './models/exercise.rb'

class MyApp < Sinatra::Base
  get '/' do
    erb :index
  end
  
  get '/information' do
    erb :information
  end
  
  post '/exercise' do
    
    @age = params[:age]
    @gender = params[:gender]
    @type = params[:type]
    
    @teen_female_fat = [Exercise.new("Zumba", "45 mins"),
      Exercise.new("Pull-ups", "15"),
      Exercise.new("Tricep Dips", "10"),
      Exercise.new("Plank", "40 seconds"),
      Exercise.new("Mountainclimbers", "60 seconds"),
      Exercise.new("Speed-Skaters", "45"),
      Exercise.new("Jump-Rope", "3 mins"),
      Exercise.new("High-knees", "20"),
      Exercise.new("Sprinting", "20 mins"),
      Exercise.new("Marching Glute Bridge", "2 secs 10 reps"),
      Exercise.new("Swimming", "45 mins")]
  
  @teen_female_muscle = [Exercise.new("Squats", "30"),
    Exercise.new("Dumbells Shoulder Press", "2 reps of 5 mins"),
    Exercise.new("Pull-ups", "12"),
    Exercise.new("Seated Leg Curls", "30"),
    Exercise.new("Hip Thrusts", "24"),
    Exercise.new("Seated Calf Raise", "40"),
    Exercise.new("Skull Crusher", "32"),
    Exercise.new("Dumbell Bicep Curl", "32"),
    Exercise.new("Side Lateral Raise", "30"),
     Exercise.new("Ab Twists", "30"),
     Exercise.new("Yoga", "60 mins"),
    Exercise.new("Swimming", "60 mins"),
    Exercise.new("Sprinting", "15 mins"),
    Exercise.new("Cycling", "30 mins"),
    Exercise.new("Rowing", "20 mins")]
  
  @teen_male_fat = [Exercise.new("Pull-ups", "20"),
      Exercise.new("Tricep Dips", "20"),
    Exercise.new("Spiderman Plank", "55 seconds"),
      Exercise.new("Mountainclimbers", "90 seconds"),
      Exercise.new("Speed-Skaters", "60"),
      Exercise.new("Jump-Rope", "5 mins"),
      Exercise.new("High-knees", "35"),
      Exercise.new("Sprinting", "20 mins"),
      Exercise.new("Marching Glute Bridge", "5 secs 10 reps"),
      Exercise.new("Swimming", "60 mins"),
    Exercise.new("Soccer","2 hours")]
  
  @teen_male_muscle = [Exercise.new("Squats", "50"),
    Exercise.new("Dumbells Shoulder Press", "2 reps of 10 mins"),
    Exercise.new("Pull-ups", "20"),
    Exercise.new("Seated Leg Curls", "55"),
    Exercise.new("Seated Calf Raise", "55"),
    Exercise.new("Skull Crusher", "40"),
    Exercise.new("Dumbell Bicep Curl(Larger Weight)", "35"),
    Exercise.new("Side Lateral Raise", "40"),
     Exercise.new("Ab Twists", "50"),
    Exercise.new("Swimming", "60 mins"),
    Exercise.new("Sprinting", "30 mins"),
    Exercise.new("Cycling", "30 mins"),
    Exercise.new("Rowing", "20 mins")]
    
    @adult_female_fat = [Exercise.new("Zumba", "60 mins"),
      Exercise.new("Pull-ups", "25"),
      Exercise.new("Tricep Dips", "30"),
      Exercise.new("Plank", "45 seconds"),
      Exercise.new("Mountainclimbers", "60 seconds"),
      Exercise.new("Speed-Skaters", "45"),
      Exercise.new("Jump-Rope", "3 mins"),
      Exercise.new("High-knees", "20"),
      Exercise.new("Sprinting", "20 mins"),
      Exercise.new("Marching Glute Bridge", "2 secs 10 reps"),
      Exercise.new("Inverted Shoulder-Press", "25")]
    
    @adult_female_muscle = [Exercise.new("Squats", "35"),
    Exercise.new("Dumbells Shoulder Press", "3 reps of 5 mins"),
    Exercise.new("Pull-ups", "15"),
    Exercise.new("Seated Leg Curls", "35"),
    Exercise.new("Hip Thrusts", "30"),
    Exercise.new("Seated Calf Raise", "45"),
    Exercise.new("Skull Crusher", "48"),
    Exercise.new("Dumbell Bicep Curl", "48"),
    Exercise.new("Side Lateral Raise", "35"),
     Exercise.new("Ab Twists", "35"),
     Exercise.new("Yoga", "90 mins"),
    Exercise.new("Swimming", "90 mins"),
    Exercise.new("Sprinting", "25 mins"),
    Exercise.new("Cycling", "60 mins"),
    Exercise.new("Rowing", "40 mins")]
    
    @adult_male_fat = [Exercise.new("Pull-ups", "20"),
      Exercise.new("Tricep Dips", "20"),
      Exercise.new("Spiderman Plank", "55 seconds"),
      Exercise.new("Mountainclimbers", "90 seconds"),
      Exercise.new("Speed-Skaters", "60"),
      Exercise.new("Jump-Rope", "5 mins"),
      Exercise.new("High-knees", "35"),
      Exercise.new("Benchpress", "6 lifts"),
      Exercise.new("Sprinting", "20 mins"),
      Exercise.new("Marching Glute Bridge", "5 secs 10 reps"),
      Exercise.new("Swimming", "60 mins"),
      Exercise.new("Soccer","2 hours")]
      
    @adult_male_muscle = [Exercise.new("Squats", "55"),
    Exercise.new("Dumbells Shoulder Press", "3 reps of 10 mins"),
    Exercise.new("Pull-ups", "25"),
    Exercise.new("Seated Leg Curls", "60"),
    Exercise.new("Seated Calf Raise", "60"),
    Exercise.new("Skull Crusher", "45"),
    Exercise.new("Dumbell Bicep Curl(Larger Weight)", "55"),
    Exercise.new("Side Lateral Raise", "45"),
     Exercise.new("Ab Twists", "55"),
    Exercise.new("Swimming", "90 mins"),
    Exercise.new("Sprinting", "60 mins"),
    Exercise.new("Cycling", "60 mins"),
    Exercise.new("Rowing", "40 mins")]
    
    @middleage_female_fat = [Exercise.new("Zumba", "60 mins"),
      Exercise.new("Push-ups", "15"),
      Exercise.new("Inverted Push-ups", "15"),
      Exercise.new("Plank", "35 seconds"),
      Exercise.new("Mountainclimbers", "60 seconds"),
      Exercise.new("Speed-Skaters", "40"),
      Exercise.new("Jump-Rope", "2 mins"),
      Exercise.new("High-knees", "20"),
      Exercise.new("Walking", "30 mins"),
      Exercise.new("Squats", "2 secs 10 reps"),
      Exercise.new("Pilates", "30 mins")]
    
    @middleage_female_muscle = [Exercise.new("Yoga", "30 mins"),
      Exercise.new("Kick Boxing", "30 minutes"),
      Exercise.new("Pilates", "55 minutes"),
      Exercise.new("Aerobics", "60 minutes"),
      Exercise.new("Jazzercise", "60 minutes"),
      Exercise.new("Spinning", "30 mins"),
      Exercise.new("Tennis", "30 mins"),
      Exercise.new("Swimming", "30 mins")]
    
    @middleage_male_fat = [Exercise.new("Pull-ups", "20"),
      Exercise.new("Tricep Dips", "20"),
      Exercise.new("Spiderman Plank", "55 seconds"),
      Exercise.new("Mountainclimbers", "90 seconds"),
      Exercise.new("Speed-Skaters", "60"),
      Exercise.new("Jump-Rope", "3 mins"),
      Exercise.new("High-knees", "35"),
      Exercise.new("Benchpress", "3 lifts"),
      Exercise.new("Tennis", "30 mins"),
      Exercise.new("Marching Glute Bridge", "5 secs 10 reps"),
      Exercise.new("Swimming", "45 mins"),
      Exercise.new("Golfing","2 hours")]
    
    @middleage_male_muscle = [Exercise.new("Squats", "55"),
    Exercise.new("Dumbells Shoulder Press", "3 reps of 10 mins"),
    Exercise.new("Pull-ups", "25"),
    Exercise.new("Seated Leg Curls", "60"),
    Exercise.new("Seated Calf Raise", "60"),
    Exercise.new("Skull Crusher", "45"),
    Exercise.new("Dumbell Bicep Curl(Larger Weight)", "55"),
    Exercise.new("Side Lateral Raise", "45"),
     Exercise.new("Ab Twists", "55"),
    Exercise.new("Swimming", "90 mins"),
    Exercise.new("Cycling", "60 mins")]
    

    if @age.to_i >= 13 && @age.to_i <= 19 && @gender == "female" && @type == "fat"
      @exercises = @teen_female_fat 
    elsif @age.to_i >= 13 && @age.to_i <= 19 && @gender == "male" && @type == "fat"
      @exercises = @teen_male_fat 
    elsif @age.to_i >= 13 && @age.to_i <= 19 && @gender == "female" && @type == "muscle"
      @exercises = @teen_female_muscle 
    elsif @age.to_i >= 13 && @age.to_i <= 19 && @gender == "male" && @type == "muscle"
      @exercises = @teen_male_muscle 
      elsif @age.to_i >= 20 && @age.to_i <= 39 && @gender == "female" && @type == "fat"
      @exercises = @adult_female_fat 
    elsif @age.to_i >= 20 && @age.to_i <= 39 && @gender == "male" && @type == "fat"
      @exercises = @adult_male_fat 
    elsif @age.to_i >= 20 && @age.to_i <= 39 && @gender == "female" && @type == "muscle"
      @exercises = @adult_female_muscle 
    elsif @age.to_i >= 20 && @age.to_i <= 39 && @gender == "male" && @type == "muscle"
      @exercises = @adult_male_muscle 
    elsif @age.to_i >= 40 && @gender == "female" && @type == "fat"
      @exercises = @middleage_female_fat 
    elsif @age.to_i >= 40 && @gender == "male" && @type == "fat"
      @exercises = @middleage_male_fat 
    elsif @age.to_i >= 40 && @gender == "female" && @type == "muscle"
      @exercises = @middleage_female_muscle 
    elsif @age.to_i >= 20 && @gender == "male" && @type == "muscle"
      @exercises = @middleage_male_muscle
    else
      @exercises = []
    end
    erb :exercise
  end
  
  
  
    #create your instance of Male or Female clas based on input from user (stored in the params hash)
#     @male = Male.new()
    #create the arrays of the categories of exercises - inside those arrays create each individual exercise
    
    
#     if @male.muscle_group == "legs"
#       @teen_male_muscle_legs
#       elsif 
    
    
#     erb :results_fat
#   end 
  
end