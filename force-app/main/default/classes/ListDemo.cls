public  class ListDemo {
    public static void candidatesList(){
        List<String>ListC=new List<String>();
        System.debug(ListC);

        ListC.add('mars');
        ListC.add('bill');
        ListC.add('kunal');
        System.debug('list of candidates ==>' + ListC);


    }
    public static void randomIntegerList(){
        List<Integer>intList=new List<Integer>();
        intList.add(90);
        intList.add(15);
        intList.add(77);
        intList.add(21);
        intList.add(15);
        intList.add(15);
        System.debug('int list ==.' + intList);
        integer size = intList.size();
        system.debug('size of list is ' + size);


        Integer int3 = intList.get(3);

        //or
        Integer int31=intList[3];
        System.debug(' int3 is ' + int3);
        System.debug('int 31 is' +int31);
    }

}