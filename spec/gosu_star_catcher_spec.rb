require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

require 'gosu_star_catcher'

describe GosuStarCatcher do
  describe "when initialized" do
    before(:each) do
      @g = GosuStarCatcher.new
    end
    it "should have set dimensions" do
      # debugger
      @g.width.should == 640
      @g.height.should == 480
      @g.caption.should == "Gosu Star Catcher"
    end
    it "should have a background image" do
      @g.instance_variable_defined?(:@background_image).should be_true
      b = @g.instance_variable_get(:@background_image)
      b.should be_a_kind_of Gosu::Image
    end
  end
  describe "when drawn" do
    it "should have" do
      
    end
  end
end