import React from 'react';
import { mount } from 'enzyme';
import ProgressBar from '../bundles/UI/components/ProgressBar/ProgressBar';
import { configure } from 'enzyme';
import Adapter from 'enzyme-adapter-react-16';

configure({ adapter: new Adapter()});

describe('When ProgressBar is sea color', () => {
    it('The ProgressBar color field is sea', () => {
        const wrapper = mount(
            <ProgressBar color="sea" value="25" max="100"/>
        );
        expect(wrapper.html()).toEqual('<progress class="progressbar-sea" value="25" max="100"></progress>');
        wrapper.unmount();
    });
});

describe('When ProgressBar is sky color', () => {
    it('The ProgressBar color field is blue', () => {
        const wrapper = mount(
            <ProgressBar color="sky" value="25" max="100"/>
        );
        expect(wrapper.html()).toEqual('<progress class="progressbar-sky" value="25" max="100"></progress>');
        wrapper.unmount();
    });
});