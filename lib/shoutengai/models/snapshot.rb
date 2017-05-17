module Shoutengai
  module Model
    class Snapshot < Sequel::Model
      plugin :timestamps, create: :created_at
      many_to_one :product
    end
  end
end
