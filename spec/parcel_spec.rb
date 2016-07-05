require('rspec')
require('parcel')

describe(Parcel) do
  describe("#volume") do
    it("returns the volume of the box") do
      test_parcel = Parcel.new(2,2,2,2)
      expect(test_parcel.volume()).to(eq(8))
    end
  end
end
