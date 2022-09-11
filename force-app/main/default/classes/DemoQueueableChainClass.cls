public class DemoQueueableChainClass implmentsQueueable{
    public void execute(QueueableContext context){
        // Business loic to be added here

        // below syntax will chain DemoChildJob job to next job
        // independent or dependent business logic to be added in DemoChildJob class
        System.enqueueJob(new DemoChildJob());
    }

}