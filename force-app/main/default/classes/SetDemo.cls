public class SetDemo {
    public static void citySet(){
       set<String> cities = new  set<String>();
       cities.add('TOKYO');
       cities.add('BERLIN');
       cities.add('LISBOM');
       cities.add('TOKYO');
       cities.add('TOKYO');
       cities.add('ISTANBUL');

       System.debug(' SET OF CITIES:' + cities);
    }
    public static void randomIntegerSet(){
        Set<Integer> intSet = new Set<Integer>();
        intSet.add(15);
        intSet.add(25);
        intSet.add(21);
        intSet.add(10);
        System.debug(intSet);
    }
    public static void setFromList(){
        //addAll -> it adds all elements from one list or set to another set.
        list<integer> li = new list<integer>{10,15,15,21,21,55,101,101};
        system.debug('list integer -> ' + li);

        //convert list to set by creating set and adding all elements from list to set
        set<integer> si = new set<integer>();
        si.addAll(li);//we can add elements from another list or set
        system.debug('si integer -> ' + si);

        list<integer> newLi = new list<integer>();
        newLi.addall(si);//we can add elements from another list or set
        system.debug('deduplicated list :  ' + newLi);
    }
         
    public static void  upperCaseSet(){
        set<String> cities = new  set<String>();
       cities.add('TOKYO');
       cities.add('BERLIN');
       cities.add('LISBOM');
       cities.add('TOKYO');
       cities.add('TOKYO');
       cities.add('ISTANBUL');
       System.debug('cities ==>' + cities);
       set<String> citiesInCaps = new  set<String>();

       for (String eachCity: cities) {
        String temp = eachCity.toUpperCase();
        cities.add(temp);
       }
       System.debug(' cities in caps ' + citiesInCaps);


    }
    public static set<string> upperCaseSet(set<string> s1){
        set<string> s1InCaps = new set<string>();
        for (string eachStr : s1) {
            string temp = eachStr.toUpperCase();
            //add uppercase string in new set.
            s1InCaps.add(temp);
            s1InCaps.add(eachStr.toUpperCase());
        }
        //return new set with upper case strings
        return s1InCaps;
    }


    
}