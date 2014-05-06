require 'virtus'

%w(person commit repository hook).each do |file|
  require File.expand_path("../octofish/#{file}", __FILE__)
end

module Octofish
  def self.from_json(payload)
    hash = JSON.parse(payload)
    Octofish::Hook.new(hash)
  end
end
