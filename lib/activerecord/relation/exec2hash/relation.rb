module Exec2Hash
  module Relation
    def exec_to_hash
      connection.exec_query(to_sql).to_hash
    end
  end
end

ActiveRecord::Relation.send(:include, Exec2Hash::Relation)
