import ReactOnRails from 'react-on-rails';
import Input from '../bundles/UI/components/Input/Input';
import Picture from '../bundles/UI/components/Picture/Picture';
import Alert from '../bundles/UI/components/Alert/Alert';
import Card from '../bundles/UI/components/Card/Card';
import Switch from '../bundles/UI/components/Switch/Switch';

// This is how react_on_rails can see the HelloWorld in the browser.
ReactOnRails.register({
  Input,
  Picture,
  Alert,
  Card,
  Switch
});
export { Input, Picture, Alert, Card, Switch };