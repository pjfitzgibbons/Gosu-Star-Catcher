require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

require 'gosu_star_catcher'

describe GosuStarCatcher do
  describe "when initialized" do
    before(:each) do
      @g = GosuStarCatcher.new
    end
    it "should have set dimensions" do
      puts @g.methods.sort
      @g.height.should == 480
      @g.caption.should == "Gosu Star Catcher"
    end
  end
end