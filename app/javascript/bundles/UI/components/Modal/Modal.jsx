import React from 'react';
import css from './Modal.scss';

const Modal = ({ text }) => {
  return <div className="modal">
    <div className="modal-inner">
      {text}
    </div>
  </div>
};

export default Modal;