import React from 'react';

import { storiesOf } from '@storybook/react';
import { RadioGroup } from '../../packs/ui-bundle';

let list1 = [{label: 'Option 1'},
             {label: 'Option 2'}];
let list2 = [{label: 'Option 1'}, 
            {label: 'Option 2'},
            {label: 'Option 3'}, 
            {label: 'Option 4'}];
storiesOf('RadioGroup', module)
  .add('Two options RadioGrop', () =>
    <RadioGroup items={list1} />)
  .add('Four options RadioGroup', () =>
    <RadioGroup items={list2} />)
  .add('Four options RadioGroup Pre-checked', () =>
    <RadioGroup items={list2} value="0" />);