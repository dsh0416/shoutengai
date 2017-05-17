require 'sequel'
require 'logger'
require_relative 'shoutengai/core_ext/configurable'
require_relative 'shoutengai/version'
require_relative 'shoutengai/consts'
require_relative 'shoutengai/configure'
require_relative 'shoutengai/initializer'
require_relative 'shoutengai/models/category'
require_relative 'shoutengai/models/order'
require_relative 'shoutengai/models/product'
require_relative 'shoutengai/models/snapshot'
require_relative 'shoutengai/models/user'

Shoutengai.initialze()
