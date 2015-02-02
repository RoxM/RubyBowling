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
	@frames.each do
		result += calculateScore
		
		if isStrike
		    @rollIndex+=1
		elsif isSpare	
			@rollIndex+=2
		else
			@rollIndex+=2
		end
		
	end
    return result
  end
  
  def calculateScore
  	return isStrike || isSpare ? 10 + bonusPoints : framePoints
  end
  
  def isStrike
  	return @rolls[@rollIndex] == 10 ? true : false
  end
  
  def isSpare
  	return  framePoints == 10 ? true : false
  end
  
  def bonusPoints
  	return isStrike ? @rolls[@rollIndex + 1]+ @rolls[@rollIndex + 2] : @rolls[@rollIndex + 2]
  end
  
  def framePoints
  	return @rolls[@rollIndex]+@rolls[@rollIndex+1]
  end
end