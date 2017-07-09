require 'sqlite3'


db = SQLite3::Database.new("awesome.db")
db.results_as_hash = true

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS awesome(
   id INTEGER PRIMARY KEY,
   location VARCHAR(255)
  )
SQL


db.execute(create_table_cmd)