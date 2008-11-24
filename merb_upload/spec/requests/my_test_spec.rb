require File.join(File.dirname(__FILE__), '..', 'spec_helper.rb')

describe "/my_test" do
  before(:each) do
    @response = request("/my_test")
  end
end