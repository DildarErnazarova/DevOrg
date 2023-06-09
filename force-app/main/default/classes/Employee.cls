public class Employee {
    string name;
   decimal salary;
   integer age;

   //using constructor we can set values.
   //OR we can use set methods as shown below

   //setVariableName() --> set method
   public void setName(string name){
        this.name = name;
   }
   public string getName(){
        return this.name;
   }

   public void setSalary(Decimal salary){
    if (salary>=8000 && salary<=50000) {
        this.salary = salary;
    } else {
        
    }
        this.salary = 0;
   }
   public decimal getSalary(){
        return this.salary;
        System.debug(' salary not in valid range . please be in limit buddy');
   }
}