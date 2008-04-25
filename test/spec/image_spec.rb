require File.join(File.dirname(__FILE__),'..','..','lib','magick4j')
require File.join(File.dirname(__FILE__),'..','..','lib','rmagick4j','constants')
require File.join(File.dirname(__FILE__),'..','..','lib','rmagick4j','image')
require "image_constants.rb"

include Magick

describe Image do
  
  before(:each) do
    @image = Image.read(File.join(File.dirname(__FILE__),'..','clown.jpg'))
  end
  
  it "should have the same methods as the standard RMagick" do
    IMAGE_METHODS.each do |method|
      # It fails, use test/implemented_methods instead (at least, until
      # we got some more methods implemented, no just 13%
      @image.should respond_to? method.to_sym
    end
  end
end
