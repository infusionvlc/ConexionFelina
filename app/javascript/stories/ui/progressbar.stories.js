import React from 'react';

import { storiesOf } from '@storybook/react';
import { action } from '@storybook/addon-actions';
import { linkTo } from '@storybook/addon-links';
import { ProgressBar } from '../../packs/ui-bundle';


storiesOf('ProgressBar', module)
  .add('ProgressBar with value & max', () => <ProgressBar max="100" value="25" />)
  .add('ProgressBar with value & max & green', () => <ProgressBar max="100" value="25" color="green"/>)
  .add('ProgressBar with value & max & blue', () => <ProgressBar max="100" value="25" color="blue"/>)
;