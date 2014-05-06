require 'spec_helper'

describe Octofish::Person do

  let(:payload) { File.read(File.expand_path("../../../support/fixtures/github_payload.json", __FILE__)) }

  describe 'parsed valid commit' do
    subject { Octofish::Hook.new(JSON.parse(payload)).head_commit.committer }

    its(:name)      { should eq 'Ivan Malykh' }
    its(:email)     { should eq 'ivan@roqua.nl' }
    its(:username)  { should eq 'imalijkh' }
  end

end
