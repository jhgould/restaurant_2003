# restaurant class


class Restaurant
  attr_reader :opening_time, :name


  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []

  end

  def dishes
    @dishes
  end

  def closing_time(closing_time)
    @opening_time = opening_time.to_i
    closing = @opening_time + closing_time
    closing = "#{closing}:00"
  end

  def add_dish(dish)
    @dishes << dish
  end

  def open_for_lunch?
    if @opening_time.to_i < 12
      true
    else
      false
    end
  end
  require 'pry'; binding.pry

  def cap_dishes
    cap_dishes_array = []
    @dishes.each do |dish|
      cap_dishes_array << dish.upcase
    end
  end

end
