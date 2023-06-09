StudentTurkClass str1=new StudentTurkClass();
str1.firstName='Marry';
str1.lastName='Deby';
str1.className='12a';
str1.language='English';
str1.art=true;
str1.sport=false;
str1.ingGrade=95;
str1.fenGrade=100;
str1.mathGrade=92;
System.debug('student 1'+str1);


StudentTurkClass str2=new StudentTurkClass();
str2.firstName='Nikki';
str2.lastName='Deby';
str2.className='6a';
str2.language='Russian';
str2.art=true;
str2.sport=false;
str2.ingGrade=95;
str2.fenGrade=100;
str2.mathGrade=92;
System.debug('student 2'+str2);

StudentTurkClass student3 = new StudentTurkClass('Lisa', 'Fire', 95);
System.debug('student3 => ' + student3);

StudentTurkClass student4 = new StudentTurkClass('David', 'Fire', 100);
System.debug('student4 => ' + student4);




