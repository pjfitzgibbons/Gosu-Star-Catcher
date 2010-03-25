require 'gosu'

class MyWindow < Gosu::Window
  def initialize
    super(640, 480, false)
    self.caption = 'Hello World!'
  end
end

w = MyWindow.new
w.show
