InventoryManager2 P1= new InventoryManager2();
IfElseConditional2 p2=new InventoryManager2();
InventoryManager2 p3 = new InventoryManager2(' jam' , 'P001');
InventoryManager2 p4 = new InventoryManager2(' strawberry ' , 'P002');
InventoryManager2 p5 = new InventoryManager2(' orange ' , 'P003');

P1.getCostPrice(10);
P1.getSellingPrice(40);
P1.setSellingPrice();
P1.getSellingPrice();
P1.productDisplay();


p2.getCostPrice(16);
p2.getSellingPrice(40);
p2.setSellingPrice();
p2.getSellingPrice();
p2.productDisplay();


p3.getCostPrice(16);
p3.getSellingPrice(36);
p3.setSellingPrice();
p3.getSellingPrice();
p3.productDisplay();

p4.getCostPrice(120);
p4.getSellingPrice(40);
p4.setSellingPrice();
p4.getSellingPrice();
p4.productDisplay();

p5.getCostPrice(56);
p5.getSellingPrice(35);
p5.setSellingPrice();
p5.getSellingPrice();
p5.productDisplay();

System.debug('T N OF P '  + InventoryManager2.productCount);