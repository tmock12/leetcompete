require 'spec_helper'

describe Competition do
  describe "validations" do

    it "validates presence of a user" do
      Competition.create.should have(1).errors_on(:user)
    end

    it "validates presence of a location" do
      Competition.create.should have(1).errors_on(:location)
    end

    it "validates presence of a title" do
      Competition.create.should have(1).errors_on(:title)
    end

  end
end
