import React from 'react';

import { storiesOf } from '@storybook/react';
import { Card } from '../../packs/ui-bundle';

storiesOf('Card', module)
  .add('with main text, body text and footer text',
    () => <Card mainText='Feed the cats'
      bodyText='Please, bring some food for the cats. Also remember to change their water bowls.'
      footerText='Mark as completed' />)
  .add('with main text and body text',
    () => <Card mainText='Feed the cats'
      subText='Please, bring some food for the cats. Also remember to change their water bowls.' />)
  .add('with only main text',
    () => <Card mainText='Feed the cats' />);