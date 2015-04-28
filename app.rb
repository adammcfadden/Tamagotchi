require 'sinatra'
require 'sinatra/reloader'
require './lib/tamagotchi'
require 'pry'
also_reload './lib/**/*.rb'

get ('/') do
  erb (:index)
end

get ('/tamagotchi') do
  $new_pet = Tamagotchi.new(params.fetch("pet_name"))
  @pet_name = $new_pet.name()
  @food_level = $new_pet.food_level()
  @sleep_level = $new_pet.sleep_level()
  @activity_level = $new_pet.activity_level()
  @stinky_level = $new_pet.stinky_level()
  @alive_or_dead = ''
  if $new_pet.is_alive?()
    @alive_or_dead = 'Alive'
  else
    @alive_or_dead = 'Dead'
  end

  erb(:tamagotchi)
end

post ('/activity') do
  #$new_pet = Tamagotchi.new('tom')
  @activity1 = params.fetch('activity_selector1')
  $new_pet.time_passes(@activity1)
  @pet_name = $new_pet.name()
  @food_level = $new_pet.food_level()
  @sleep_level = $new_pet.sleep_level()
  @activity_level = $new_pet.activity_level()
  @stinky_level = $new_pet.stinky_level()
  @alive_or_dead = ''
  if $new_pet.is_alive?()
    @alive_or_dead = 'Alive'
  else
    @alive_or_dead = 'Dead'
  end

  erb(:activity)
end

get ('/tamagotchi1') do
  @activity1 = params.fetch('activity_selector1')
  $new_pet.time_passes(@activity1)
  @pet_name = $new_pet.name()
  @food_level = $new_pet.food_level()
  @sleep_level = $new_pet.sleep_level()
  @activity_level = $new_pet.activity_level()
  @stinky_level = $new_pet.stinky_level()
  @alive_or_dead = ''
  if $new_pet.is_alive?()
    @alive_or_dead = 'Alive'
  else
    @alive_or_dead = 'Dead'
  end
  erb(:tamagotchi1)
end


# tam = Tamagotchi.all().at(0)
#
# @@tamagotchis
