import React from 'react';
import { mount } from 'enzyme';
import Input from "../bundles/UI/components/Input/Input";
import { configure } from 'enzyme';
import Adapter from 'enzyme-adapter-react-16';

configure({ adapter: new Adapter() });

describe('when input is text', () => {
    it('should be simple input', () => {
        const wrapper = mount(
            <Input type="text"/>
        );
        expect(wrapper.html()).toEqual('<input class="input" type="text" value="">');
        wrapper.unmount();
    });
});

describe('when input is text and 100% width', () => {
    it('should have width 100%', () => {
        const wrapper = mount(
            <Input type="text" size="full-size"/>
    );
        expect(wrapper.html()).toEqual('<input class="input" type="text" style="width: 100%;" value="">');
        wrapper.unmount();
    });
});

describe('when input is text and 50% width', () => {
    it('should have width 50%', () => {
        const a = mount(
            <Input type="text" size="half-size"/>
        );
        expect(a.html()).toEqual('<input class="input" type="text" style="width: 50%;" value="">');
        a.unmount();
    });
});

describe('when input have a name', () => {
    it('the input need to name Alfredo', () => {
        const wrapper = mount(
            <Input type="text" name="Alfredo"/>
        );
        expect(wrapper.html()).toEqual('<input class="input" type="text" name="Alfredo" value="">');
        wrapper.unmount();
    });
});

describe('when input is disabled with a default value', () => {
    it('should have default value but is disabled', () => {
        const wrapper = mount(
            <Input type="text" value="Default value" disabled/>
        );
        expect(wrapper.html()).toEqual('<input class="input" type="text" disabled="" value="Default value">');
        wrapper.unmount();
    });
});

describe('when input have default value', () => {
    it('should have default value', () => {
        const wrapper = mount(
            <Input type="text" value="Default value"/>
        );
        expect(wrapper.html()).toEqual('<input class="input" type="text" value="Default value">');
        wrapper.unmount();
    });
});


describe('when alert is a password', () => {
    it('should is a password', () => {
        const wrapper = mount(
            <Input type="password" value="You're curious, aren't you?"/>
        );
        expect(wrapper.html()).toEqual('<input class="input" type="password" value="You\'re curious, aren\'t you?">');
        wrapper.unmount();
    });
});