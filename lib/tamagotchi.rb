class Tamagotchi
  @@my_pet = []
  @@food_level = 10
  @@sleep_level = 10
  @@activity_level = 10

  define_method(:initialize) do |pet_name|
    @pet_name = pet_name
  end

  define_method(:name) do
    @pet_name
  end

  define_method(:food_level) do
    @@food_level
  end

  define_method(:sleep_level) do
    @@sleep_level
  end

  define_method(:activity_level) do
    @@activity_level
  end

  define_method(:time_passes) do
    @@food_level -= 1
  end
end
