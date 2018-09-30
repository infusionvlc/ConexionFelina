import React from 'react';

import { storiesOf } from '@storybook/react';
import { action } from '@storybook/addon-actions';
import { linkTo } from '@storybook/addon-links';
import { Input, Alert } from '../../packs/ui-bundle';

storiesOf('Alert', module)
  .add('Standard', () => <Alert type='standard' content="Standard alert"/>)
  .add('Sky', () => <Alert type='sky' content="Sky alert"/>)
  .add('Fire', () => <Alert type='fire' content="Fire alert"/>)
  .add('Sun', () => <Alert type='sun' content="Sun alert"/>)
  .add('Sea', () => <Alert type='sea' content="Sea alert"/>)
; 