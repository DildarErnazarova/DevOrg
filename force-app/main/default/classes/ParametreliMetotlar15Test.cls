@istest
public  class ParametreliMetotlar15Test {
    @istest
    private static void printWelcomeTest(){
        ParametreliMetotlar15 pm = new ParametreliMetotlar15();
        pm.printWelcome();

    }
    @istest

    private static void welcomePersonTest(){
        ParametreliMetotlar15 pm = new ParametreliMetotlar15();
        pm.welcomePerson('John');

    }    

    @istest

    private static void toplamTest(){
        ParametreliMetotlar15 pm = new ParametreliMetotlar15();
        Integer tplm = pm.toplama(11, 22);
        Assert.areEqual(33, tplm);

    }    
    @istest

    private static void artikYilTest(){
        ParametreliMetotlar15 pm = new ParametreliMetotlar15();
        date dt = date.newInstance(2023, 5, 24);
        Boolean result = pm.artikYil(dt);
        Assert.isFalse(result);
    }
    @istest

    private static void uzunlukTest(){
        ParametreliMetotlar15 pm = new ParametreliMetotlar15();
        integer uznlk = pm.uzunluk('all');
        assert.areEqual(3, uznlk);
    }
}



