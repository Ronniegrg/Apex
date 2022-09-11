/*
 Example 5: Prevent Recursion
 An apex class with a static "Boolean variable" which will have default value always set to true.
 Before executing the code in the "Recursive trigger", Keep check that the Boolean variable is true or not.
 */
public class checkRecursive{
    // Initially set the boolean variable to true
    private static boolean run = true;
    public static boolean runOnce(){
        if (run){
            run = false;
            return run;
        } else{
            return run;
        }
    }

}