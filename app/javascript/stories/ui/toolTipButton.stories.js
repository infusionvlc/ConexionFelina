import React from 'react';

import { storiesOf } from '@storybook/react';
import { Button } from '../../packs/ui-bundle';
import { ToolTipButton } from '../../packs/ui-bundle';

const button = <Button type="primary">Next</Button>;

storiesOf('ToolTip', module)
  .add('Top', () => <ToolTipButton type="primary"  placement="top" text="Top Tooltip">TOP</ToolTipButton>)
  .add('Right', () => <ToolTipButton type="primary" placement="right" text="Right Tooltip">RIGHT</ToolTipButton>)
  .add('Bottom', () =><ToolTipButton type="primary" placement="bottom" text="Bottom Tooltip">BOTTOM</ToolTipButton>)
  .add('Left', () => <ToolTipButton type="primary" placement="left" text="Left Tooltip">LEFT</ToolTipButton>)
  ;