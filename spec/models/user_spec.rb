require 'spec_helper'

describe User do

  describe "#name" do
    let(:user) { Fabricate(:user, email: "email@example.com", username: username) }

    subject { user.name }

    context 'username is present' do
      let(:username) { "Bobbiey" }
      it { should == "Bobbiey" }
    end

    context 'with no username' do
      let(:username) { nil }
      it { should == "email@example.com" }
    end

  end

end
