import React from 'react';
import { storiesOf } from '@storybook/react';
import { action } from '@storybook/addon-actions';
import { linkTo } from '@storybook/addon-links';
import { Pagination } from '../../packs/ui-bundle';

storiesOf('Pagination', module)
    .add('Pagination', () => (<Pagination type='page' />))
    .add('Pagination 1 of 5', () => (<Pagination type='page' nPages='5' currentPage='1' />))
    .add('Pagination 3 of 5', () => (<Pagination type='page' nPages='5' currentPage='3' />))
    .add('Pagination 5 of 5', () => (<Pagination type='page' nPages='5' currentPage='5' />));