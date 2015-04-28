require 'sinatra'
# require 'sinatra/reloader'
require './lib/tamagotchi'
# also_reload './lib/**/*.rb'

get ('/') do
  erb (:index)
end

get('/tamagotchi') do
  @new_pet = Tamagotchi.new(params.fetch("pet_name"))
  @pet_name = @new_pet.name()
  @food_level = @new_pet.food_level()
  @sleep_level = @new_pet.sleep_level()
  @activity_level = @new_pet.activity_level()
  @stinky_level = @new_pet.stinky_level()
  erb(:tamagotchi)
end

post('/activity') do
  @activity1 = params.fetch('activity_selector')
  @new_pet = Tamagotchi.new(@pet_name)
  @new_pet = @new_pet.time_passes(@activity1)
  @food_level = @new_pet.food_level()
  @sleep_level = @new_pet.sleep_level()
  @activity_level = @new_pet.activity_level()
  @stinky_level = @new_pet.stinky_level()
  erb(:activity)
end
