import React from 'react';

import { storiesOf } from '@storybook/react';
import { Modal } from '../../packs/ui-bundle';

storiesOf('Modal', module)
  .add('Modal', () => <Modal text="Hola" />);