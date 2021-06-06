class DBTable{
  static const DIARY="diary";
  static const PAGE="page";
  static const TABLES=[
      "CREATE TABLE IF NOT EXIST "+ PAGE +(
        "id INTEGER PRIMARY KEY AUTOINCREMENT,"
        "type TEXT ,"
        "enterCode TEXT,"
      ),
      "CREATE TABLE IF NOT EXIST "+ DIARY +(
        "id INTEGER PRIMARY KEY AUTOINCREMENT,"
        "date TEXT,"
        "title TEXT,"
        "content TEXT,"
        "idDiary INTEGER,"
        "FOREING KEY (diaryId) REFERENCES "+ DIARY+ "(id)"
      )
  ];
}