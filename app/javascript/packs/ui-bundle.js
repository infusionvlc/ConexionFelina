import ReactOnRails from 'react-on-rails';

import Button from '../bundles/UI/components/Button';
import Tag from '../bundles/UI/components/Tag/Tag';

// This is how react_on_rails can see the HelloWorld in the browser.
ReactOnRails.register({
  Button,
  Tag
});

export {Button, Tag};