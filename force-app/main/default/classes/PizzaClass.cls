public class PizzaClass {
    Integer orderBd=0;
    Integer quantity;
    String toppings;
    string type;
    Decimal tax;
    String feedback;

    public void addCart( Integer quantity, String toppings, String type){
          this.orderBd++;
          this.quantity=quantity;
          this.toppings=toppings;
          this.type=type;

          if(quantity==1){
            tax=0.18;
          }else if(quantity==2){
            tax=0.12;
          }else if(quantity==3){
            tax=0.06;
          }else if (quantity>4){
            tax=o;
          }
    }
    public void cancelCart(){
        orderBd=0;
    }
    public void feedback(String feedback){
        System.debug('feedback'+feedback);
    }

}