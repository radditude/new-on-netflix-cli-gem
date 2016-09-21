require 'spec_helper'

describe WhatsOnNetflix::OneClass do
    it 'greets the user' do
        expect(STDOUT).to receive(:puts).with('howdy')
        WhatsOnNetflix::OneClass.new.greetings
    end
end