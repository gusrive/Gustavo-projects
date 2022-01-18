function contar() {
    var txtn1 = window.document.querySelector('input#v1')
    var txtn2 = window.document.querySelector('input#v2')
    var txtpasso = window.document.querySelector('input#passo')
    var res = window.document.querySelector('div#res')
    var inicio = Number(txtn1.value) // Mudando para número inteiro
    var fim = Number(txtn2.value) // Mudando para número inteiro
    var passo = Number(txtpasso.value) // Mudando para número inteiro


    
    for(var v1=inicio;v1<=fim;inicio = v1+passo){
        res.innerHTML = '<p>Contando</p>'
        res.innerHTML = `<p> ${v1}</p>`
    }
         
}









