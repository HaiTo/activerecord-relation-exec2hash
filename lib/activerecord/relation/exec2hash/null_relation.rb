module Exec2Hash
  module NullRelation
    def exec_to_hash
      []
    end
  end
end

ActiveRecord::NullRelation.send(:include, Exec2Hash::NullRelation)
