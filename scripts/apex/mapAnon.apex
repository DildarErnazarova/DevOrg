// mapDemo. mapStringInteger();

// map of string, string 

map<string, string> mapCC = new map<string, string>();
mapCC.put('USA', 'Dollar');
mapCC.put('France', 'Euro');
mapCC.put('Portugal', 'Euro');
mapCC.put('India', 'Rupees');//we added this first
mapCC.put('India', 'Rupee');//then we added same key, another value, it will update the value it KEY exists
mapCC.put('Turkiye', 'Lira');
mapCC.put('El Salvador', 'Bitcoin');
mapCC.put('usa','usd');
mapCC.put('El Salvador', 'BTC');//updates value
system.debug(mapCC);

//get value from map using KEY. method is .get(key)
string currUSA = mapCC.get('USA');
string currIndia = mapCC.get('India');
system.debug(currIndia);
string country = 'Turkiye';
string curr = mapcc.get(country);
system.debug(country + ' curency is ' + curr);

Set<String> allCountry = mapCC.keySet();
System.debug('all countries' + allCountry);

List<String> allCurrencies  = mapCC.values();
System.debug('all currencies =>' + allCountry);

map<string, integer> map1 = new map<string, integer>();
//in map, we PUT key value pair
map1.put('one', 101);
map1.put('two', 202);
map1.put('three', 303);
system.debug(map1);


integer v1 = map1.get('one');//101
integer v2 = map1.get('two');//202

set<string> s1 = map1.keySet();
//{one, two, three}

for(string eachKey: s1){
    system.debug('each key is ' + eachKey);
    //one
    //two
    //three
    integer eachValue = map1.get(eachKey);
    //one   -> 101
    //two   -> 202
    //three -> 303
    system.debug('each value is ' + eachValue);
}