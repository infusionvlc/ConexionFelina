import React from 'react';

import { storiesOf } from '@storybook/react';
import { action } from '@storybook/addon-actions';
import { linkTo } from '@storybook/addon-links';

import { TextArea } from '../../packs/ui-bundle';


storiesOf('TextArea', module)
  .add('Read only area', () => <TextArea readonly="true"></TextArea>)
  .add('Small area', () => <TextArea  cols="50" rows="10"></TextArea>)
  .add('Medium area', () => <TextArea cols="100" rows="20"></TextArea>)
  .add('Large area', () => <TextArea cols="200" rows="40"></TextArea>)
  .add('Area w/ name', () => <TextArea name="TestArea"></TextArea>)
  .add('Area w/ limits', () => <TextArea maxlength="50"></TextArea>)
  
;