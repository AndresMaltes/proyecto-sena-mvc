const contraseña = document.querySelector('.input-password')
const confirmarContraseña = document.querySelector('#confirm-password')
const username = document.querySelector('.input-username')
const email = document.querySelector('.input-email')
const date = document.querySelector('.input-date')

const buttonRegistrar = document.querySelector('.login-button')
var buttonEye = document.querySelector('#eye')
var buttonEye2 = document.querySelector('#eye2')

buttonRegistrar.addEventListener('click', registrarDatos)
buttonEye.addEventListener('click',mostrarPassword)
function mostrarPassword(){
    console.log('hola');
    if(contraseña.type === "password"){
        contraseña.type = "text"
        buttonEye.style.opacity = 0.8 
    }else{
        contraseña.type = "password"
        buttonEye.style.opacity = 0.2
    }
}

buttonEye2.addEventListener('click',mostrarPassword2)
function mostrarPassword2(){
    console.log('hola');
    if(confirmarContraseña.type === "password"){
        confirmarContraseña.type = "text"
        buttonEye2.style.opacity = 0.8 
    }else{
        confirmarContraseña.type = "password"
        buttonEye2.style.opacity = 0.2
    }
}

function registrarDatos(event) {
    event.preventDefault();
    if (contraseña.value == confirmarContraseña.value){
    alert('Los datos son: Usuario: ' + username.value + ' con email: ' + email.value + ' Fecha de Nacimiento: ' + date.value)
    }else{
        alert('Verifique los campos, no son iguales')
    }
}