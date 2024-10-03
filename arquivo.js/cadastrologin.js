const container = document.getElementById('container');
const registerBtn = document.getElementById('register');
const loginBtn = document.getElementById('login');

registerBtn.addEventListener('click', () => {
    container.classList.add("active");
});

loginBtn.addEventListener('click', () => {
    container.classList.remove("active");
});


let nome = document.getElementById("Nome");
let email = document.querySelector("E-mail");
let Senha = document.getElementById("Senha")

if (email) {
    email.addEventListener("input", () => {
      const usuario = email.value;
      if (usuario.length >= 3) {
        email.classList.remove("error");
        email.classList.add("correct");

  
      } else if (usuario.length === 0) {
        email.classList.remove("correct");
        email.classList.remove("error");

      } else {
        email.classList.remove("correct");
        email.classList.add("error");

      }
    });
  }
  
  Senha.addEventListener("input", () => {
    const Senha = Senha.value;
    if (usuario.length >= 5) {
      Senha.classList.remove("error");
      Senha.classList.add("correct");


    } else if (usuario.length === 0) {
      Senha.classList.remove("correct");
      Senha.classList.remove("error");

    } else {
      Senha.classList.remove("correct");
      Senha.classList.add("error");

    }
  });
