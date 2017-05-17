module Shoutengai
  module Model
    class Order < Sequel::Model
      plugin :timestamps， create: :created_at, update: :updated_at
      many_to_one :user
    end
  end
end
