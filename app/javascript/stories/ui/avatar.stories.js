import React from 'react';
import { storiesOf } from '@storybook/react';
import { Avatar } from '../../packs/ui-bundle';

storiesOf('Avatar', module)
  .add('Avatar', () => <Avatar src="https://api.adorable.io/avatars/285/abott@adorable.png" />)
  .add('broken image', () => <Avatar src="no_image.png" />)
  .add('fallback', () => <Avatar src={null} />);
