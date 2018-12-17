import ReactOnRails from 'react-on-rails';
import Input from '../bundles/UI/components/Input/Input';
import Picture from '../bundles/UI/components/Picture/Picture';
import Alert from '../bundles/UI/components/Alert/Alert';
import Button from '../bundles/UI/components/Button/Button';
import Card from '../bundles/UI/components/Card/Card';
import Switch from '../bundles/UI/components/Switch/Switch';
import Modal from '../bundles/UI/components/Modal/Modal';
import TextArea from '../bundles/UI/components/TextArea/TextArea';
import Avatar from '../bundles/UI/components/Avatar/Avatar';
import ProgressBar from '../bundles/UI/components/ProgressBar/ProgressBar';
import Sidebar from '../bundles/UI/components/Sidebar/Sidebar';
import Pagination from '../bundles/UI/components/Pagination/Pagination';
import RadioButton from '../bundles/UI/components/RadioButton/RadioButton';
import RadioGroup from '../bundles/UI/components/RadioGroup/RadioGroup';
import Tag from '../bundles/UI/components/Tag/Tag';
import Dropdown from '../bundles/UI/components/Dropdown/Dropdown';

// This is how react_on_rails can see the HelloWorld in the browser.
ReactOnRails.register({
    Input,
    Picture,
    Alert,
    Button,
    Card,
    Dropdown,
    Switch,
    Modal,
    TextArea,
    Avatar,
    Sidebar,
    ProgressBar,
    Pagination,
    RadioButton,
    RadioGroup,
    Tag
});