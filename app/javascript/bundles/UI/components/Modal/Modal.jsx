import React from 'react';
import css from './Modal.scss';

const Modal = ({ text }) => {
  return <div className="modal">
    <span className='close-button'>&times;</span>
    <div className="modal-inner">
      {text}
    </div>
  </div>
};

export default Modal;