function substituirBloco(event) {
    event.preventDefault();
    document.getElementById('sign-box').classList.remove('ativo');
    document.getElementById('bloco2').classList.add('ativo');
}

function substituirPorTerceiro(event) {
    event.preventDefault();
    document.getElementById('bloco2').classList.remove('ativo');
    document.getElementById('bloco3').classList.add('ativo');
}

function voltarParaBloco1() {
    document.getElementById('bloco2').classList.remove('ativo');
    document.getElementById('sign-box').classList.add('ativo');
}

function voltarParaBloco2() {
    document.getElementById('bloco3').classList.remove('ativo');
    document.getElementById('bloco2').classList.add('ativo');
}

function finalizarCadastro(event) {
    event.preventDefault();
    alert("Cadastro finalizado com sucesso.");
}