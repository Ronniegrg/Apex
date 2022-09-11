// importing LightningElement from lwc module
import { LightningElement, track } from 'lwc';

export default class TwoWayDataBinding extends LightningElement {
    // Both properties are assigned with an initial value of Salesforce TwoWayBinding 
    // and Salesforce developer, respectively.c/myComponent
    @track fullname = "Salesforce TwoWayBinding";
    @track title = "Salesforce developer";

    changeHandler ( event ) {
        this[event.target.name] = event.target.value
    }
}