import React from 'react'

import { storiesOf } from '@storybook/react';
import { Sidebar } from '../../packs/ui-bundle';

const links = [
  {
    title: "Cats",
    url: "#"
  },
  {
    title: "Colonies",
    url: "#"
  },
  {
    title: "Tasks",
    url: "#"
  },
  {
    title: "Adoptions",
    url: "#"
  },
  {
    title: "Sponsors",
    url: "#"
  },
  {
    title: "Messages",
    url: "#"
  },
  {
    title: "Sign out",
    url: "#"
  },
]

storiesOf('Sidebar', module)
  .add('Basic', () => <Sidebar links={links} />)
