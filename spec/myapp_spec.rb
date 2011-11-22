require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "PuppetDashApi" do
  include Rack::Test::Methods
  
  def app
    @app ||= MyApp.new
  end
  
  it "should return all nodes when no name is specified" do
    get '/'
    last_response.status.should == 200
    last_response.body.should == 'hello world'
  end

end
