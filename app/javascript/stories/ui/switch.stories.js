import React from 'react';
import { storiesOf } from '@storybook/react';
import { action } from '@storybook/addon-actions';
import { Switch } from '../../packs/ui-bundle';


storiesOf('Switch', module)
  .add('default', () => <Switch onChange={action('switch changed')} />)
  .add('starting value true', () => <Switch defaultChecked />)
  .add('large', () => <Switch onLabel="Male" offLabel="Female" onChange={action('switch changed')} large />);
