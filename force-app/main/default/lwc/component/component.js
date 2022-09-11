import { LightningElement } from 'lwc';

export default class ButtonBasic extends LightningElement {
    clickedButtonLabel;
    handleClick ( event ) {
        // Assigning the value into the variable clickedButtonLabel
        this.clickedButtonLabel = 'Welcome to the Salesforce';
    }
}