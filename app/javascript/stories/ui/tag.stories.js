import React from 'react';

import { storiesOf } from '@storybook/react';
import { action } from '@storybook/addon-actions';
import { linkTo } from '@storybook/addon-links';

import { Tag } from '../../packs/ui-bundle';


storiesOf('Tag', module)
  .add('standard', () => <Tag text="Tag"></Tag>)
  .add('sky', () => <Tag text="Tag" variant="sky"></Tag>)
  .add('sun', () => <Tag text="Tag" variant="sun"></Tag>)
  .add('sea', () => <Tag text="Tag" variant="sea"></Tag>)
  .add('fire', () => <Tag text="Tag" variant="fire"></Tag>)
;
