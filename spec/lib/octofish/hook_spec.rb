require 'spec_helper'

describe Octofish::Hook do

  let(:payload) { File.read(File.expand_path("../../../support/fixtures/github_payload.json", __FILE__)) }

  describe 'parsed valid payload' do
    subject { described_class.new(JSON.parse(payload)) }

    its(:ref)           { should eq 'refs/heads/master' }
    its(:after)         { should eq 'e89b1288b0038fd3a012f4645fcff72ba05da44d' }
    its(:before)        { should eq '28754b3ec42bbf76074a3c98456e16cca78f4183' }
    its(:created)       { should eq false }
    its(:deleted)       { should eq false }
    its(:forced)        { should eq false }
    its(:compare)       { should eq 'https://github.com/roqua/calculator/compare/28754b3ec42b...e89b1288b003' }
    its(:commits)       { should be_kind_of Array }
    its("commits.size") { should eq 1 }
    its(:head_commit)   { should be_kind_of Octofish::Commit }
    its(:repository)    { should be_kind_of Octofish::Repository }
    its(:pusher)        { should be_kind_of Octofish::Person }
  end

end
