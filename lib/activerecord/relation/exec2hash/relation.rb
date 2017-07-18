module ActiveRecord
  class Relation
    def exec_to_hash
      connection.exec_query(to_sql).to_hash
    end
  end
end
