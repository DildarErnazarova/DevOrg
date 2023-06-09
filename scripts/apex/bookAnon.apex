Book b1 = new book('The Great Gatsby', 'Scot', 10.50);
b1.printDetails();

decimal p1 = b1.getPrice();
system.debug(p1);

b1.setPrice(14.25);
b1.printDetails();


Book b2 = new book('ANNA KARENINA', 'TOLOSTOY', 25.50);
b2.printDetails();
b2.setPrice(30.99);
b2.printDetails();


Book b3 = new book('HAMLET ', 'W. SHEKESPEARE', 30.99);