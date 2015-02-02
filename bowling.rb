class Bowling
  def initialize
	@rolls =[] 
	@frames = ['frame1','frame2','frame3','frame4','frame5','frame6','frame7','frame8','frame9','frame10']
  end
  
  def roll pins
	@rolls.push pins
  end

  def score
	result = 0
	rollIndex = 0
	@frames.each do |frame|
		if @rolls[rollIndex] == 10
		    result += 10 + @rolls[rollIndex + 1]+ @rolls[rollIndex + 2]
		    rollIndex+=1
		elsif @rolls[rollIndex] + @rolls[rollIndex + 1] == 10
			result += 10 + @rolls[rollIndex + 2]	
			rollIndex+=2
		else
			result += @rolls[rollIndex]+@rolls[rollIndex+1]
			rollIndex+=2
		end
		
	end
    return result
  end
  
end