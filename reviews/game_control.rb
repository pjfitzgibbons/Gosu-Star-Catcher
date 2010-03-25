require 'rubygame'

class GameControl

  include Rubygame

  FONT_NAME = 'media/PrintChar21.ttf'
  FONT_SIZE = 14
  SCREEN_PX = [560, 340]

  def initialize
    Rubygame.init
    @screen = Screen.open SCREEN_PX
  end

  class << self
    alias :start :new
  end



end
