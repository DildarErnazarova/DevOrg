public class BooksTurkce {
   // Constructor 
   // Class variables
   // getter setter
   //sttic class variables
   // non- static metotlar
   // static metotlar 
   // collections 

   String kitapAdi;
   string yazar;
   decimal fiyat;
   static Integer kitapSayisi=0;

   public BooksTurkce(){
       kitapSayisi++;
       System.System.debug('Kutuphanemize yeni bir kitap eklendi. Kitap sayimiz' +kitapSayisi+ 'oldu');

   }

   public void setKitapAdi( String kitapAdi){
    this.kitapAdi=kitapAdi;
   }

   public String getKitapAdi(){
    return this.kitapAdi;
   }
   public void setYazar(string yazar) {
    this.yazar = yazar;
}

public string getYazar() {
    return this.yazar;
}

public void setFiyat(decimal fiyat) {
    this.fiyat = fiyat;
}

public decimal getFiyat() {
    return this.fiyat;
}

public void details() {
    System.debug('Kitap adi : ' + this.kitapAdi);
    System.debug('Yazar : ' + this.yazar);
    System.debug('Fiyat : ' + this.fiyat);
    System.debug('Toplam Kitap Sayisi : ' + kitapSayisi);
}
public static void toplamKitapSayisi() {
    System.debug('Toplam Kitap sayisi = ' + kitapSayisi);
}
   
}