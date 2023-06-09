Candidate.companyName = 'SOFTINNOVAS';

Candidate c1 = new Candidate();
c1.name = 'Jerry';
c1.gender = 'Male';
c1.details();

Candidate c2 = new Candidate();
c2.name = 'George';
c2.gender = 'Male';
c2.details();

Candidate c3 = new Candidate();
c3.name = 'Elaine';
c3.gender = 'Female';
c3.details();

Candidate.companyName = 'Salesforce';
c1.details();
c2.details();
c3.details();