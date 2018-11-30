import React from 'react';

import { storiesOf } from '@storybook/react';
import { RadioGroup } from '../../packs/ui-bundle';

let list = [{label: 'abc'}, 
            {label: 'def'},
            {label: 'abc'}, 
            {label: 'def'}];
storiesOf('RadioGroup', module)
  .add('RadioGroup', () =>
    <RadioGroup items={list} value="1" />);