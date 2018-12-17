import React from 'react';
import { mount, configure } from 'enzyme';
import Adapter from 'enzyme-adapter-react-16';
import Switch from '../bundles/UI/components/Switch/Switch';

configure({ adapter: new Adapter() });

describe('Switch', () => {
  it('starts in off state', () => {
    const wrapper = mount(<Switch />);
    expect(wrapper.find('input').getDOMNode().checked).toBeFalsy();
  });

  it('should set labels correctly', () => {
    const onLabel = 'foobar';
    const offLabel = 'bazbang';
    const wrapper = mount(<Switch onLabel={onLabel} offLabel={offLabel} />);

    expect(wrapper.find('span.on').html()).toContain(onLabel);
    expect(wrapper.find('span.off').html()).toContain(offLabel);
  });

  it('should set large class properly', () => {
    const wrapper = mount(<Switch large />);
    expect(wrapper.find('.large').length).toBe(1);
  });

  it('should trigger onChange when value has changed', () => {
    const onChange = jest.fn();
    const wrapper = mount(<Switch onChange={onChange} />);

    wrapper.find('input').simulate('change', { target: { checked: true } });
    expect(onChange.mock.calls.length).toBe(1);
    expect(onChange.mock.calls[0][0].target.checked).toBe(true);
    wrapper.update();

    wrapper.find('input').simulate('change', { target: { checked: false }} );
    expect(onChange.mock.calls.length).toBe(2);
    expect(onChange.mock.calls[1][0].target.checked).toBe(false);
  });
});
