module Octofish
  class Commit
    include Virtus.model

    attribute :id,        String
    attribute :distinct,  Boolean
    attribute :message,   String
    attribute :timestamp, DateTime
    attribute :url,       String
    attribute :author,    Person
    attribute :committer, Person
    attribute :added,     Array[String]
    attribute :removed,   Array[String]
    attribute :modified,  Array[String]
  end
end
