import React from 'react';
import { mount } from 'enzyme';
import ProgressBar from '../bundles/UI/components/ProgressBar/ProgressBar';
import { configure } from 'enzyme';
import Adapter from 'enzyme-adapter-react-16';

configure({ adapter: new Adapter()});

describe('When ProgressBar is green', () => {
    it('The ProgressBar color field is green', () => {
        const wrapper = mount(
            <ProgressBar color="green" value="25" max="100"/>
        );
        expect(wrapper.html()).toEqual('<progress class="progressbar-green" value="25" max="100"></progress>');
        wrapper.unmount();
    });
});

describe('When ProgressBar is blue', () => {
    it('The ProgressBar color field is blue', () => {
        const wrapper = mount(
            <ProgressBar color="blue" value="25" max="100"/>
        );
        expect(wrapper.html()).toEqual('<progress class="progressbar-blue" value="25" max="100"></progress>');
        wrapper.unmount();
    });
});