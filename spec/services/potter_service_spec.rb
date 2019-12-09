require 'rails_helper'

describe PotterService do
  context "instance methods" do
    context "#members_by_house" do
      it "returns member data" do
        search = subject.members_by_house("Gryffindor")
        expect(search).to be_an Array
        member_data = search.first

        expect(member_data).to have_key :name
        # expect(member_data).to have_key :role
        expect(member_data).to have_key :house
        # expect(member_data).to have_key :patronus
      end
    end
  end
end
