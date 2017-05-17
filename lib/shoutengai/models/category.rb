module Shoutengai
  module Model
    class Category < Sequel::Model
      plugin :timestamps， create: :created_at
      many_to_one :user
      many_to_many :products
    end
  end
end
