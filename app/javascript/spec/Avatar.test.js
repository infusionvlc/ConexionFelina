import React from 'react';
import { mount, configure } from 'enzyme';
import Adapter from 'enzyme-adapter-react-16';
import Avatar from '../bundles/UI/components/Avatar/Avatar';


configure({ adapter: new Adapter() });


describe('Avatar', () => {
  it('p correctly', () => {
    const src = 'foobar.png';
    const wrapper = mount(<Avatar src={src} />);

    const backgroundImage = wrapper.find('.avatar').prop('style').backgroundImage;

    expect(backgroundImage).toContain(`url('${src}')`);
    expect(backgroundImage).toContain('linear-gradient');
  });
  it('renders the fallback', () => {
    const wrapper = mount(<Avatar />);

    const backgroundImage = wrapper.find('.avatar').prop('style').backgroundImage;

    expect(backgroundImage).not.toContain('url');
    expect(backgroundImage).toContain('linear-gradient');
  });
});
