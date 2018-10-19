import ReactOnRails from 'react-on-rails';
import Input from '../bundles/UI/components/Input/Input';
import Picture from '../bundles/UI/components/Picture/Picture';
import Alert from '../bundles/UI/components/Alert/Alert';
import Card from '../bundles/UI/components/Card/Card';
import Button from '../bundles/UI/components/Button/Button';
import Sidebar from '../bundles/UI/components/Sidebar/Sidebar';
import Switch from '../bundles/UI/components/Switch/Switch';
import TextArea from '../bundles/UI/components/TextArea/TextArea';
import Avatar from '../bundles/UI/components/Avatar/Avatar';

// This is how react_on_rails can see the HelloWorld in the browser.
ReactOnRails.register({
  Input,
  Picture,
  Alert,
  Button,
  Card,
  Switch,
  Sidebar,
  TextArea,
  Avatar
});
export { Input, Picture, Alert, Button, Card, Switch, TextArea, Avatar, Sidebar };
