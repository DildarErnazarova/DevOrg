public class MethodsDemo3 {
     public void welcomeMessage(){

        System.debug('Hi there, welcome to the jungle!');


     }
     public void newMessage(String name){
        system.debug(' hi ' + name + ' welcome to the wold of apex ');

     }
     public string returnMessage(string name){
        system.debug('inside returnMessage method');
        string str = 'Hey ' + name + ', nice to meet you buddy';
        return str;
    }


    }
