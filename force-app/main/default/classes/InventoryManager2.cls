public  class InventoryManager2 {
    String productName;
    String productCode;
    Integer costPrice;
    Integer sellingPrice;
   public  Static  Integer  productCount =0;

    public InventoryManager2(){
        productCount ++;
    }
    public InventoryManager2( String productName, String productCode){
        productCount ++;
        this.productName=productName;
        this.productCode=productCode;
    }
    public void  setCostPrice( Integer costPrice){
        this.costPrice=costPrice;
    }
    public Integer getCostPrice(){
        return this.costPrice;
    }

    public void setSellingPrice( Integer sellingPrice){
        this.sellingPrice=sellingPrice;
    }

    public Integer getSellingPrice (){
        return this.sellingPrice;
    }

    public voide productDisplay(){
        System.debug('product name ', + productName);
        System.debug('praduct grup ', + productCode);
        System.debug('paduct price ' , + sellingPrice);
        Decimal profitPercen= (( sellingPrice- costPrice)*100/costPrice);

        if (profitPercen >= 20) {
            System.debug('Start Product');
            
        } else if ( profitPercen < 20 ) {
            System.debug('Average Product');
            
        }
    }

    
}