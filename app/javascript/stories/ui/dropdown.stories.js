import React from 'react';

import { storiesOf } from '@storybook/react';
import { Dropdown } from '../../packs/ui-bundle';

const gatos = [
    {label: 'Primer gato', value: 1},
    {label: 'Segundo gato', value: 2},
    {label: 'Tercer gato', value: 3},
    {label: 'Cuarto gato', value: 4},
];
storiesOf('Dropdown', module)
    .add('Dropdown', () => 
        <Dropdown items={gatos}/>
    );