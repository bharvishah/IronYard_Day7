class Log

@@log_entries = []

def self.log
  p @@log_entries
end
def self.get_log_entries(entry)
  @@log_entries << entry
end
end


module Edible
  def eat

  end
  def fish_eaten
    return "ate"
  end

end




class Panda
    include Edible
    def eat
      Log.get_log_entries("Panda #{fish_eaten}")
    end

end

class Shark
  include Edible

  def eat
    Log.get_log_entries("Shark #{fish_eaten}")
  end

end

panda = Panda.new
panda.eat

shark = Shark.new
shark.eat

shark2 = Shark.new
shark2.eat

Log.log
