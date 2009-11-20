require "rubygems"

ROOT = File.join(File.dirname(__FILE__), '..')
$LOAD_PATH << File.join(File.dirname(__FILE__), '../lib')

require "spec" # Satisfies Autotest and anyone else not using the Rake tasks

#require "dm-core"

#DataMapper.setup(:default, 'sqlite3::memory:')
#DataMapper.auto_migrate!

#require 'timecop'
#require 'chronic'

require 'hi'
require 'test/unit'
require 'rack/test'
require 'rack/utils'
require 'sinatra'



