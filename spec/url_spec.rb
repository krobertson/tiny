require File.join( File.dirname(__FILE__),  "spec_helper" )

describe "Hi" do
  include Rack::Test::Methods
  
  def app
    Sinatra::Application
  end
  
  describe "shrinking url" do

    it %q{shoud return "I'm Tiny" if there no query string} do
      get '/'
      last_response.body.should == "I'm Tiny"
    end
    
    it %q{shoud NOT return "I'm Tiny" if there is a query string} do
      get '/', :t=> Rack::Utils.escape('http://www.webvanta.com/')
      last_response.body.should_not == "I'm Tiny"
    end
    
    
  end
  
  describe "expanding urls"
    before :each do
      get '/', :t=> Rack::Utils.escape("http://www.webvanta.com/#{rand}")
      @key = 
    end 
  end
