const rand = (min, max) => Math.floor(Math.random() * (max - min) + min) // gera numero aleatorio
const geraMaiuscula = () => String.fromCharCode(rand(65, 91))
const geraMinuscula = () => String.fromCharCode(rand(97, 123))
const geraNumero = () => String.fromCharCode(rand(48, 58))
const simbolos = ',.;~^[]{}!@#$%&*()_+=-?"'
const geraSimbolo = () => simbolos[rand(0, simbolos.length)]

// Ligação com o html
const senhaGerada = document.querySelector ('.senha-gerada') 
const quantCaracteres = document.querySelector ('.qtd-caracteres') 
const chkMaiusculas = document.querySelector ('.chk-maiusculas') 
const chkMiinusculas = document.querySelector ('.chk-minusculas') 
const chkNumeros = document.querySelector ('.chk-numeros') 
const chkSimbolos = document.querySelector ('.chk-simbolos')
const GerarSenha = document.querySelector('.gerar-senha')

function Click () {
    GerarSenha.addEventListener('click', () => {
        senhaGerada.innerHTML = gera()
    })
}

function gera (){
    const senha = geraSenha(
        quantCaracteres.value,
        chkMaiusculas.checked,
        chkMiinusculas.checked,
        chkNumeros.checked,
        chkSimbolos.checked
    )
    //return senha || 'Nenhuma Opção Selecionada'
    if(!quantCaracteres.value || quantCaracteres.value < 3 || quantCaracteres.value > 15){
        return senhaGerada.innerHTML = 'Informar o número de caracteres entre 3 e 15'
    }else {
        return senha || 'Favor selecionar ao menos uma opção'
    
    }
}

function geraSenha(quant, maiusculas, minusculas, numeros, simbolos) {
    const senhaArray = []
    quant = Number(quant)

    for(let i = 0; i< quant; i++){ // vai checar o parametro e caso for true executa a funcao
        maiusculas && senhaArray.push(geraMaiuscula())
        minusculas && senhaArray.push(geraMinuscula())
        numeros && senhaArray.push(geraNumero())
        simbolos && senhaArray.push(geraSimbolo())
    }
    return senhaArray.join('').slice(0, quant) // retorna a senha com a quantidade requisitada
}

 




