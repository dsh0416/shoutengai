require './spec/spec_helper'

RSpec.describe Shoutengai::VERSION do
  describe 'version' do
    it 'should be frozen' do
      expect(Shoutengai::VERSION.frozen?).to eq(true)
    end
  end
end
