require 'rspec'

RSpec.describe "Towers of Hanoi" do
  subject(:tower) {Tower.new}
  let(:tower_with2) {Tower.new(2)}


  describe "#initialize" do

    it "should create tower with 2 disks when inputted 2" do
      expect(tower_with2.disks).to eq([2, 1])
    end

    it "should create tower with no disks as default" do
      expect(tower.disks).to eq([])
    end



  end

  describe "pop" do
    it "should top disk from tower" do 
      expect(tower_with2.pop).to eq([2])
    end
  end




end
# tower class
  # initialize
    # can take in disk number
    #default empty disk array
  # stores disks
  # from tower => not empty
  # to => empty or larger





# display class
# game class

  # produces corrct starting layout
  # tells display to render
# player class
 # get input from display
