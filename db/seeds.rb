# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "csv"

def self.reset_pk_sepuence(table_name)
    case ActiveRecord::Base.connection.adapter_name
      when 'SQLite'
        ActiveRecord::Base.connection.execute("delete from sqlite_sequence where
        name='#{table_name}'")
      when 'PostgreSQL'
        ActiveRecord::Base.connection.execute("select setval ('#{table_name}_id_seq', 1, false)")
      else
        raise "Task not implemented for this DB adapter"
      end
    end

    # teachers
    Teacher.delete_all
    reset_pk_sepuence("teachers")
    CSV.foreach("db/teacherdesu.csv", headers: true) do |row|
        Teacher.create(
            account: row["account"],
            password: row["password"],
            name: row["name"],
            hurigana: row["hurigana"],
            grade: row["grade"],
            klass: row["klass"]
        )
    end