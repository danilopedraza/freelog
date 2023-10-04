class Database {
  static final Database instance = Database.createInstance();

  factory Database() => instance;

  Database.createInstance();
}
