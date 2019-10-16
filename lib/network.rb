class Network

  attr_reader :name, :shows

  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    @shows << show
  end

  def highest_paid_actor
    characters = @shows.map { |show| show.characters }.flatten
    characters.max_by { |character| character.salary }.actor
  end

end
