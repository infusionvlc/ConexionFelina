import React from 'react';
import { mount } from 'enzyme';
import Alert from "../bundles/UI/components/Alert/Alert";
import { configure } from 'enzyme';
import Adapter from 'enzyme-adapter-react-16';

configure({ adapter: new Adapter() });

describe('when alert is primary', () => {
    it('should have alert-primary class', () => {
        let wrapper = mount(
            <Alert type='primary' children="Standard alert"/>
        );
        expect(wrapper.html()).toEqual('<div class="alert alert-primary">Standard alert</div>');
        wrapper.unmount();
    });
});

describe('when alert is success', () => {
    it('should have alert-success class', () => {
        let a = mount(
            <Alert type='success' children="Success alert"/>
        );
        expect(a.html()).toEqual('<div class="alert alert-success">Success alert</div>');
        a.unmount();
    });
});

describe('when alert is warning', () => {
    it('should have alert-warning class', () => {
        let wrapper = mount(
            <Alert type='warning' children="Warning alert"/>
        );
        expect(wrapper.html()).toEqual('<div class="alert alert-warning">Warning alert</div>');
        wrapper.unmount();
    });
});

describe('when alert is error', () => {
    it('should have alert-error class', () => {
        let wrapper = mount(
            <Alert type='error' children="Error alert"/>
        );
        expect(wrapper.html()).toEqual('<div class="alert alert-error">Error alert</div>');
        wrapper.unmount();
    });
});

describe('when alert is disabled', () => {
    it('should have alert-disabled class', () => {
        let wrapper = mount(
            <Alert type='disabled' children="Disabled alert"/>
        );
        expect(wrapper.html()).toEqual('<div class="alert alert-disabled">Disabled alert</div>');
        wrapper.unmount();
    });
});