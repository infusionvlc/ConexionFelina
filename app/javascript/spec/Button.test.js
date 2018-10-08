import React from 'react';
import { mount } from 'enzyme';
import Button from '../bundles/UI/components/Button/Button';
import { configure } from 'enzyme';
import Adapter from 'enzyme-adapter-react-16';

configure({ adapter: new Adapter() });

describe('button onClick handker',() => {
  const mockFn = jest.fn();
  let wrapper = mount(<Button type='primary' onClick={mockFn}>Standard button</Button>);
  wrapper.simulate('click');
  expect(mockFn).toHaveBeenCalled();
});

describe('when button is primary', () => {
  it('should have button-primary class', () => {
      let wrapper = mount(
          <Button type='primary'>Standard button</Button>
      );
      expect(wrapper.html()).toEqual('<button class="button button-primary">Standard button</button>');
      wrapper.unmount();
  });
});

describe('when button is success', () => {
  it('should have button-success class', () => {
      const wrapper = mount(
          <Button type='success'>Success button</Button>
      );
      expect(wrapper.html()).toEqual('<button class="button button-success">Success button</button>');
      wrapper.unmount();
  });
});

describe('when button is warning', () => {
  it('should have button-warning class', () => {
      const wrapper = mount(
          <Button type='warning'>Warning button</Button>
      );
      expect(wrapper.html()).toEqual('<button class="button button-warning">Warning button</button>');
      wrapper.unmount();
  });
});

describe('when button is error', () => {
  it('should have button-error class', () => {
      const wrapper = mount(
          <Button type='error' children="Error button">Error button</Button>
      );
      expect(wrapper.html()).toEqual('<button class="button button-error">Error button</button>');
      wrapper.unmount();
  });
});
