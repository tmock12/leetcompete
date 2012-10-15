require 'spec_helper'

describe User do

  describe ".where" do
    let(:user1) { Fabricate(:user, email: "email1@example.com", username: "user1") }
    let(:user2) { Fabricate(:user, email: "email2@example.com", username: "user2") }

    context 'search by email' do
      it 'returns the first matching user' do
        found_user = User.where(email: 'email1@example.com')
        found_user.name.should == 'user1'
      end
    end

  end

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
