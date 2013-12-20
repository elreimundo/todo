require 'spec_helper'

describe Task do
  context "#initialize" do
  	it "should initialize with one title argument" do
			expect{Task.new(title: "Make this test pass")}.not_to raise_error
	  end
  end
end
