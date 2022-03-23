class ValidaCPF{
    constructor(cpfEnviado){
        Object.defineProperty(this, 'cpfLimpo', {
            writable: false,
            enumerable: true,
            configurable: false,
            value: cpfEnviado.replace(/\D+/g, '')
        })
    }

    Sequencia(){ // checar se são 11 números iguais
        return this.cpfLimpo.charAt(0).repeat(11) === this.cpfLimpo 
    }

    geraNovoCpf (){
        const cpfSemDigitos = this.cpfLimpo.slice(0, -2) // Coleta o Cpf sem 2 ultimos numeros
        const digito1 = ValidaCPF.geraDigito(cpfSemDigitos) // 
        const digito2 = ValidaCPF.geraDigito(cpfSemDigitos + digito1)
        this.novoCPF = cpfSemDigitos + digito1 + digito2
    }

    static geraDigito(cpfSemDigitos) {
        let total = 0
        let reverso = cpfSemDigitos.length + 1

        for(let StrNumerica of cpfSemDigitos) {
            total += reverso * Number(StrNumerica)
            reverso--
        }
        const digito = 11 - (total % 11)
        return digito <= 9 ? String(digito) : '0'
    }

    valida(){
        if(!this.cpfLimpo) return false // Checar se recebeu o CPF
        if (typeof this.cpfLimpo !== 'string') return false // Checar se o cpf é uma string
        if (this.cpfLimpo.length !== 11) return false // checar tamanho do CPF
        if (this.Sequencia()) return false
        this.geraNovoCpf()
        
        
        return this.novoCPF === this.cpfLimpo
    }


}

let validacpf = new ValidaCPF('070.987.720-03')
if (validacpf.valida()){
    console.log('CPF válido')
} else {
    console.log('CPF inválido')
}