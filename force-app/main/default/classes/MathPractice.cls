public  class MathPractice {
    public Decimal practiceOne( Decimal d1, Decimal d2){
        Decimal alan=(d1+d2) * 2;
        return alan;
    }

    public Decimal practiceTwo (Decimal height, Decimal weight){
        Decimal bdymassIn= weight/(height*height);
        return bdymassIn;
    }

    public Decimal practiceTree ( Integer a, Integer b){
        Decimal ortalama=(a+b)/2;
        return ortalama;
    }
    public String practiceFour( Decimal amount ){
        String message;
        if (amount < 0) {
            message='hatali deger girdiniz';
        } else if (amount<50) {
            message='bonus kazanamadiniz';
            
        } else if (amount<200) {
            message=amount + '$'+ ' tutarindeki alis versiniz karsiliginda 10$ bonus karsilandi';    
        }else if (amount<500) {
            message=amount + '$'+ ' tutarindeki alis versiniz karsiliginda 30$ bonus kazandiniz'; 

        }else if (amount>=500) {
            message=amount+ '$'+ ' tutarindeki alis versiniz karsiliginda 50$ bonus kazandiniz';
        }
        return message;
    }

    public Decimal practiceFive(Integer adet, String urun){
        Decimal topliFiyat;
        switch on urun {
            when 'EKMEK' {
                topliFiyat=1* adet;
                
            }
            when 'SIMIT'{
                topliFiyat=2*adet;
            }
            when 'KEK'{
                topliFiyat=3*adet;
            }
        }
    
        System.debug('almis oldugunuz'+adet+'adet'+urun+'tutati'+topliFiyat+ '$ dir.');
        return topliFiyat;
    }

    
}
