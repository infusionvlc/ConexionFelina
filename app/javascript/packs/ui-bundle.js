import ReactOnRails from 'react-on-rails';
import Input from '../bundles/UI/components/Input/Input';
import Picture from '../bundles/UI/components/Picture/Picture';
import Alert from '../bundles/UI/components/Alert/Alert';
import Modal from '../bundles/UI/components/Modal/Modal';

// This is how react_on_rails can see the HelloWorld in the browser.
ReactOnRails.register({
  Input,
  Picture,
  Alert,
  Modal
});
export { Input, Picture, Alert, Modal };