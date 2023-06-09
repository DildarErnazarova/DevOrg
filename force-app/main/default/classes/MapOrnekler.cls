public  class MapOrnekler {

    public static void sehirSicakliklari() {
        //farklı 5 şehrin son 7 gündeki sıcaklık durumlarını şehir ismi key sıcaklık değerleri decimal liste olan bir map yazın.. son 1 haftanın sıcaklık ortalamalarına göre 10 derecenin üstünde olan şehirleri bir liste 10 derece ve altındaki şehirleri ayrı liste olarak yazdırın.
        //1. once Map'imizi olusturalim.
        Map<string, List<decimal>> citiesOfHot = new Map<string, List<decimal>>();
        List<decimal> istanbulOfHot = new List<decimal>{11.5, 17.4, 21.3, 15.5, 8.7, 22.2, 19.9};
        citiesOfHot.put('istanbul', istanbulOfHot);

        List<decimal> amsterdamOfHot = new List<decimal>{11.5, 7.4, 11.3, 15.5, 8.7, 2.2, 9.9};
        citiesOfHot.put('Amsterdam', amsterdamOfHot);

        List<decimal> londonOfHot = new List<decimal>{1.5, 7.4, 1.3, 5.5, 8.7, 2.2, 9.9};
        citiesOfHot.put('London', londonOfHot);

        List<decimal> newYorkOfHot = new List<decimal>{1.5, 1.4, 1.3, 1.5, 8.7, 2.2, 1.9};
        citiesOfHot.put('NewYork', newYorkOfHot);

        List<decimal> nairobiOfHot = new List<decimal>{21.5, 17.4, 21.3, 15.5, 18.7, 22.2, 29.9};
        citiesOfHot.put('Nairobi', nairobiOfHot);

        System.debug('Map => ' + citiesOfHot);

        //2. sehir ve sicaklik ortalamasini icine alan ayri bir Map olusturalim.
        Map<string, decimal> mapOrtSicaklik = new Map<string, decimal>();
        for (string city : citiesOfHot.keySet()) {
            System.debug(city);
            System.debug(citiesOfHot.get(city));
            decimal sum = 0;
            for (decimal item : citiesOfHot.get(city)) {
                sum += item;
            }
            decimal Average = sum/(citiesOfHot.get(city).size());
            mapOrtSicaklik.put(city, Average.setScale(1));

        }

        System.debug('sicaklik ortalamalari => ' + mapOrtSicaklik);

        //3. 2 tane set string olusturalim.
        set<string> less10 = new Set<String>();
        set<string> more10 = new Set<String>();

        //4. 10 derecenin ustundekileri bir sete 10 derece ve altindakileri diger sete ekleyelim..
        for (string city : mapOrtSicaklik.keySet()) {
            if (mapOrtSicaklik.get(city)>10) {
                more10.add(city);
            } else {
                less10.add(city);
            }
        }

        //5. set leri yazdiralim..
        System.debug('10 derecenin altindaki sehirler => ' + less10);
        System.debug('10 derece ve ustundeki sehirler => ' + more10);

    }
}
