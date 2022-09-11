Global class SecondClass {
   string morningGreeting = 'Good Morning!';
   string afternoonGreeting='Good Afternoon';
    string eveningGreeting='Good Evening';
   
   /* public void MornGreeting() {
        system.debug(morningGreeting);
    }
    
    public void AftGreeting() {
        system.debug(afternoonGreeting);
    }
    
    Global void EvenGreeting() {
        system.debug(eveningGreeting);
    }
    */
    
    public void printMessage(string msg) {
        system.debug(msg);
    }
    
    // Return a day based on the hour
    public string getTasks(integer HourNumber) {
        string dayTask='';
        
        Switch on HourNumber {
            when 10 {
                dayTask = 'Login';
            }
            when 11,12 {
                dayTask ='Attend Meetings';
            }
            when 13 {
                dayTask = 'Lunch Break';
            }
            when 14 {
                dayTask = 'Go To RTO office';
            }
            When 15, 16, 17, 18, 19, 20 {
                dayTask='Hangout';
            }
            
            when 21, 22, 23, 24 {
                dayTask = 'Dinner and Sleep Time';
            }
            When else {
                dayTask = 'Invalid Hour';
            }
        }
        return dayTask;
    }
}