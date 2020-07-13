class HighScores
  def initialize(data)
    @data = data
  end

  def scores
    @data
  end

  def latest
    @data[-1]
  end

  def personal_best
    @data.max
  end

  def personal_top_three
    @data.max(3)
  end

  def latest_is_personal_best?
    @data[-1] === @data.max ? true : false
  end

end
