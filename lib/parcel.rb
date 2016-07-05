class Parcel
  define_method(:initialize) do |length, width, height, speed, weight, distance|
    @length = length
    @width = width
    @height = height
    @speed = speed
    @weight = weight
    @distance = distance
  end

  define_method(:volume) do
    volume = @length*@width*@height
    @volume = volume
  end

  define_method(:cost_to_ship) do
    price = 0
    if @speed == "regular"
      price +=1
    else
      price +=2
    end
    if @weight == "light"
      price +=1
    else
      price +=2
    end
    if @distance == "domestic"
      price +=1
    else
      price +=2
    end
    if self.volume()<=10
      price +=3
    else
      price +=5
    end
    price
  end
end
