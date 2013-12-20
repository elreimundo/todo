require 'spec_helper'

describe Task do
  context "#initialize" do
  	it {should validate_presence_of :title}
  	it "should initialize with one title argument" do
			expect{Task.new(title: "Make this test pass")}.not_to raise_error
	  end
	  it "should persist with one title argument" do
	  	expect{ Task.create(title: "Make this test pass") }.to change{Task.count}.by(1)
	  end
  end
end
