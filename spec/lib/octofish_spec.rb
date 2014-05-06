require 'spec_helper'

describe Octofish do

  let(:payload) { "{\"hello\": \"hi\"}" }

  it 'responds to #from_json' do
    expect(described_class).to respond_to :from_json
  end

  describe '#from_json' do
    it 'returns a parsed Payload' do
      expect(described_class.from_json(payload)).to be_a Octofish::Hook
    end
  end

end
