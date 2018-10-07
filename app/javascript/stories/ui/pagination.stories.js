import React from 'react';

import { storiesOf } from '@storybook/react';
import { action } from '@storybook/addon-actions';
import { linkTo } from '@storybook/addon-links';
import { Pagination } from '../../packs/ui-bundle';

storiesOf('Pagination', module)
  .add('Pagination', () => (<Pagination type='page' />))
  .add('Pagination (5-2)', () => (<Pagination type='page' nrPages='5' curPage='2' />))
  .add('Pagination (9-9)', () => (<Pagination type='page' nrPages='9' curPage='9' />))
  .add('Pagination (20-5)', () => (<Pagination type='page' nrPages='20' curPage='5' />));
