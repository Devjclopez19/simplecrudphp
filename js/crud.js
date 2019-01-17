const tabla = document.getElementById('tabla-libro');
const divRegistrar = document.getElementById('registrar-libro');
const divEditar = document.getElementById('editar-libro');
const formEditar = divEditar.querySelector('form')

tabla.addEventListener('click',(e) => {
  // la presionar el boton de editar
  if(e.target.localName === "button"){
    //Obtenemos el id del libro
    let ids = e.target.getAttribute('id').split('-');
    let idLibro = ids[0];
    let idAutor = ids[1];
  	// Ocultamos el div de registrar
  	divRegistrar.style.display = "none";
  	// Mostramos el div de editar
  	divEditar.style.display = "block";
  	// Obtenemos la informacion a editar
  	let datos = e.target.parentElement.parentElement.children;
  	// capturamos los input del form editar
    let id = formEditar.editarId
  	let titulo = formEditar.editarTitulo
  	let editorial = formEditar.editarEditorial
  	let anio = formEditar.editarAnio
    let autores = Array.from(formEditar.editarAutor.options)
  	// mostrar la informacion en los inputs
    id.value = idLibro
  	titulo.value = datos[1].textContent.trim();
  	editorial.value = datos[4].textContent.trim();
  	anio.value = datos[5].textContent.trim();
    //Activar la opcion seleccionada de los autores
    autores.forEach((opcion,index) => {
      if(opcion.value === idAutor){
        autores[index].selected = true;
      }
    })
  }
});

// Editar 
const btnCancelar = document.getElementById('btn-cancelar');
btnCancelar.addEventListener('click',function(){
  e.preventDefault();
  // Ocultamos el div de editar
  divEditar.style.display = "none";
  // Mostramos el div de registrar
  divRegistrar.style.display = "block";  
})