class Network

  attr_reader :name, :shows

  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    @shows << show
  end

  def get_characters
    characters = @shows.map { |show| show.characters }.flatten
  end

  def highest_paid_actor
    get_characters.max_by { |character| character.salary }.actor
  end

  def payroll
    get_characters.map { |character| [character.actor, character.salary]}.to_h
  end

  # alternative method using reduce
  # def payroll
  #   get_characters.reduce({}) do |payroll_hash, character|
  #     payroll_hash[character.actor] = character.salary
  #     payroll_hash
  #   end
  # end


end
