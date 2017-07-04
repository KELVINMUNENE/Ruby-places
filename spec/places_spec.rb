require('rspec')
require('places')

describe(Places) do
  before() do
    Places.clear()
  end
  describe("#description") do
    it "lets you give a description" do
      test_places = Places.new("Hell's Gate,Naivasha")
      expect(test_places.description).to(eq("Hell's Gate,Naivasha"))
    end
  end

  describe(".all")do
    it "is empty at first" do
      expect(Places.all).to(eq([]))
    end
  end

  describe("#save") do
    it "adds a place to the array of saved places" do
      test_places = Places.new("Ruai gardens,Ruai")
      test_places.save()
      expect(Places.all).to(eq([test_places]))
    end
  end

  describe("clear") do
    it "empties out all of the saved places" do
      Places.new("Ruai gardens,Ruai").save()
      Places.clear()
      expect(Places.all).to(eq([]))
    end
  end


end
