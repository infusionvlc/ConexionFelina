import React from 'react';
import { mount } from 'enzyme';
import TextArea from '../bundles/UI/components/TextArea/TextArea';
import { configure } from 'enzyme';
import Adapter from 'enzyme-adapter-react-16';

configure({ adapter: new Adapter() });

describe('When TextArea has a Name field', () => {
    it('The TextArea name field is TestName1', () => {
        const wrapper = mount(
            <TextArea name="TestName1"/>
        );
        expect(wrapper.html()).toEqual('<textarea class="textarea" name="TestName1"></textarea>');
        wrapper.unmount();
    });
});

describe('When TextArea has a cols field', () => {
    it('The TextArea cols field is 50', () => {
        const wrapper = mount(
            <TextArea cols="50"/>
        );
        expect(wrapper.html()).toEqual('<textarea class="textarea" cols="50"></textarea>');
        wrapper.unmount();
    });
});

describe('When TextArea has a rows field', () => {
    it('The TextArea rows field is 50', () => {
        const wrapper = mount(
            <TextArea rows="50"/>
        );
        expect(wrapper.html()).toEqual('<textarea class="textarea" rows="50"></textarea>');
        wrapper.unmount();
    });
});

describe('When TextArea has a cols and rows fields', () => {
    it('The TextArea cols field is 50 and rows is 30', () => {
        const wrapper = mount(
            <TextArea cols="50" rows="30"/>
        );
        expect(wrapper.html()).toEqual('<textarea class="textarea" cols="50" rows="30"></textarea>');
        wrapper.unmount();
    });
});

describe('When TextArea has a limit of 50 characters', () => {
    it('The TextArea maxlength field is 50', () => {
        const wrapper = mount(
            <TextArea maxlength="50" />
        );
        expect(wrapper.html()).toEqual('<textarea class="textarea" maxlength="50"></textarea>');
        wrapper.unmount();
    });
});

describe('When TextArea can be read only', () => {
    it('The TextArea readonly exists', () => {
        const wrapper = mount(
            <TextArea readonly />
        );
        expect(wrapper.html()).toEqual('<textarea class="textareareadonly" readonly=""></textarea>');
        wrapper.unmount();
    });
});