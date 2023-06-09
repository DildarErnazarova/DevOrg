//Date myDob = Date.newInstance(1986, 12, 2);
//System.debug('My birthday is'+ myDob);
//Integer a=myDob.day();
//Integer b=myDob.month();
//Integer c=myDob.year();
//Integer abc=a+b+c;
//System.debug( a+'+'+b+'+'+c+ '=' +abc);

Date mariyaDob=Date.newInstance(1867, 11, 7);
Date todaydate=Date.today();
System.debug('Mariyanin dogum tarihi'+mariyaDob);
Integer farkday=mariyaDob.daysBetween(todaydate);
System.debug('fark gun'+farkday);

Integer farkMonth=mariyaDob.monthsBetween(todaydate);
System.debug('Fark ay'+farkMonth);

Integer a=mariyaDob.year();
Integer b=todaydate.year();
System.debug('fark yil'+(b-a));
Boolean snc=Date.isLeapYear(a);
System.debug('mariya and today diff ' +snc);
