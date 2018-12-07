import React from 'react';
import RadioGroup from '../bundles/UI/components/RadioGroup/RadioGroup';
import { mount, configure } from 'enzyme';
import Adapter from 'enzyme-adapter-react-16';

configure({ adapter: new Adapter() });

let svg = "<svg width=\"20px\" height=\"20px\" viewBox=\"0 0 20 20\"><circle cx=\"10\" cy=\"10\" r=\"9\"></circle><path d=\"M10,7 C8.34314575,7 7,8.34314575 7,10 C7,11.6568542 8.34314575,13 10,13 C11.6568542,13 13,11.6568542 13,10 C13,8.34314575 11.6568542,7 10,7 Z\" class=\"inner\"></path><path d=\"M10,1 L10,1 L10,1 C14.9705627,1 19,5.02943725 19,10 L19,10 L19,10 C19,14.9705627 14.9705627,19 10,19 L10,19 L10,19 C5.02943725,19 1,14.9705627 1,10 L1,10 L1,10 C1,5.02943725 5.02943725,1 10,1 L10,1 Z\" class=\"outer\"></path></svg>"
let list1 = [{label: 'Option 1'},
             {label: 'Option 2'}];
let list2 = [{label: 'Option 1'}, 
            {label: 'Option 2'},
            {label: 'Option 3'}, 
            {label: 'Option 4'}];

describe('RadioGroup', () => {
    it('Two Options RadioGroup Demo', () => {
        const wrapper = mount(<RadioGroup items={list1} />);
        expect(wrapper.html()).toEqual('<form action="">'
                                        + '<span><input type="radio" class="radiobutton" value="0">'+svg+'<label>'+ list1[0].label+'</label></span>'
                                        + '<span><input type="radio" class="radiobutton" value="1">'+svg+'<label>'+ list1[1].label+'</label></span>'
                                        + '</form>');
        wrapper.unmount();
    });

    it('Four Options RadioGroup Demo', () => {
        const wrapper = mount(<RadioGroup items={list2} />);
        expect(wrapper.html()).toEqual('<form action="">'
                                        + '<span><input type="radio" class="radiobutton" value="0">'+svg+'<label>'+ list2[0].label+'</label></span>'
                                        + '<span><input type="radio" class="radiobutton" value="1">'+svg+'<label>'+ list2[1].label+'</label></span>'
                                        + '<span><input type="radio" class="radiobutton" value="2">'+svg+'<label>'+ list2[2].label+'</label></span>'
                                        + '<span><input type="radio" class="radiobutton" value="3">'+svg+'<label>'+ list2[3].label+'</label></span>'
                                        + '</form>');
        wrapper.unmount();
    });

    it('Four Options RadioGroup Pre-Checked Demo', () => {
        const wrapper = mount(<RadioGroup items={list2} value="0" />);
        expect(wrapper.html()).toEqual('<form action="" value="0">'
                                        + '<span><input type="radio" class="radiobutton" value="0" checked="">'+svg+'<label>'+ list1[0].label+'</label></span>'
                                        + '<span><input type="radio" class="radiobutton" value="1">'+svg+'<label>'+ list1[1].label+'</label></span>'
                                        + '<span><input type="radio" class="radiobutton" value="2">'+svg+'<label>'+ list2[2].label+'</label></span>'
                                        + '<span><input type="radio" class="radiobutton" value="3">'+svg+'<label>'+ list2[3].label+'</label></span>'
                                        + '</form>');
        wrapper.unmount();
    });
});