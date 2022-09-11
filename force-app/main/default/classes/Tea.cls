public with sharing class Tea{
    public static string orderTea(){
        Map<String, String> teaTypes = new Map<String, String>();
        teaTypes.put('Black', 'Earthy');
        teaTypes.put('White', 'Sweet');
        teaTypes.put('Herbal', 'Sweet');
        String flavorProfile = teaTypes.get('Herbal');
        System.debug('The falvourProfile of Herbal is: ' + flavorProfile);
        return flavorProfile;
    }
}