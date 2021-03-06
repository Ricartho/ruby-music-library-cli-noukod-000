module Concerns::Findable

# Allow to find an instance of the class by name.
  def find_by_name(name)
     all.find do |song_detect|
       song_detect.name == name
     end
  end

  def find_or_create_by_name(name) #
      self.find_by_name(name) || self.create(name)
  end

end