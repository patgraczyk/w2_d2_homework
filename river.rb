class River

attr_reader :name, :stock

def initialize (name)
  @name = name
  @stock = []
end

def put_fish_in_river(fish)
  @stock.push(fish)
end



end
