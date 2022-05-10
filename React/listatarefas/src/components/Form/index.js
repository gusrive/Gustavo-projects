import React from "react";
import PropTypes from 'prop-types'
import { FaPlus } from "react-icons/fa";
import './Form.css'

export default function Form({handleChange, handleSubmit, novaTArefa}) {
  return (
    <form onSubmit={handleSubmit} className="form">
          <input
            onChange={handleChange}
            type="text"
            value={novaTArefa}/>
          <button type="submit">
            <FaPlus/>
          </button>
        </form>
  )
}



Form.propTypes = {
  handleChange: PropTypes.func.isRequired,
  handleSubmit: PropTypes.func.isRequired,
  novaTArefa: PropTypes.string.isRequired,
}
