import React from 'react';
import RadioButton from '../bundles/UI/components/RadioButton/RadioButton';
import { mount, configure } from 'enzyme';
import Adapter from 'enzyme-adapter-react-16';

configure({ adapter: new Adapter() });

let svg = "<svg width=\"20px\" height=\"20px\" viewBox=\"0 0 20 20\"><circle cx=\"10\" cy=\"10\" r=\"9\"></circle><path d=\"M10,7 C8.34314575,7 7,8.34314575 7,10 C7,11.6568542 8.34314575,13 10,13 C11.6568542,13 13,11.6568542 13,10 C13,8.34314575 11.6568542,7 10,7 Z\" class=\"inner\"></path><path d=\"M10,1 L10,1 L10,1 C14.9705627,1 19,5.02943725 19,10 L19,10 L19,10 C19,14.9705627 14.9705627,19 10,19 L10,19 L10,19 C5.02943725,19 1,14.9705627 1,10 L1,10 L1,10 C1,5.02943725 5.02943725,1 10,1 L10,1 Z\" class=\"outer\"></path></svg>"

describe('RadioButton', () => {
    it('Default RadioButton Demo', () => {
        const wrapper = mount(<RadioButton/>); 
        expect(wrapper.html()).toEqual('<span><input type="radio" class="radiobutton" value="">'+svg+'<label></label></span>');
        wrapper.unmount();
    });

    it('Basic RadioButton Demo', () => {
        const wrapper = mount(<RadioButton value="Input1" label="Test1"/>);
        expect(wrapper.html()).toEqual('<span><input type="radio" class="radiobutton" value="Input1">'+svg+'<label>Test1</label></span>');
        wrapper.unmount();
    });

    it('Checked RadioButton Demo', () => {
        const wrapper = mount(<RadioButton value="Input1" label="Test2" checked="true"/>);
        expect(wrapper.html()).toEqual('<span><input type="radio" class="radiobutton" value="Input1" checked="">'+svg+'<label>Test2</label></span>');
        wrapper.unmount();
    });
});