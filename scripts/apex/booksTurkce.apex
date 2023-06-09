List<BooksTurkce> bookList = new List<BooksTurkce>();

BooksTurkce book1 = new BooksTurkce();
book1.setKitapAdi('Safahat');
book1.setYazar('Mehmet Akif Ersoy');
book1.setFiyat(25);
book1.details();
bookList.add(book1);

System.debug('book1 => ' + book1);

//System.debug(book1.getKitapAdi());

BooksTurkce book2 = new BooksTurkce();
book2.setKitapAdi('Bu Ulke');
book2.setYazar('Cemil Meric');
book2.setFiyat(30);
book2.details();
bookList.add(book2);

System.debug('book2 => ' + book2);

BooksTurkce.toplamKitapSayisi();

System.debug('book list => ' + bookList);

//listenin her bir kitabinin bilgilerini ayri ayri yazin..
System.debug('====kitaplar ayri ayri ======');
for (BooksTurkce book : bookList) {
    System.debug(book);
    System.debug('Kitap adi : ' + book.getKitapAdi());
    System.debug('Yazar : ' + book.getYazar());
    System.debug('Fiyat : ' + book.getFiyat());
}
