import React from 'react';

import { storiesOf } from '@storybook/react';
import { Button } from '../../packs/ui-bundle';
import { ToolTipButton } from '../../packs/ui-bundle';

const button = <Button type="primary">Next</Button>;

storiesOf('ToolTip', module)
  .add('Top', () => <ToolTipButton buttonType="primary"  placement="top" text="Top Tooltip">TOP</ToolTipButton>)
  .add('Right', () => <ToolTipButton buttonType="primary" placement="right" text="Right Tooltip">RIGHT</ToolTipButton>)
  .add('Bottom', () =><ToolTipButton buttonType="primary" placement="bottom" text="Bottom Tooltip">BOTTOM</ToolTipButton>)
  .add('Left', () => <ToolTipButton buttonType="primary" placement="left" text="Left Tooltip">LEFT</ToolTipButton>)
  ;