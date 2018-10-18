import React from 'react';
import css from './Modal.scss';

class Modal extends React.Component {
  constructor(props) {
    super(props);
    this.state = { isOpen: true };
    console.log('isOpen is: ' + this.state.isOpen)
  }

  toggleModal = () => {
    this.setState({
      isOpen: !this.state.isOpen
    });
  }

  render() {
    // Render nothing if the "show" prop is false
    if (!this.state.isOpen) {
      return null;
    }
    return (
      <div className="modal">
        <div className="modal-header">
          <span className="close-button" onClick={this.toggleModal}>&times;</span>
        </div>
        <div class="modal-inner">
          {this.props.text}
        </div>
      </div>
    );
  }
}

const props = {};

export default Modal;