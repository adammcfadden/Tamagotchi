class Tamagotchi

  define_method(:initialize) do |pet_name|
    @pet_name = pet_name
    @food_level = 10
    @sleep_level = 10
    @activity_level = 10
    @stinky_level = 0
  end

  define_method(:name) do
    @pet_name
  end

  define_method(:food_level) do
    @food_level
  end

  define_method(:sleep_level) do
    @sleep_level
  end

  define_method(:activity_level) do
    @activity_level
  end

  define_method(:stinky_level) do
    @stinky_level
  end

  define_method(:time_passes) do
    @food_level -= 1
    @sleep_level -= 1
    @activity_level -= 1
    self.sick() if stinky_level > 3
  end

  define_method(:is_alive?) do
    @food_level > 0
  end

  define_method(:set_food_level) do |food_level|
    @food_level = food_level
  end

  define_method(:set_activity_level) do |activity_level|
    @activity_level = activity_level
  end

  define_method(:set_sleep_level) do |sleep_level|
    @sleep_level = sleep_level
  end

  define_method(:set_stinky_level) do |stinky_level|
    @stinky_level = stinky_level
  end

  define_method(:play) do
    @activity_level += 3
    @sleep_level -= 1
    @food_level -= 1
    @stinky_level += 1
  end

  define_method(:feed) do
    @food_level += 3
    @sleep_level -= 1
    @activity_level -= 1
  end

  define_method(:sleep) do
    @sleep_level += 3
    @food_level -= 1
    @activity_level -= 1
    @stinky_level += 1
  end

  define_method(:sick) do
    @food_level -= 2
    @sleep_level -= 2
    @activity_level -= 2
  end

  define_method(:bathtime) do
    @stinky_level = 0
  end

end
