def save_new_user(name, email, birth_year)

  db = SQLite3::Database.new('user.sqlite3')

  rows = db.execute <<-SQL
   CREATE TABLE IF NOT EXISTS user(name varchar(255)),
email varchar(255), birth_year int);

  SQL

  db.execute 'INSERT INTO user(name,email,birth_year) VALUES (?,?,?)', [name,email,birth_year]

  user = db.execute 'SELECT * from users;'

  puts 'Nuevo usuario guardado.'
  user
end