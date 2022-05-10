import React, { Component } from "react";
import './Main.css'

// FORM
import Form from "./Form";

// Botões tarefas
import { FaEdit, FaWindowClose } from 'react-icons/fa'

export default class Main extends Component {
  state = {
    novaTArefa: '',
    tarefas: [],
    index: -1
  }

  componentDidMount(){
    const tarefas = JSON.parse(localStorage.getItem('tarefas'))

    if (!tarefas) return

    this.setState({tarefas})
  }

  componentDidUpdate(prevProps, prevState){
    const {tarefas} = this.state

    if (tarefas === prevState.tarefas) return

    localStorage.setItem('tarefas', JSON.stringify(tarefas))
  }

  handleSubmit = (e) => {
    e.preventDefault()
    console.log('Oi')
    const { tarefas, index } = this.state
    let {novaTArefa} = this.state
    novaTArefa = novaTArefa.trim()

    // Checa se o indece existe
    if (tarefas.indexOf(novaTArefa) !== -1) return

    const novasTarefas = [... tarefas]

    if (index === -1){
      this.setState({
      tarefas: [... novasTarefas, novaTArefa],
      novaTArefa: ''
      })
    } else {

      novasTarefas[index] = novaTArefa


      this.setState({
        tarefas: [...novasTarefas],
        index: -1,
        novaTArefa: ''
      })
    }



  }

  handleEditar = (e, index) => {
    const { tarefas } = this.state

    this.setState({
      index,
      novaTArefa: tarefas[index]
    })
  }

  handleDeletar = (e, index) => {
    const {tarefas} = this.state
    const novasTarefas = [...tarefas]
    novasTarefas.splice(index, 1)

    this.setState({
      tarefas: [... novasTarefas],
    })
  }

  handleChange = (e) => {
    this.setState({
      novaTArefa: e.target.value,
    })
  }

  render() {
    const { novaTArefa, tarefas } = this.state

    return (
      <div className="main">
        <h1>Lista de Tarefas</h1>

        <Form
          handleSubmit = {this.handleSubmit}
          handleChange = {this.handleChange}
          novaTArefa = {novaTArefa}
        />

        <ul className="tarefas">
          { tarefas.map((tarefa, index) => (
            <li key={tarefa}>
              {tarefa}

              <span>
                <FaEdit
                  onClick={(e) => this.handleEditar(e, index)}
                  className="editar"/>
                <FaWindowClose
                  onClick={(e) => this.handleDeletar(e, index)}
                  className="deletar"/>
              </span>

              </li>
          )) }
        </ul>
      </div>
    )
  }
}
