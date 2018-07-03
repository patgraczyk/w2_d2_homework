class River

attr_reader :name, :stock

def initialize (name)
  @name = name
  @stock = []
end

def put_fish_in_river(fish)
  @stock.push(fish)
end

def take_fish_from_river(fish)
  @stock.delete(fish)
end

def count_of_fish()
  @stock.push()
end

end
