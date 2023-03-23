const list = document.querySelector('#list-entregables');
const btnEntregable = document.querySelector('#entregables');

btnEntregable.addEventListener('click', toggleList);

function toggleList(event){
    list.classList.toggle('inactive');
}