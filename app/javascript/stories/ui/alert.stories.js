import React from 'react';

import { storiesOf } from '@storybook/react';
import { action } from '@storybook/addon-actions';
import { linkTo } from '@storybook/addon-links';
import { Input, Alert } from '../../packs/ui-bundle';

storiesOf('Alert', module)
  .add('Primary', () => <Alert type='primary' content='Standard alert' />)
  .add('Success', () => <Alert type='success' content='Success alert' />)
  .add('Warning', () => <Alert type='warning' content='Warning alert' />)
  .add('Error', () => <Alert type='error' content='Error alert' />)
  .add('Disabled', () => <Alert type='disabled' content='Disabled alert' />);
