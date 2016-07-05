require('rspec')
require('parcel')

describe(Parcel) do
  describe("#volume") do
    it("returns the volume of the box") do
      test_parcel = Parcel.new(2,2,2)
      expect(test_parcel.volume()).to(eq(8))
    end
  end
  describe('#cost_to_ship') do
    it("returns the cost to ship")do
      test_parcel = Parcel.new(2,2,2,"regular", "light", "domestic")
      expect(test_parcel.cost_to_ship()).to(eq(6))
    end
  end
end
