public class Datetime_Assignment2 {
     public void diffofDate() {
        Date varTomorrowDate=date.newInstance(2023, 4, 7);
        System.debug('tommorrow /s date' + varTomorrowDate);
        Date  varTodaysDate=Date.newInstance(2023, 4, 6);
        System.debug('today/s date' + varTodaysDate);
        Integer daysDifferent=varTodaysDate.daysBetween(varTomorrowDate);
        System.debug('days differnt between today and tomorrow '+ daysDifferent);

    }
    public void timeCheck(){
        Datetime varTomorrowDatetime= Datetime.newInstance(2023, 4, 5, 07, 00, 00);
        System.debug('tomorrow/s datetime' + varTomorrowDatetime);
        Datetime var10DaysDatetime= Datetime.newInstance(2023, 4, 15, 09, 00, 00);
        System.debug(' 10 days later Datetime' + var10DaysDatetime);
        Long varDatetimeLong=12339874361L;
        Datetime varAdd7Days=varTomorrowDatetime.addDays(7);
        System.debug('adding 7 days' + varAdd7Days);
        Datetime varAdd10Days = var10DaysDatetime.addDays(10);
        System.debug('adding 10 days' + var10DaysDatetime);

    }
}