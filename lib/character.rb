class Character

  attr_reader :name, :actor, :salary

  def initialize(input_hash)
    @name = input_hash[:name]
    @actor = input_hash[:actor]
    @salary = input_hash[:salary]
  end

end
