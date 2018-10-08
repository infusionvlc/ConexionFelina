import React from 'react'

import { storiesOf } from '@storybook/react';
import { Input, Alert } from '../../packs/ui-bundle';

storiesOf('Alert', module)
  .add('Primary', () => <Alert type='primary' children="Standard alert"/>)
  .add('Success', () => <Alert type='success' children="Success alert"/>)
  .add('Warning', () => <Alert type='warning' children="Warning alert"/>)
  .add('Error', () => <Alert type='error' children="Error alert"/>)
  .add('Disabled', () => <Alert type='disabled' children="Disabled alert"/>);
