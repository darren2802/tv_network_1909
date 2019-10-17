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


end
