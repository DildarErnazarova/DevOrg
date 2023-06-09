public  class DecimalMethodsDemo {
     public void practice1(){
        Decimal d1 = 7.745124572;
        // setScale will return us decimal
        Decimal d1x = d1.setScale(2);
        System.debug(d1x);
        Decimal d2 = 88.77554466;


        System.debug(d2.setScale(3));
        String s='88.77';
        Decimal ds = Decimal.valueOf(s);
        System.debug(s+5);
        System.debug(ds+5);

    }
}