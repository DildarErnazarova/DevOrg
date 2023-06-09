public class ForLoopTurkce {
    public void sum(integer n) {
        integer toplam = 0;
        for (Integer i = 1; i <= n; i++) {
            System.debug('for dongusu '+ i + ' defa dondu..');
            toplam += i;
            System.debug('ara toplam => ' + toplam);
        }
        System.debug('genel toplam => ' + toplam);
    
}
//string bir parametre alan bir metot yazin. Bu metot stringin uzunlugu kadar yan yana Hello mesaji yazdirsin..
public string hello(string text) {
    // gelen parametrenin karakter uzunlugunu bulacagiz..
    integer uzunluk = text.length();
    string message = '';
    // bu uzunluk kadar bir for dongusu yazip messaji olusturacagiz..
    for (Integer i = 1; i <= uzunluk; i++) {
        message += ' hello '+ i;
    }
    return message;
}

}