class Bike
  def initialize
    @broken = 'no'
  end

  def working?
    if @broken == 'no'
      true
    else
      false
    end
  end

  def broken
    @broken = 'yes'
  end
end
