module AcceptsComments
  def comments
    @comments ||= []
    #@comments belongs to the instance of the class being mixed into
    #a new one is set-up each time an object is created
  end

  def add_comment(comment)
    comments << comment
    #comments calls the comments method above (attr_reader)
  end
end

class Clip
  include AcceptsComments #mixin

  def play
    puts "Playing #{object_id}"
  end
end

class Video < Clip #subclass of clip
  attr_reader :resolution
  #sets up a reader, does nothing as resolution is nil
end

class Song < Clip
  attr_reader :beats_per_minute
end

video = Video.new
video.add_comment("Cool slow motion effect!")
video.add_comment("Weird ending.") #adds to the comment above

video_2 = Video.new

song = Song.new
song.add_comment("Awesome beat.")

p video.comments, video.resolution, song.comments, video_2.comments

puts "*" * 50

module MyModule
  def my_method
    "Hello from my method!"
  end
end

class MyClass
  include MyModule
end

p ashik = MyClass.new.my_method