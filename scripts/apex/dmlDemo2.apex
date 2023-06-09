DmlDemo2.insertBulkWRONG();
DmlDemo2.soqlWrong();
DmlDemo2.bulkInsertRight();
DmlDemo2.bulkInsertRight2();
DmlDemo2.bulkUpdateRight();
DmlDemo2.accountUpdate();

delete[select id from account where createddate = today limit 50];

delete [select id from account where createddate = today limit 50];