# EXTRA CREDIT:
#
# Create a program that will play the Greed Game.
# Rules for the game are in GREED_RULES.TXT.
#
# You already have a DiceSet class and score function you can use.
# Write a player class and a Game class to complete the project.  This
# is a free form assignment, so approach it however you desire.

# From about_dice_project.rb

class DiceSet
  def roll(number)
    @values = []
    number.times do
      @values.push(rand(1..6))
    end
  end

  def values
    @values
  end
end

# From about_scoring_project.rb

def score(dice)
  rolls = {1 => 0, 2 => 0, 3 => 0, 4 => 0, 5 => 0, 6 => 0}
  dice.each { |single_roll| rolls[single_roll] += 1 }
  compute_score(rolls)
end

def compute_score(rolls)
  score = 0
  score = ones(rolls, score)
  score = fives(rolls, score)
  score = other_triples(rolls, score)
  score
end

def ones(rolls, score)
  if rolls[1] >= 3
    score += 1000
    score += 100 * (rolls[1] - 3)
  else
    score += 100 * rolls[1]
  end
  score
end

def fives(rolls, score)
  if rolls[5] >= 3
    score += 500
    score += 50 * (rolls[5] - 3)
  else
    score += 50 * rolls[5]
  end
  score
end

def other_triples(rolls, score)
  [2, 3, 4, 6].each do |key|
    score += (100 * key) if rolls[key] >= 3
  end
  score
end
