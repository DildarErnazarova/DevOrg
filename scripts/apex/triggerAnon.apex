Opportunity opp = new Opportunity();
opp.Name = 'Trigger opp';
opp.StageName = 'Prospecting';
opp.CloseDate = date.today().addDays(60);
insert opp;

opp.Name += ' update';
update opp;