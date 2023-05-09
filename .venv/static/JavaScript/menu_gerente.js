//Instanciamos el contenido de cada una de las pestañas del menu
const listUser = document.querySelector('#list-usuarios');
const listProyecto = document.querySelector('#list-proyecto');
const listAsistencia = document.querySelector('#list-asistencia');
const listGrupoTrabajo = document.querySelector('#list-grupo-trabajo');
const listActividades = document.querySelector('#list-actividades');
const listEntregables = document.querySelector('#list-entregables');
const listEncargado = document.querySelector('#list-encargado');

//Instanciamos los botones del menu
const btnUsuario = document.querySelector('#usuario');
const btnProyectos = document.querySelector('#proyectos');
const btnAsistencia = document.querySelector('#asistencia');
const btnGrupoTrabajo = document.querySelector('#grupo-trabajo');
const btnActividades = document.querySelector('#actividades');
const btnEntregable = document.querySelector('#entregables');
const btnEncargado = document.querySelector('#encargado');



btnUsuario.addEventListener('click', toggleListuser);
btnProyectos.addEventListener('click', toggleListProy);
btnAsistencia.addEventListener('click', toggleListAsist);
btnGrupoTrabajo.addEventListener('click', toggleListGrupoTra);
btnActividades.addEventListener('click', toggleListActividades);
btnEntregable.addEventListener('click', toggleListEntregable);
btnEncargado.addEventListener('click', toggleListEncargado);

function toggleListEntregable(event){
    listEntregables.classList.toggle('inactive');
    listUser.classList.add('inactive');
    listProyecto.classList.add('inactive');
    listAsistencia.classList.add('inactive');
    listGrupoTrabajo.classList.add('inactive');
    listActividades.classList.add('inactive');
    listEncargado.classList.add('inactive');

}
function toggleListuser(event){
    listUser.classList.toggle('inactive');
    listProyecto.classList.add('inactive');
    listAsistencia.classList.add('inactive');
    listGrupoTrabajo.classList.add('inactive');
    listActividades.classList.add('inactive');
    listEntregables.classList.add('inactive');
    listEncargado.classList.add('inactive');
}

function toggleListProy(event){
    listProyecto.classList.toggle('inactive');
    listUser.classList.add('inactive');
    listAsistencia.classList.add('inactive');
    listGrupoTrabajo.classList.add('inactive');
    listActividades.classList.add('inactive');
    listEntregables.classList.add('inactive');
    listEncargado.classList.add('inactive');
}

function toggleListAsist(event){
    listAsistencia.classList.toggle('inactive');
    listUser.classList.add('inactive');
    listProyecto.classList.add('inactive');
    listGrupoTrabajo.classList.add('inactive');
    listActividades.classList.add('inactive');
    listEntregables.classList.add('inactive');
    listEncargado.classList.add('inactive');
}

function toggleListGrupoTra(event){
    listGrupoTrabajo.classList.toggle('inactive');
    listUser.classList.add('inactive');
    listProyecto.classList.add('inactive');
    listAsistencia.classList.add('inactive');
    listActividades.classList.add('inactive');
    listEntregables.classList.add('inactive');
    listEncargado.classList.add('inactive');
}

function toggleListActividades(event){
    listActividades.classList.toggle('inactive');
    listUser.classList.add('inactive');
    listProyecto.classList.add('inactive');
    listAsistencia.classList.add('inactive');
    listGrupoTrabajo.classList.add('inactive');
    listEntregables.classList.add('inactive');
    listEncargado.classList.add('inactive');
}
function toggleListEncargado(event){
    listEncargado.classList.toggle('inactive');
    listUser.classList.add('inactive');
    listProyecto.classList.add('inactive');
    listAsistencia.classList.add('inactive');
    listGrupoTrabajo.classList.add('inactive');
    listEntregables.classList.add('inactive');
    listActividades.classList.add('inactive');
}


