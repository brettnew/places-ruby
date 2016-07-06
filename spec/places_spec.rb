require('rspec')
require('places')

describe(Place) do
  describe("#name") do
    it("lets you give a name of place you've been") do
      test_place = Place.new("Niagara Falls")
      expect(test_place.name()).to(eq("Niagara Falls"))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Place.all()).to(eq([]))
    end
  end

  
end
