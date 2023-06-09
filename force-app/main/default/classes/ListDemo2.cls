public class ListDemo2 {
    public static void iterateList(){
        List<integer> intList = new list<integer>();
        intList.add(90);
        intList.add(15);
        intList.add(77);
        intList.add(21);
        intList.add(15);
        intList.add(15);
        intList.add(90);
        intList.add(15);
        intList.add(77);
        intList.add(21);
        intList.add(15);
        intList.add(15);
        
        system.debug(intList);

        //for (Integer eachNumber : intList) {
            //System.debug(eachNumber);
           
            for( integer eachNumber  : intList){
                system.debug('5 x '+ eachNumber + ' = ' + eachNumber*5);
                //system.debug(eachNumber);
            }
        }
        
        
        public static integer add(List<integer> l1){
            integer sum = 0;
            system.debug(l1);
            for (integer eachNum : l1) {
              sum += eachNum;
            }
            return sum;
       }
       public static void iterateListString(List <String> l2){
        System.debug(l2);
        for (String eachString : l2) {
            System.debug(eachString+'-its lenght is'+ eachString.length());
            
        }

       }
       public static string add(list<string> l2){
        string finalString = '';
        for (string eachString : l2) {
             finalString += eachString + ' || ';
        }
        return finalString;
   }
   public static void iterateListString99() {
    list<string> ls = new list<string> {'list', 'set', 'map', 'array'};
    ls.add('methods');
    ls.add('constructor');

    list<string> newLS = new list<string>();

    //add eachString - length in the same list
         //ex: list
         //    list - 4
         //    set
         //    set - 3
    //we cannot modify(add or remove elements) in the LIST we are using in FOR EACH LOOP
    for (string eachStr : ls) {
         string temp = eachStr + ' - ' + eachStr.length();
         newLS.add(eachStr);
         newLS.add(temp);
    }
    system.debug(newLS);
}
}
