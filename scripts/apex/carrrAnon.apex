Carrr newCar=new Carrr();
newCar.details();

Carrr bnw= new Carrr();
bnw.details();

Carrr bnw1= new Carrr('BNW X3');
bnw1.details();

Carrr bnw2= new Carrr('BNW X3','ABC10002','BLAC', 2022, 45000);
bnw2.details();
System.debug(bnw2);


carrr ford2 = new carrr('Ford mustang', 'abc1002', 'Red',2023, 550000.50);//will this work?
string ford2Name = ford2.name;
string ford2color = ford2.color;
system.debug('ford 2 name and color are ' + ford2Name + ', ' + ford2color);
system.debug('------------');
//can we update the value of variable?
ford2.name = 'Ford Focus';
ford2.color = 'Silver';
ford2.details();



