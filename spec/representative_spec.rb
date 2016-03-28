require "spec_helper"
describe Representative do
    it "is named name" do
        representative1 = Representative.new
        representative1.name = "name"
        representative1.name.should == "name"
    end
end