public  class AccountQueueableExample implements Queueable {
    list<account> accList;
    public AccountQueueableExample(List<account> accList) {
        this.accList = accList;
    }

    public void execute(QueueableContext qc){
        for (account eachAcc : accList) {
            eachAcc.name+= ' --SI';
        }
        update accList;
    }
}