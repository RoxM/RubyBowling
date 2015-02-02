require_relative '../bowling'

describe Bowling, "#score" do 
before do
  @bowling = Bowling.new
end

 it "returns 0 for all gutter game" do
    20.times { @bowling.roll(0) }
    expect(@bowling.score).to eq(0)
  end
  
 it "returns 20 for all 1" do
    20.times { @bowling.roll(1) }
    expect(@bowling.score).to eq(20)
  end
   it "returns 40 for all 2" do
    20.times { @bowling.roll(2) }
    expect(@bowling.score).to eq(40)
  end
  
  it "can roll a spare" do
    2.times { @bowling.roll(5) }
	@bowling.roll(3)
	17.times { @bowling.roll(0) }
    expect(@bowling.score).to eq(16)
  end
  
  it "return 150 for all spares" do
    21.times { @bowling.roll(5) }
    expect(@bowling.score).to eq(150)
  end
  
  it "can roll a strike" do
    @bowling.roll(10)
	2.times { @bowling.roll(1) }
	16.times { @bowling.roll(0) }
    expect(@bowling.score).to eq(14)
  end
  
  it "return 300 for a perfect game" do
	12.times { @bowling.roll(10) }
	expect(@bowling.score).to eq(300)
  end

end