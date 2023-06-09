public class StudentTurkClass {
    public String firstName;
    public String lastName;
    private String schoolName='Dream school';
    public String className;
    public String language;
    public Boolean art;
    public Boolean sport;
    public integer ingGrade;
    public integer mathGrade;
    public integer fenGrade;

    public StudentTurkClass(){
        System.debug(' yeni bir ogrenci kaydi alindi .. hayirli olsun');
    }
     public  StudentTurkClass  (string fName, string lName, integer ingNotu){
        this();
        this.firstName = fName;
        this.lastName = lName;
        this.ingGrade = ingNotu;
    }


}