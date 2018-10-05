import React from 'react';

import { storiesOf } from '@storybook/react';
import { action } from '@storybook/addon-actions';
import { linkTo } from '@storybook/addon-links';
import { Pagination } from '../../packs/ui-bundle';

storiesOf('Pagination', module).add('Pagination', () => (
  <Pagination type='page' />
));
