public  class DatetimeMethodsDemo2 {
        public void calculateAgeInMonths(){
            date todayDate = date.today();
                                            //year, month, day
            date vitapBirthDate = date.newInstance(1986, 12, 2);
    
            integer ageInMonths = vitapBirthDate.monthsBetween(todayDate);
            system.debug('DILADR age in months is ' + ageInMonths);
        }
    
        public void calculateAgeInDays(){
            date todayDate = date.today();
                                            //year, month, day
            date vitapBirthDate = date.newInstance(1986, 12, 2);
    
            integer ageInDays = vitapBirthDate.daysBetween(todayDate);
            system.debug('Vitap age in days is ' + ageInDays);
        }
    
        public void subscriptionEndDate(){
            //first get today's date
            date todayDate = date.today();
    
            date endDate = todayDate.addDays(1000);
            system.debug('subscription end date : ' + endDate);
    
            //END date is today. 
            //subs was done for 1000 days
            //what is the start date?
            date newEndDate = date.today();
    
            date newStartDate = newEndDate.addDays(-1000);
            system.debug('new start date => ' + newStartDate);
    
        }

        public void offerEndDateTime(){
            // current datetime 
            Datetime offerStart = Datetime.now();

            Datetime offerEnd=offerStart.addHours(51);
            System.debug('offer end time' + offerEnd);

        }

    

        }

    
    
    
    
    
    