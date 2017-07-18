require 'active_support/lazy_load_hooks'
require 'active_record'

ActiveSupport.on_load(:active_record) do
  unless ActiveRecord::Relation.respond_to?(:exec_to_hash)
    require 'activerecord/relation/exec2hash/relation'
    require 'activerecord/relation/exec2hash/null_relation'
  end
end
