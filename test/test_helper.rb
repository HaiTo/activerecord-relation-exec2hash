require 'bundler/setup'
Bundler.require

$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)

# database setup
ActiveRecord::Base.establish_connection(
  adapter:   'sqlite3',
  database:  ':memory:'
)

class CreateAllTables < ActiveRecord::Migration[4.2]
  def self.up
    create_table(:posts) do |t|
      t.text :content
    end
  end
end

CreateAllTables.migrate(:up)

class Post < ActiveRecord::Base
end

require "minitest/autorun"
