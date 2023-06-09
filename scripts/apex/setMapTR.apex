List<String> sehirler = new List<String>{'istanbul', 'New York', 'Toronto', 'London', 'Amsterdam', 'New York'};
System.debug('sehirler => ' + sehirler);

Set<String> ulkeler = new Set<String>{'Turkey', 'USA', 'Canada', 'Turkey', 'Nederland', 'Germany'};
System.debug('ulkelr => '+ ulkeler);

Set<String> sehirlerSet = new Set<String>();
sehirlerSet.addAll(sehirler);
system.debug('set ile sehirler => ' + sehirlerSet);

//ogrenci numaralari key ogrenci isimleri value olacak sekilde bir map yazalim..
Map<integer, string> ogrenciMap = new Map<integer, string>();
ogrenciMap.put(11, 'John');
ogrenciMap.put(16, 'lisa');
ogrenciMap.put(22, 'Alperen');
ogrenciMap.put(25, 'Fatma');
ogrenciMap.put(33, 'John');
ogrenciMap.put(16, 'Marry');
System.debug('ogrenci map list => ' + ogrenciMap);

Set<Integer> ogrenciNo = new Set<Integer>();
ogrenciNo = ogrenciMap.keySet();
System.debug('ogrenci nolari => ' + ogrenciNo);

List<String> isimList = new List<String>();
isimList = ogrenciMap.values();
System.debug('ogrenci isimleri => '+ isimList);