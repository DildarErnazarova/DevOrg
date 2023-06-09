@istest
public  class IfElseConditional2Test {
    @istest
    private static void positiveOrNegativeTest(){
        IfElseConditional2 iec = new IfElseConditional2();
        String msg = iec.positiveOrNegative(5);
        Assert.areEqual('Positive', msg);
        String msg2 = iec.positiveOrNegative(-11);
        Assert.areEqual('Negative', msg2);
        String msg3 =iec.positiveOrNegative(0);
        Assert.areEqual('Sifir', msg3);
    }
    @istest
   private static void phoneTest() {
     IfElseConditional2 iec = new IfElseConditional2();
     string msg1 = iec.phone('2123215476');
     assert.isNotNull(msg1);
     string msg2 = iec.phone('2163215476');
     assert.isNotNull(msg2);
     string msg3 = iec.phone('3123215476');
     assert.isNotNull(msg3);
     string msg4 = iec.phone('21232154762');
     assert.isNotNull(msg4);
   }
}