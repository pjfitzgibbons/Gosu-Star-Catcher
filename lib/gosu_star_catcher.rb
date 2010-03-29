require 'gosu'

class GosuStarCatcher < Gosu::Window
  def initialize
    super(640, 480, false)
    self.caption = "Gosu Star Catcher"
    
    puts Dir.pwd
    @background_image = Gosu::Image.new(self, "media/Space.png", true)
  end
  
  def update
  end
  
  def draw
    
  end
  
  
end