module Concerns
  module Findable
  
  def find_by_name(name)
    self.all.detect {|song| song.name == name}
  end
  
  def find_or_create_by_name(name)
    if self.find_by_name(name)
      self.find_by_name(name)
    elsif self.create(name)
      self.create(name)
    else
      self.find_by_name(name)
    end
  end
  
  end
end