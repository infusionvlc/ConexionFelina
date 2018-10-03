import React from 'react';

import { storiesOf } from '@storybook/react';
// import { action } from '@storybook/addon-actions';
// import { linkTo } from '@storybook/addon-links';
import { Card } from '../../packs/ui-bundle';

storiesOf('Card', module)
  .add('with main text and sub text and completed text',
    () => <Card mainText='Feed the cats'
      subText='Please, bring some food for the cats. Also remember to change their water bowls.'
      completedText='Mark as completed' />)
  .add('with main text and sub text',
    () => <Card mainText='Feed the cats'
      subText='Please, bring some food for the cats. Also remember to change their water bowls.' />)
  .add('with main text',
    () => <Card mainText='Feed the cats' />);