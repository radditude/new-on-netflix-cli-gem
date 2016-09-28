require "spec_helper"
require 'stringio'

describe WhatsOnNetflix do
  
  #disables long lists of output
  before do
    $stdout = StringIO.new
  end
  after(:all) do
    $stdout = STDOUT
  end
  
  it "has a version number" do
    expect(WhatsOnNetflix::VERSION).not_to be nil
  end
  
  it "lists Coming Soon" do
    WhatsOnNetflix::CLI.new
    expect(WhatsOnNetflix::ComingSoon.list).not_to be nil
  end
  
  it "lists Coming Soon movie info" do
    expect(WhatsOnNetflix::ComingSoon.item("1")).not_to be nil
  end
  
  it "lists Leaving Soon" do
    expect(WhatsOnNetflix::LeavingSoon.list).not_to be nil
  end
  
  it "lists Leaving Soon movie info" do
    expect(WhatsOnNetflix::LeavingSoon.item("1")).not_to be nil
  end
end
