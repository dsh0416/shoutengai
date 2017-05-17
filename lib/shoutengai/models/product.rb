module Shoutengai
  module Model
    class Product < Sequel::Model
      one_to_many :snapshots
      many_to_many :categories
    end
  end
end
