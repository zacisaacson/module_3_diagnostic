require 'rails_helper'

describe Member do
  it "exists" do
    attrs = {
      name: "Aberforth Dumbledore",
      role: "Owner, Hog's Head Inn",
      house: "Gryffindor",
      patronus: "goat"
    }

    member = Member.new(attrs)

    expect(member).to be_a Member
    expect(member.name).to eq("Aberforth Dumbledore")
    expect(member.role).to eq("Owner, Hog's Head Inn")
    expect(member.house).to eq("Gryffindor")
    expect(member.patronus).to eq("goat")

  end
end
