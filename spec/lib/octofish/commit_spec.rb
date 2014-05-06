require 'spec_helper'

describe Octofish::Commit do

  let(:payload) { File.read(File.expand_path("../../../support/fixtures/github_payload.json", __FILE__)) }

  describe 'parsed valid commit' do
    subject { Octofish::Hook.new(JSON.parse(payload)).head_commit }

    its(:id)           { should eq 'e89b1288b0038fd3a012f4645fcff72ba05da44d' }
    its(:distinct)     { should be_true }
    its(:message)      { should eq 'added doc readme' }
    its(:timestamp)    { should eq DateTime.parse('2014-04-17T15:27:53+02:00') }
    its(:url)          { should eq 'https://github.com/roqua/calculator/commit/e89b1288b0038fd3a012f4645fcff72ba05da44d' }
    its(:author)       { should be_kind_of Octofish::Person }
    its(:committer)    { should be_kind_of Octofish::Person }
    its(:added)        { should be_kind_of Array }
    its(:removed)      { should be_kind_of Array }
    its(:modified)     { should be_kind_of Array }
  end

end
