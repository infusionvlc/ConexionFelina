import React from 'react';

import { storiesOf } from '@storybook/react';
import { action } from '@storybook/addon-actions';
import { linkTo } from '@storybook/addon-links';
import { Input } from '../../packs/ui-bundle';

storiesOf('Input', module)
  .add('Text', () => <Input type="text"/>)
  .add('Text full size', () => <Input type="text" size="full-size"/>)
  .add('Text half size', () => <Input type="text" size="half-size"/>)
  .add('Text with name', () => <Input type="text" name="Alfredo"/>)
  .add('Text with default value', () => <Input type="text" value="Default value"/>)
  .add('Text disabled', () => <Input type="text" value="Default value" disabled/>)
  .add('Password', () => <Input type="password" value="You're curious, aren't you?"/>)
; 