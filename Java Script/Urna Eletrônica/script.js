let seuVotoPara = document.querySelector('.d-1-1'); // Controla o voto
let cargo = document.querySelector('.d-1-2'); // Controla o cargo e o altera
let descricao = document.querySelector('.d-1-4'); // Controla Descricao do candidato
let aviso = document.querySelector('.d-2'); // Controla infos 
let lateral = document.querySelector('.d-1-right'); // vai controlar as fotos dos candidatos
let numeros = document.querySelector('.d-1-3');

// Variaveis de controle de ambiente // Escopo global

let etapaAtual = 0;
let numero = '';
let vtBranco = false

function iniciaEtapa (){ 
    let etapa = etapas[etapaAtual];
    let numeroHtml = '';
    numero = '';
    vtBranco = false;

    for(let i=0; i< etapa.numeros; i++){
        if(i === 0) {
        numeroHtml += '<div class="numero pisca"></div>'
        } else {
            numeroHtml += '<div class="numero"></div>'
        }
    }

    seuVotoPara.style.display = 'none'; 
    cargo.innerHTML = etapa.titulo;
    descricao.innerHTML = '';
    aviso.style.display = 'none';
    lateral.innerHTML = '';
    numeros.innerHTML = numeroHtml;




}

function atualizaInterface(){ // Ira limpar e adicionar informacoes quando necessario
    let etapa = etapas[etapaAtual];
    let candidato = etapa.candidatos.filter((item) => {
        if(item.numero === numero) {
            return true
        } else {
            return false
        }
    })

    if(candidato.length > 0){
        candidato = candidato[0]
        seuVotoPara.style.display = 'block';
        aviso.style.display = 'block'
        descricao.innerHTML = `Nome: ${candidato.nome}<br/>Partido: ${candidato.partido}`;
        let fotosHtml = ''
        
        for(let i in candidato.fotos) {
            if(candidato.fotos[i].small){
                fotosHtml += `<div class="d-1-image small"><img src="images/${candidato.fotos[i].url}" alt="">${candidato.fotos[i].legenda}</div>`              
            }else {
                fotosHtml += `<div class="d-1-image"><img src="images/${candidato.fotos[i].url}" alt="">${candidato.fotos[i].legenda}</div>`
            }
            
            
        }

        lateral.innerHTML = fotosHtml
    } else {
        seuVotoPara.style.display = 'block';
        aviso.style.display = 'block'
        descricao.innerHTML = '<div class="aviso--grande pisca">VOTO NULO</div>'
    }
    
}



function clicou(n) { // Funcao vai verificar qual botao foi clicado e inserir o numero
    let elNum = document.querySelector('.numero.pisca');
    if(elNum !== null){
        elNum.innerHTML = n;
        numero = `${numero}${n}`;
        
        elNum.classList.remove('pisca')
        if(elNum.nextElementSibling !== null){
        elNum.nextElementSibling.classList.add('pisca')
        } else {
            atualizaInterface()
        }
    }
}

function btbranco() {
    numero = ''
    vtBranco = true;
    seuVotoPara.style.display = 'block'
    aviso.style.display = 'block'
    numeros.innerHTML = ''
    descricao.innerHTML = '<div class="aviso--grande pisca">VOTO EM BRANCO</div>'
    lateral.innerHTML = ''
    
}

function btcorrige() {
    iniciaEtapa()
}

function btconfirma() {
    let etapa = etapas[etapaAtual]
    let votoConfirmado = false;

    if (vtBranco === true){
        votoConfirmado = true
        console.log("Confirmado como Branco")
    } else if (numero.length === etapa.numero){
        votoConfirmado = true
        console.log('Confirmado com '+numero)
}
    if(votoConfirmado){
        etapaAtual++;
        if(etapas[etapaAtual] !== undefined){
            iniciaEtapa()
        } else {
            document.querySelector('.tela').innerHTML = '<div class="aviso--gigante pisca">FIM</div>'
        }
    }
}

iniciaEtapa()
