public  class Trclass5Aprel {
    public void tarihOlusturma() {
        Date date1=date.newInstance(2022, 11, 22);
        System.debug(date1);
        Integer yil= 2001;
        Integer ay=5;
        Integer gun=17;
        Date date2=Date.newInstance(yil, ay, gun);
        System.debug(date2);


    }

    public void tarihMesaji() {
        Date buGun = Date.today();
        //1. asama yili cekelim..
        integer buYil =   buGun.year();
        //2. asama ayi cekelim..
        integer buAy = buGun.month();
        //3. asama gunu cekelim..
        integer gun = buGun.day();
        //4. bu tarihten yeni yila kadar kac gun var onu bulalim..
        date yeniYil = date.newInstance(2023, 12, 31);
        integer kalanGunSayisi = buGun.daysBetween(yeniYil);
        //5. Bu verileri bir stringde birlestirip yazdiralim..
        string mesaj = buYil + ' yilinin ' + buAy + '. ayinin ' + gun + '. gunundeyiz. Yeni yila ' + kalanGunSayisi + ' gun var..';
        System.debug(mesaj);

        //4. ve 5. asamalar icin 2. yol
        integer kacinciGun = buGun.dayOfYear();
        integer kalanGunSayisi2 = 365 - kacinciGun;

        string mesaj2 = buYil + ' yilinin ' + buAy + '. ayinin ' + gun + '. gunundeyiz. Yeni yila ' + kalanGunSayisi2 + ' gun var..';
        System.debug(mesaj2);
        

    }
}