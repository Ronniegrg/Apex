import { LightningElement } from 'lwc';

export default class MyComponent extends LightningElement {
    /**
     * @api
     * changeMessage(strString) {
     *  this.Message = strString.toUpperCase();
     * }
     */

    // For accessing this child method in our parent component, we can do this by
    /**
     * this.template.querySelector('c-child-component').c
     * handgeMessage(event.target.value);
     */
}