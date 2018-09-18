import React from 'react';

import { storiesOf } from '@storybook/react';
import { action } from '@storybook/addon-actions';
import { linkTo } from '@storybook/addon-links';

import { Picture } from '../../packs/ui-bundle';


storiesOf('Picture', module)
  .add('Basic usage', () => <Picture source="http://www.nyalatours.com/blog/wp-content/uploads/2017/03/10544419_713059368765067_1478240416863347491_n.jpg" alt_text="Imagen de prueba"></Picture>)
;