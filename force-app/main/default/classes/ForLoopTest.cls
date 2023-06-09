@istest
public  class ForLoopTest {
    @istest

    private static void sumTest(){
        ForLoop fl = new ForLoop();
        fl.sum(5);
    }
    @istest

    private static void helloTest(){
        ForLoop fl = new ForLoop();
       String msg = fl.hello('Ali');
       Assert.isNull(msg);
       Assert.areEqual('hello', msg);
    }    
}