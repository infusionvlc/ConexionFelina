import React from 'react';

const Modal = ({ text }) => {
  return <div className="modal">
    <div className="modal modalInterior">
      {text}
    </div>
  </div>
};

export default Modal;