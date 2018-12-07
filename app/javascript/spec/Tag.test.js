import React from 'react';
import { mount } from 'enzyme';
import Tag from '../bundles/UI/components/Tag/Tag';
import { configure } from 'enzyme';
import Adapter from 'enzyme-adapter-react-16';

configure({ adapter: new Adapter() });

describe('when tag is primary', () => {
  it('should have tag-primary class', () => {
      let wrapper = mount(
          <Tag type='primary'>Standard tag</Tag>
      );
      expect(wrapper.html()).toEqual('<span class="tag tag-primary">Standard tag</span>');
      wrapper.unmount();
  });
});

describe('when tag is success', () => {
  it('should have tag-success class', () => {
      const wrapper = mount(
          <Tag type='success'>Success tag</Tag>
      );
      expect(wrapper.html()).toEqual('<span class="tag tag-success">Success tag</span>');
      wrapper.unmount();
  });
});

describe('when tag is warning', () => {
  it('should have tag-warning class', () => {
      const wrapper = mount(
          <Tag type='warning'>Warning tag</Tag>
      );
      expect(wrapper.html()).toEqual('<span class="tag tag-warning">Warning tag</span>');
      wrapper.unmount();
  });
});

describe('when tag is error', () => {
  it('should have tag-error class', () => {
      const wrapper = mount(
          <Tag type='error' children="Error tag">Error tag</Tag>
      );
      expect(wrapper.html()).toEqual('<span class="tag tag-error">Error tag</span>');
      wrapper.unmount();
  });
});
