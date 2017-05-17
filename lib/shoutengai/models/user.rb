module Shoutengai
  module Model
    class User < Sequel::Model
      plugin :timestamps， create: :created_at
      one_to_many :orders
      one_to_many :categories
    end
  end
end
