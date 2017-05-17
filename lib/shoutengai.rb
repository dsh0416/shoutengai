require 'sequel'
require 'logger'
require_relative 'shoutengai/core_ext/configurable'
require_relative 'shoutengai/version'
require_relative 'shoutengai/consts'
require_relative 'shoutengai/configure'
require_relative 'shoutengai/initializer'

Shoutengai.initialze()
