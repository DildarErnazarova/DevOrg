AccountsBatch ab = new AccountsBatch();
Database.executeBatch(ab, 50);


DepartmentsBatch db = new DepartmentsBatch();
Id JobId = Database.executeBatch(db, 5);
System.debug(' Job ID is ' + JobId);