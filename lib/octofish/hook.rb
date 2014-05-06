module Octofish
  class Hook
    include Virtus.model

    attribute :ref,         String
    attribute :after,       String
    attribute :before,      String
    attribute :created,     Boolean, default: false
    attribute :deleted,     Boolean, default: false
    attribute :forced,      Boolean, default: false
    attribute :compare,     String
    attribute :commits,     Array[Commit]
    attribute :head_commit, Commit
    attribute :repository,  Repository
    attribute :pusher,      Person
  end
end
