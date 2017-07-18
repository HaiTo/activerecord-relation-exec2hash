ActiveSupport.on_load(:active_record) do
  unless ActiveRecord::Relation.const_defined?(:exec_to_hash)
    require 'activerecord/relation/exec2hash/version'
  end
end
