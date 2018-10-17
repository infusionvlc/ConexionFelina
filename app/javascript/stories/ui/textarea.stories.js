import React from 'react';

import { storiesOf } from '@storybook/react';
import { action } from '@storybook/addon-actions';
import { linkTo } from '@storybook/addon-links';
import { TextArea } from '../../packs/ui-bundle';


storiesOf('TextArea', module)
  .add('TextArea', () => <TextArea />)
  .add('TextArea with name', () => <TextArea name="TestArea" />)
  .add('TextArea with cols', () => <TextArea cols="20" />)
  .add('TextArea with rows', () => <TextArea rows="20" />)
  .add('TextArea with cols & rows', () => <TextArea cols="20" rows="20" />)
  .add('TextArea with limit', () => <TextArea maxlength="20" />)
  .add('TextArea read-only', () => <TextArea readonly/>)
;