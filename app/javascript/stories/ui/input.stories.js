import React from 'react';

import { storiesOf } from '@storybook/react';
import { action } from '@storybook/addon-actions';
import { linkTo } from '@storybook/addon-links';
import { Input } from '../../packs/ui-bundle';

storiesOf('Input', module)
  .add('Button', () => <Input type="button" value="Click here" />)
  .add('Text', () => <Input type="text" />)
  .add('Input between 5 and 10', () => <Input type="number" min="5" max="10"/>)
  .add('Input between 1 and 3', () => <Input type="range" min="1" max="3" name="points"/>)
  .add('Password', () => <Input type="Password" />)
  .add('Date', () => <Input type="date" value="2018-09-22" />)
; 