public with sharing class DemoClass{
    static final Double regularCustomerDiscount = 0.1;
    static Double finalPrice = 0;
    public static Double provideDiscount(Integer price){
        // Calculate the discount
        finalPrice = price - price * regularCustomerDiscount;
        return finalPrice;
    }

}