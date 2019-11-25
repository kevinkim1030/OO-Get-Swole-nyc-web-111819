class Gym
  attr_reader :name

  @@all = []
  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def all_memberships
    Membership.all.select do |membership|
      membership.gym == self.name
    end
  end

  def all_lifters
    all_memberships.map do |membership|
      membership.name
    end
  end

  def combined_lift_total
    combined_total = 0
    lifters = Lifter.all.select do |lifter|
      all_lifters.include? lifter.name
    end
      lifters.each do |lifter|
        combined_total +=lifter.lift_total
      end
      combined_total
  end



end
