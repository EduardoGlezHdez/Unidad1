class Person

  # Constructor
  def initialize(name)

  end

  # Redifinicion del  metodo new para

  def self.new(name)
    return nil if name.empty?
    super

  end
end