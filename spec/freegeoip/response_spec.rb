require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe "FreeGeoIP::Response", :vcr do
  before(:all) do
    VCR.use_cassette("locate") do
      @host = FreeGeoIP.locate("google-public-dns-a.google.com")
    end
    @google_dns = FreeGeoIP::Response.new(@host)
  end
  context "success" do
    subject { @google_dns }
    it "should have the proper values" do
      subject.city.should eq "Mountain View"
      subject.region.should eq "California"
      subject.region_code.should eq "CA"
      subject.longitude.should eq  "-122.057"
      subject.latitude.should eq "37.4192"
      subject.country.should eq "United States"
      subject.country_code.should eq "US"
      subject.ip.should eq "8.8.8.8"
      subject.zip_code.should eq "94043"
      subject.metro_code.should eq "807"
    end
  end
end