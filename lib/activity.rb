require "pry"
class Activity
  attr_reader :name, :participants

  def initialize(name)
    @name = name
    @participants = {}
  end

  def add_participant(name, amount_paid)
    @participants[name] = amount_paid
  end

  def total_cost
    total_cost = @participants.values.sum
  end

  def split
    divvy_up = total_cost / @participants.length
    @participants.map do |person, money|
      money - divvy_up
    end
    divvy_up
  end


end
