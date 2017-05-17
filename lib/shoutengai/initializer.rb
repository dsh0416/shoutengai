module Shoutengai
  class << self
    attr_accessor :db
    def initialze(options = Shoutengai::Configure)
      Shoutengai.db = ::Sequel.connect(options.database)
      @logger = options.logger
      # Perform migration up to latest migration available
      ::Sequel.extension :migration
      ::Sequel::Migrator.run(@db, File.join(File.dirname(__FILE__), 'migrations'))
      @logger.info("Running at Shoutengai Migration #{@db[:schema_info].first[:version]}")

      require_relative 'models/category'
      require_relative 'models/order'
      require_relative 'models/product'
      require_relative 'models/snapshot'
      require_relative 'models/user'
    end
  end
end
