class Bowling
  def initialize
	@rolls =[] 
	@rollIndex = 0
	@frames = ['frame1','frame2','frame3','frame4','frame5','frame6','frame7','frame8','frame9','frame10']
  end
  
  def roll pins
	@rolls.push pins
  end

  def score
	result = 0

	@frames.each do |frame|
		if isStrike
		    result += 10 + @rolls[@rollIndex + 1]+ @rolls[@rollIndex + 2]
		    @rollIndex+=1
		elsif isSpare
			result += 10 + @rolls[@rollIndex + 2]	
			@rollIndex+=2
		else
			result += @rolls[@rollIndex]+@rolls[@rollIndex+1]
			@rollIndex+=2
		end
		
	end
    return result
  end
  
  def isStrike
  	return @rolls[@rollIndex] == 10 ? true : false
  end
  
  def isSpare
  	return  @rolls[@rollIndex] + @rolls[@rollIndex + 1] == 10 ? true : false
  end
  
end