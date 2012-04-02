require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe FreeGeoIP do
  describe "#locate", :vcr do
    it "should return a hash" do
      subject.locate("google-public-dns-a.google.com").should eq subject.locate("8.8.8.8")
    end
  end
end