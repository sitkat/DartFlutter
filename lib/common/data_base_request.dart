// Класс, отвечающий за запросы к БД
abstract class DataBaseRequest {
  /// Запрос для создания таблицы Role
  static const String _createTableRole =
      'CREATE TABLE "$tableRole" ("id" INTEGER,"role" TEXT NOT NULL UNIQUE, PRIMARY KEY("id" AUTOINCREMENT))';

  /// Запрос для создания таблицы Users
  static const String _createTableUsers =
      'CREATE TABLE "$tableUsers" ("id"	INTEGER,"login"	TEXT NOT NULL UNIQUE,"password"	TEXT NOT NULL,"id_role"	INTEGER,FOREIGN KEY("id_role") REFERENCES "Role"("id"),PRIMARY KEY("id"))';

  /// Запрос для создания таблицы Category
  static const String _createTableCategory =
      'CREATE TABLE "$tableCategory" ("id" INTEGER,"category" TEXT NOT NULL UNIQUE, PRIMARY KEY("id" AUTOINCREMENT))';

  /// Запрос для создания таблицы Size
  static const String _createTableSize =
      'CREATE TABLE "$tableSize" ("id" INTEGER,"size" TEXT NOT NULL UNIQUE, PRIMARY KEY("id" AUTOINCREMENT))';

  /// Запрос для создания таблицы Brand
  static const String _createTableBrand =
      'CREATE TABLE "$tableBrand" ("id" INTEGER,"brand" TEXT NOT NULL UNIQUE, PRIMARY KEY("id" AUTOINCREMENT))';
      
  /// Запрос для создания таблицы Color
  static const String _createTableColor =
      'CREATE TABLE "$tableColor" ("id" INTEGER,"color" TEXT NOT NULL UNIQUE, PRIMARY KEY("id" AUTOINCREMENT))';
      
  /// Запрос для создания таблицы Season
  static const String _createTableSeason =
      'CREATE TABLE "$tableSeason" ("id" INTEGER,"season" TEXT NOT NULL UNIQUE, PRIMARY KEY("id" AUTOINCREMENT))';

  /// Запрос для создания таблицы Product
  static const String _createTableProduct =
      'CREATE TABLE "$tableProduct" ("id"	INTEGER,"name"	TEXT NOT NULL, "cost"	decimal(8,2), "id_category"	INTEGER,FOREIGN KEY("id_category") REFERENCES "Category"("id"), "id_size"	INTEGER,FOREIGN KEY("id_size") REFERENCES "Size"("id"), "id_brand"	INTEGER,FOREIGN KEY("id_brand") REFERENCES "Brand"("id"), "id_color"	INTEGER,FOREIGN KEY("id_color") REFERENCES "Color"("id"), "id_season"	INTEGER,FOREIGN KEY("id_season") REFERENCES "Season"("id"), PRIMARY KEY("id"))';

  /// Запрос для создания таблицы Basket
  static const String _createTableBasket =
      'CREATE TABLE "$tableBasket" ("id"	INTEGER, "id_product"	INTEGER,FOREIGN KEY("id_product") REFERENCES "Product"("id"), "id_user"	INTEGER,FOREIGN KEY("id_user") REFERENCES "Users"("id"), PRIMARY KEY("id"))';
  
  /// Запрос для создания таблицы Orders
  static const String _createTableOrders =
      'CREATE TABLE "$tableOrders" ("id"	INTEGER, "cost"	decimal(8,2), "address"	TEXT NOT NULL, "id_basket"	INTEGER,FOREIGN KEY("id_basket") REFERENCES "Basket"("id"), PRIMARY KEY("id"))';
  //ON DELETE CASCADE

  static String deleteTable(String table) => 'DROP TABLE $table';

  /// Таблица Роли
  ///
  /// Поля таблицы: Название роли

  static const String tableRole = 'Role';

  /// Таблица Пользователи
  ///
  /// Поля таблицы: Логин, Пароль, Роль

  static const String tableUsers = 'Users';

  static const String tableCategory = 'Category';
  static const String tableSize= 'Size';
  static const String tableBrand = 'Brand';
  static const String tableColor = 'Color';
  static const String tableSeason = 'Season';

  static const String tableProduct = 'Product';
  static const String tableBasket = 'Basker';
  static const String tableOrders = 'Basker';

  static const List<String> tableList = [
    tableRole,
    tableUsers,
    tableCategory,
    tableSize,
    tableBrand,
    tableColor,
    tableSeason,
    tableProduct,
    tableBasket,
    tableOrders,
  ];

  static const List<String> tableCreateList = [
    _createTableRole,
    _createTableUsers,
    _createTableCategory,
    _createTableSize,
    _createTableBrand,
    _createTableColor,
    _createTableSeason,
    _createTableProduct,
    _createTableBasket,
    _createTableOrders,
  ];
}
