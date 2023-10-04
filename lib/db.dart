class Database {
  static final Database instance = Database.createInstance();

  factory Database() {
    return instance;
  }

  Database.createInstance();
}
