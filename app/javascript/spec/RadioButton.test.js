import React from 'react';
import RadioButton from '../bundles/UI/components/RadioButton/RadioButton';

describe('RadioButton', () => {
    it('Unique demo', () => {
        const wrapper = mount(
            <RadioButton/>
        ); 
        expect(wrapper.html()).toEqual('<input type="redio"></input>');
        wrapper.unmount();
    });
});