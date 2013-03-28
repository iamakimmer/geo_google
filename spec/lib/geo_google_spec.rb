require 'spec_helper'

describe GeoGoogle do
  it "should return data for Clifton, NJ" do
    location = GeoGoogle.lookup('Clifton, NJ')
    location.should_not be_nil
    location.status.should == 'OK'
    location.latitude.should == 40.85843280
    location.longitude.should == -74.16375529999999
  end
end