import React from 'react';

import { storiesOf } from '@storybook/react';
import { action } from '@storybook/addon-actions';
import { linkTo } from '@storybook/addon-links';
import { Tag } from '../../packs/ui-bundle';

storiesOf('Tag', module)
  .add('Primary', () => <Tag type="primary">Next</Tag>)
  .add('Success', () => <Tag type="success">Next</Tag>)
  .add('Warning', () => <Tag type="warning">Next</Tag>)
  .add('Error', () => <Tag type="error">Next</Tag>)
  .add('Secondary', () => <Tag type="secondary">Next</Tag>);

