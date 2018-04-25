require 'rspec'
require 'TDD_methods'
RSpec.describe "TDD_methods" do
  describe "remove_dups" do
    let(:num_array) do
      [1,1,3,4,6,6,3]
    end

    it "removes duplicates" do
      expect(my_uniq(num_array)).to eq(num_array.uniq)
    end

  end

  describe "Array#two_sum" do
    let(:sum_array) {[1, -1, 2, 3, -2, 1]}
    let(:dub_array) {[0, 1, 2]}
    it "outputs the indicies when values added equal to 0" do
      expect(sum_array.two_sum).to eq([[0, 1], [1, 5], [2, 4]])
    end

    it "does not output same indices" do
      expect(dub_array.two_sum).to eq([])
    end

  end

  describe "my_transpose" do
    subject(:transpose_this){
      [
        [0, 1, 2],
        [3, 4, 5],
        [6, 7, 8]
      ]
    }

    it "transposes correctly" do
      expect(my_transpose(transpose_this)).to eq(transpose_this.transpose)
    end

  end

  describe "stock_picker" do
    let(:daily_price) {[10, 10, 10, 5,  5, 5]}
    let(:no_profit) {[10, 10, 10]}
    let(:highest_profit) {[2, 5, 4, 10]}

    it "returns nil if no profit" do
      expect(stock_picker(daily_price)).to eq(nil)
    end

    it "returns highest_profit" do
      expect(stock_picker(highest_profit)).to eq([2,3])
    end

    it "should sell after the buying day" do
      expect(stock_picker(daily_price)).to eq(nil)
    end

  end











end
