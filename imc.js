const form = document.querySelector('#formulario')



form.addEventListener('submit', function (e) {
    e.preventDefault() // Previnir que o formulário ao atualizar a pagina de problema
    let inputPeso = e.target.querySelector('#peso')
    let inputAltura = e.target.querySelector('#altura')
    let peso = Number(inputPeso.value)
    let altura = Number(inputAltura.value)
    let red = document.querySelector('#red')
    let green = document.querySelector('#green')
    
    
    verifica_input (peso, altura)
    

    const imc = peso / (altura * altura)
    const nivimc = ['(Abaixo do peso)', '(Peso normal)', '(Sobrepeso)', '(Obesidade grau 1)', '(Obesidade grau 2)', '(Obesidade grau 3)']
    

    // Checagem do nivel de IMC 
    if(imc >= 39.9){
        red.innerHTML  = `Seu imc é ${imc.toFixed(2)} ${nivimc[5]}`
    } else if (imc >= 34.9){
        red.innerHTML = `Seu imc é ${imc.toFixed(2)} ${nivimc[4]}`
    } else if (imc >= 29.9) {
        red.innerHTML = `Seu imc é ${imc.toFixed(2)} ${nivimc[3]}`
    } else if (imc >= 24.9) {
        green.innerHTML = `Seu imc é ${imc.toFixed(2)} ${nivimc[2]}`
        green.innerHTML = ''
    } else if (imc >= 18.5){
        green.innerHTML = `Seu imc é ${imc.toFixed(2)} ${nivimc[1]}`
    } else if (imc < 18.5){
        red.innerHTML = `Seu imc é ${imc.toFixed(2)} ${nivimc[0]}`
    }


})



function verifica_input (peso, altura){
    if(!peso){ // Verifica se o valor de peso não é false
        alert('Favor informar os valores corretamente!')
        return
    }

    if(!altura){ // Verifica se o valor de altura não é false
        alert('Favor informar os valores corretamente!')
        return
    }
}