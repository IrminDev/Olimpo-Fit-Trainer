//registro
//valores
const contra = document.getElementById("contrasign")
const confirmar = document.getElementById("confirmar")
const nombre = document.getElementById("nombre")
const estatura = document.getElementById("estatura")
const peso = document.getElementById("peso")
const apellido = document.getElementById("apellido")
const correo = document.getElementById("correosign")
const signup = document.getElementById("registro")
const parrafo = document.getElementById("advertencias")

//cajas
const cajacontra = document.getElementById("contrasign")
const cajaconfirmar = document.getElementById("confirmar")
const cajanombre = document.getElementById("nombre")
const cajaapellido = document.getElementById("apellido")
const cajacorreo = document.getElementById("correosign")



function enviarRegistro(){
	let warnings = ""
	let entrar = false
	let regexmail = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/
	let regexname = /^([A-ZÁÉÍÓÚ]{1}[a-zñáéíóú]+[\s]*)+$/

	parrafo.innerHTML = ""
	cajanombre.classList.remove('incorrecto')
	cajaconfirmar.classList.remove('incorrecto')
	cajacontra.classList.remove('incorrecto')
	cajacorreo.classList.remove('incorrecto')
	cajaapellido.classList.remove('incorrecto')
	//nombre
	if(nombre.value.length < 3 || nombre.value.length > 20){
        warnings += 'El nombre no es v&#225;lido <br>'
        entrar = true
        cajanombre.classList.add('incorrecto')
	}
	else{
		if(!regexname.test(nombre.value)){
			warnings += 'El nombre no es v&#225;lido <br>'
            entrar = true
            cajanombre.classList.add('incorrecto')
		}
	}

	//apellido
	if(apellido.value.length < 2 || apellido.value.length > 20 ){
		warnings += 'El apellido no es v&#225;lido <br>'
        entrar = true
        cajaapellido.classList.add('incorrecto')
	}
	else{
		if(!regexname.test(apellido.value)){
			warnings += 'El apellido no es v&#225;lido <br>'
        	entrar = true
        	cajaapellido.classList.add('incorrecto')
		}
	}

	//correo
	if(!regexmail.test(correo.value)){
        warnings += 'El email no es v&#225;lido <br>'
        entrar = true
        cajacorreo.classList.add('incorrecto')
	}
	else
		if(correo.value.length > 30){
        	warnings += 'El email no es v&#225;lido <br>'
        	entrar = true
        	cajacorreo.classList.add('incorrecto')
        }

	//contraseñas
	if(contra.value.length < 4 || contra.value.length > 20){
        warnings += 'La contrase&#241;a no es v&#225;lida <br>'
        entrar = true
        cajacontra.classList.add('incorrecto')
	}

	if (contra.value !== confirmar.value){
        warnings += 'Las contrase&#241;as no coinciden <br>'
        entrar = true
        cajacontra.classList.add('incorrecto')
        cajaconfirmar.classList.add('incorrecto')
	}

	//advertencias
	if(entrar){
        parrafo.innerHTML = warnings
	}
        
    return !entrar;
}

//Diseño (interacción)
const loginform = document.querySelector("form.login");
const registroform = document.querySelector("form.registro");
const loginBtn = document.querySelector("label.login");
const registroBtn = document.querySelector("label.registro");
const registroLink = document.querySelector(".registro-link a");
const logintext = document.querySelector(".Titulo-texto .login");
const registrotext = document.querySelector(".Titulo-texto .registro");
const contenedor = document.querySelector(".Titulos");

registroBtn.onclick = (()=>{
	loginform.style.marginLeft = "-50%";
	logintext.style.marginLeft = "-50%";
	contenedor.style.height = "100%";
});

loginBtn.onclick = (()=>{
	loginform.style.marginLeft = "0";
	logintext.style.marginLeft = "0";
	contenedor.style.height = "66%";
});

registroLink.onclick = (()=>{
	registroBtn.click();
	return false;
});
