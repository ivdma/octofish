module Octofish
  class Repository
    include Virtus.model

    attribute :id,            Integer
    attribute :name,          String
    attribute :url,           String
    attribute :description,   String
    attribute :homepage,      String
    attribute :watchers,      Integer
    attribute :stargazers,    Integer
    attribute :forks,         Integer
    attribute :fork,          Boolean, default: false
    attribute :size,          Integer
    attribute :owner,         Person
    attribute :private,       Boolean
    attribute :open_issues,   Integer
    attribute :has_issues,    Boolean
    attribute :has_downloads, Boolean
    attribute :has_wiki,      Boolean
    attribute :language,      String
    attribute :created_at,    Integer
    attribute :pushed_at,     Integer
    attribute :master_branch, String, default: 'master'
    attribute :organization,  String
  end
end
