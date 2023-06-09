public  class Decimal_Assignment {
    public void decimalMethods(){
        String s1 = '123.456789';
        System.debug(s1);

        Decimal d1 = Decimal.valueOf(s1);
        System.debug(d1);

        Decimal d2=d1.setScale(2);
        System.debug(d2);



    }
}