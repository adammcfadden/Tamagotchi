require 'rspec'
require 'tamagotchi'

describe(Tamagotchi) do
  describe("#initialize") do
    it("sets the name and life levels of a new Tamagotchi") do
      my_pet = Tamagotchi.new("lil dragon")
      expect(my_pet.name()).to(eq("lil dragon"))
      expect(my_pet.food_level()).to(eq(10))
      expect(my_pet.sleep_level()).to(eq(10))
      expect(my_pet.activity_level()).to(eq(10))
      expect(my_pet.stinky_level()).to(eq(0))
    end
  end
  describe("#time_passes") do
    it("decreases the amount of food the Tamagotchi has left by 1") do
      my_pet = Tamagotchi.new("lil dragon")
      my_pet.time_passes()
      expect(my_pet.food_level()).to(eq(9))
    end
  end
  describe("#is_alive?") do
    it("return true if the food level is above zero") do
      my_pet = Tamagotchi.new("lil dragon")
      expect(my_pet.is_alive?()).to(eq(true))
    end

    it("is dead if the food level is 0") do
      my_pet = Tamagotchi.new('lil dragon')
      my_pet.set_food_level(0)
      expect(my_pet.is_alive?()).to(eq(false))
    end
  end

  describe("#play") do
    it('increases activity by 3') do
      my_pet = Tamagotchi.new("lil dragon")
      my_pet.set_activity_level(5)
      my_pet.play()
      expect(my_pet.activity_level()).to(eq(8))
    end

    it('decreases sleep by 1') do
      my_pet = Tamagotchi.new('lil dragon')
      my_pet.play()
      expect(my_pet.sleep_level()).to(eq(9))
    end

    it('decreases food by 1') do
      my_pet = Tamagotchi.new('lil dragon')
      my_pet.play()
      expect(my_pet.food_level()).to(eq(9))
    end
  end

  describe("#feed") do
    it('increases food by 3') do
      my_pet = Tamagotchi.new("lil dragon")
      my_pet.set_food_level(5)
      my_pet.feed()
      expect(my_pet.food_level()).to(eq(8))
    end

    it('decreases sleep by 1') do
      my_pet = Tamagotchi.new('lil dragon')
      my_pet.feed()
      expect(my_pet.sleep_level()).to(eq(9))
    end

    it('decreases activity by 1') do
      my_pet = Tamagotchi.new('lil dragon')
      my_pet.feed()
      expect(my_pet.activity_level()).to(eq(9))
    end
  end

  describe("#sleep") do
    it('increases sleep by 3') do
      my_pet = Tamagotchi.new("lil dragon")
      my_pet.set_sleep_level(5)
      my_pet.sleep()
      expect(my_pet.sleep_level()).to(eq(8))
    end

    it('decreases food by 1') do
      my_pet = Tamagotchi.new('lil dragon')
      my_pet.sleep()
      expect(my_pet.food_level()).to(eq(9))
    end

    it('decreases activity by 1') do
      my_pet = Tamagotchi.new('lil dragon')
      my_pet.sleep()
      expect(my_pet.activity_level()).to(eq(9))
    end
  end

  describe("#sick") do
    it('impacts all stats by -2') do
      my_pet = Tamagotchi.new("lil dragon")
      my_pet.sick()
      expect(my_pet.activity_level()).to(eq(8))
    end
  end

end
