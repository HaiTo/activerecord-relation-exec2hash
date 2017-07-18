module ActiveRecord
  class Relation
    def exec_2_hash
      connection.exec_query(to_sql).to_hash
    end
  end
end
