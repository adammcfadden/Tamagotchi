class Tamagotchi

  #  @@pet_name = ''
  #  @@food_level = 0
  #  @@sleep_level = 0
  #  @@activity_level = 0
  #  @@stinky_level = 0
  #
  # define_singleton_method(:to_global) do
  #   @@pet_name = @pet_name
  #   @@food_level = @food_level
  #   @@sleep_level = @sleep_level
  #   @@activity_level = @activity_level
  #   @@stinky_level = @stinky_level

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

  define_method(:time_passes) do |activity_one|
    @food_level -= 1
    @sleep_level -= 1
    @activity_level -= 1
    self.sick() if stinky_level > 3

    if activity_one = 'play'
      @activity_level += 3
      @sleep_level -= 1
      @food_level -= 1
      @stinky_level += 1
    elsif activity_one = 'feed'
      @food_level += 3
      @sleep_level -= 1
      @activity_level -= 1
    elsif activity_one = 'sleep'
      @sleep_level += 3
      @food_level -= 1
      @activity_level -= 1
      @stinky_level += 1
    elsif activity_one = 'bathtime'
      @stinky_level = 0
    end

    #####put this piece of code into the app.rb file##
    #"You dead" if @sleep_level < 1 || @food_level < 1 || @activity_level < 1
    #####
    @activity_level = 10 if @activity_level > 10
    @sleep_level = 10 if @sleep_level > 10
    @food_level = 10 if @food_level > 10
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

  define_method(:sick) do
    @food_level -= 2
    @sleep_level -= 2
    @activity_level -= 2
  end

end
