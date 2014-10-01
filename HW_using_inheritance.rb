
class Log

  @@log_entries = []
   def self.log
     p @@log_entries

   end
   def self.newLogEntry (entry)
     @@log_entries << entry
   end
end

class FishEater

def eat
end

  def eats_fish
  return "Ate !"
  end
end

class Panda < FishEater

  def eat

    Log.newLogEntry("Panda #{eats_fish}")
  end

end

class Shark < FishEater

  def eat
    Log.newLogEntry("Shark #{eats_fish}")
  end
end

panda = Panda.new
panda.eat

shark = Shark.new
shark.eat

panda2 = Panda.new
panda2.eat

Log.log
