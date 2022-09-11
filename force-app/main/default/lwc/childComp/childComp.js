// importing LightningElement and api in lwc
import { LightningElement, api } from 'lwc';

export default class ChildComp extends LightningElement {
    @api childMessage = 'Hi, message is from child component';
}