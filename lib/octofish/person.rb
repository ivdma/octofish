module Octofish
  class Person
    include Virtus.model

    attribute :name,     String
    attribute :email,    String
    attribute :username, String
  end
end
