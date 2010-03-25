require 'rubygame'

class TTFDemo
  include Rubygame
  
  attr_accessor :font, :line_height

  FONT_NAME = 'samples/PrintChar21.ttf'
  FONT_SIZE = 14
  SCREEN_PX = [560, 340]
  
  def initialize
    @screen = Screen.open(SCREEN_PX)
    @screen.update
    @y = 0

    @queue = EventQueue.new()
    @queue.ignore = SDL_EVENTS - [QuitEvent, KeyDownEvent]


    font_setup
  end

  def font_setup
    unless VERSIONS[:sdl_ttf]
      raise "TTF is not usable. Bailing out."
    end
    TTF.setup()
    # font = TTF.new("FreeSans.ttf",30)
    @font = TTF.new(FONT_NAME,FONT_SIZE)
    @font.bold = true
    @line_height = @font.line_skip()
  end

  def print msg
    text = @font.render(msg, true, [255,255,255])
    text.blit(@screen, [0,@y])
    @screen.update
    @y += @line_height
  end

  def display
    # screen.fill([30,70,30])
    # y = -skip
    font_setup

    (1..24).each do |row|
      print ("%02d" % row) + "*" * 37 + "X"
    end
  end

end

t = TTFDemo.new

puts "line height: #{t.line_height}"
txt = ("%02d" % 1) + "*" * 37 + "X"
puts "line_size: #{t.font.size_text(txt)}"

require 'ruby-debug'
Debugger.start

debugger

t.display


