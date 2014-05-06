require 'spec_helper'

describe Octofish::Repository do

  let(:payload) { File.read(File.expand_path("../../../support/fixtures/github_payload.json", __FILE__)) }

  describe 'parsed valid repository' do
    subject { Octofish::Hook.new(JSON.parse(payload)).repository }

    its(:id)            { should eq 18834445 }
    its(:name)          { should eq "calculator" }
    its(:url)           { should eq "https://github.com/roqua/calculator" }
    its(:description)   { should eq "Example R-Package with tests" }
    its(:homepage)      { should eq nil }
    its(:watchers)      { should eq 0 }
    its(:stargazers)    { should eq 0 }
    its(:forks)         { should eq 0 }
    its(:fork)          { should be_false }
    its(:size)          { should eq 0 }
    its(:owner)         { should be_kind_of Octofish::Person }
    its(:private)       { should be_true }
    its(:open_issues)   { should eq 0 }
    its(:has_issues)    { should be_true }
    its(:has_downloads) { should be_true }
    its(:has_wiki)      { should be_true }
    its(:language)      { should eq "R" }
    its(:created_at)    { should eq 1397641079 }
    its(:pushed_at)     { should eq 1397741276 }
    its(:master_branch) { should eq "master" }
    its(:organization)  { should eq "roqua" }
  end

end
