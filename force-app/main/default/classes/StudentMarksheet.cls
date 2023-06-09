public  class StudentMarksheet {
    String firstName;
    String lastName;
    Integer mathematics;
    Integer english;
    Integer chemistry;
    String schoolName;

    public  StudentMarksheet(){
        schoolName='Salesforce Public School';
    }
    public voide setfirstName(String firstName){
        this.firstName=firstName;
    }
    public String getfirstName(){
        return this.firstName;

    }
    public voide setLasttName(String lastName){
        this.lastName=lastName;
    }
    public String getLastName(){
        return this.lastName;    

    }
    public void setMarks(Integer mathematics, Integer english, Integer chemistry){
        this.mathematics=mathematics;
        this.english=english;
        this.chemistry=chemistry;
    }
    public void showMarksheet(){
        System.debug('student name: ' + firstName+' '+lastName);
        String schlN=schoolName;
        System.debug('school name:' +schlN);
        System.debug('Mathematic mark ' +this.mathematics);
        System.debug('English Mark: ' + this.english);
        System.debug('Chemistry mark: ' +this.chemistry);

        Integer sumMarks=mathematics+english+chemistry;

        if (sumMarks>=120){
            System.debug('YOU ARE PASSED. ');
        }else {
            System.debug('YOU NEED TO STUDY MORE. ');
        }

        System.debug('--------------');

    }


}
