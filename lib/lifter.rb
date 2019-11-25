class Lifter
  attr_reader :name, :lift_total


  @@all = []
  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total

    @@all << self
  end

  def self.all
    @@all
  end

  def all_memberships
    Membership.all.select do |membership|
      membership.name == self.name
    end
  end

  def all_gyms
    all_memberships.map do |membership|
      membership.gym 
    end
  end

  def self.avg_lift_total
    new_array = @@all.map do |lifter|
      lifter.lift_total
    end
    (new_array.sum/new_array.length).to_f
  end

  def total_cost
    gym_costs = 0
    all_memberships.select do |membership|
      gym_costs += membership.cost
    end
    gym_costs
  end

  def signup_new_gym(gym, cost)
    Membership.new(self, gym, cost)
  end


end
