import React from 'react';

import { storiesOf } from '@storybook/react';
import { RadioButton } from '../../packs/ui-bundle';

storiesOf('RadioButton', module)
  .add('Basic RadioButton', () =>
    <RadioButton value="Input1" label="Test1"/>)
  .add('Checked RadioButton', () => 
    <RadioButton value="Input1" label="Test2" checked={true}/>);