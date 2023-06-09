public  class PrimitiveDataType2 {
     public void print2(){
        Decimal d1=788.6765;
        system.debug('d1 is '+d1);
        Long l1= 34567887;
        system.debug(l1);

        Double dd1=5678876.78;
        system.debug('dd1' + dd1);

        id accId = '0018d00000VxUyAAAV'; // will this work?
        system.debug(' acc id is ' + accId);
        
          // all dataTypes are inherited from object 
         object obj1=99;
         object obj2='assing string to object';
         system.debug(obj1);
         system.debug(obj2);




    }
}