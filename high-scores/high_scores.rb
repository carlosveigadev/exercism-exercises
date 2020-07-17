class HighScores
  def initialize(score)
    @score = score
  end

  def scores
    @score
  end

  def latest
    scores[-1]
  end

  def personal_best
    scores.max
  end

  def personal_top_three
    scores.max(3)
  end

  def latest_is_personal_best?
    latest == personal_best
  end
end
