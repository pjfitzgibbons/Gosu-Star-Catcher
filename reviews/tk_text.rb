#!/usr/bin/env ruby
require 'tk'
require 'tkextlib/tile'
root = TkRoot.new() 
button = Tk::Tile::TButton.new(root) {text "Hello World"}.grid 

# fork do
#   puts root.methods.grep(/focus/).join("\n")
#   root.set_focus true
# end
# 
# Tk.mainloop false

# root.focus

# Process.wait

if fork.nil?
  puts "Running Child..."
  Tk.mainloop
  puts "Child done"
end
puts "Running Parent..."

Process.wait

puts "Parent done."
#   # child processing inside this block
# end
# exec(root.deiconify)
# Process.wait
# TkCore::RUN_EVENTLOOP_ON_MAIN_THREAD = true
# Tk.mainloop false


# t = fork {|root|  Tk.mainloop() }

# t = Thread.new() { Tk.mainloop(false) }
# system(%Q{/usr/bin/osascript -e 'tell app "Finder" to set frontmost of  
# process "Ruby" to true' })
# 
# 
# puts "Running...."
# t.join