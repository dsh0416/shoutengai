module Shoutengai
  class << self
    def initialze(options = Shoutengai::Configure)
      @db = ::Sequel.connect(options.database)
      @logger = options.logger
      # Perform migration up to latest migration available
      ::Sequel.extension :migration
      ::Sequel::Migrator.run(@db, 'shoutengai/migrations')
      @logger.info("Running at Shoutengai Migration #{@db[:schema_info].first[:version]}")
    end
  end
end
