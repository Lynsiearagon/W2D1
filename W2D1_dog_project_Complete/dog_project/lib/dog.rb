class Dog

    attr_reader :name, :breed, :favorite_foods
    attr_accessor :age

    def initialize(name, breed, age, bark, favorite_foods)
        @name = name
        @breed = breed
        @age = age
        @bark = bark
        @favorite_foods = favorite_foods
    end

    def bark
        if self.age > 3
            return @bark.upcase
        else
            return @bark.downcase
        end
    end

    def favorite_food?(item)
        @favorite_foods.any? { |food| food.upcase == item.upcase }
    end

end
