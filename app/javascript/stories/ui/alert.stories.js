import React from 'react'

import { storiesOf } from '@storybook/react';
import { Input, Alert } from '../../packs/ui-bundle';

storiesOf('Alert', module)
<<<<<<< HEAD
  .add('Primary', () => <Alert type='primary' content='Standard alert' />)
  .add('Success', () => <Alert type='success' content='Success alert' />)
  .add('Warning', () => <Alert type='warning' content='Warning alert' />)
  .add('Error', () => <Alert type='error' content='Error alert' />)
  .add('Disabled', () => <Alert type='disabled' content='Disabled alert' />);
=======
  .add('Primary', () => <Alert type='primary' children="Standard alert"/>)
  .add('Success', () => <Alert type='success' children="Success alert"/>)
  .add('Warning', () => <Alert type='warning' children="Warning alert"/>)
  .add('Error', () => <Alert type='error' children="Error alert"/>)
  .add('Disabled', () => <Alert type='disabled' children="Disabled alert"/>);
>>>>>>> upstream/react
