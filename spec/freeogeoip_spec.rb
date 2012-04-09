require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe FreeGeoIP do
  describe "#locate" do
    before(:all) do
      VCR.use_cassette("locate") do
        @host = subject.locate("google-public-dns-a.google.com")
        @ip   = subject.locate("8.8.8.8")
      end
    end
    
    it "should not break" do
      @host.should eq @ip
    end
  end
end