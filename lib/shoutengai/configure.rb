##
# Default configuration of Shoutengai, extends +Configurable+
class Shoutengai::Configure
  extend Configurable

  set :logger, Logger.new(STDOUT)
  set :database, {
    adapter: 'sqlite',
    database: 'shoutengai/db/test.db',
  }
end
