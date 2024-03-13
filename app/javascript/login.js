const loginSub = document.querySelector('input[type=submit]');
        loginSub.addEventListener('click', () => {
          setTimeout(() => {
            loginSub.disabled = true
          }, 1);
        })

const signUpLink = document.querySelector('button[type=submit]');
        signUpLink.addEventListener('click', () => {
          setTimeout(() => {
            signUpLink.disabled = true
          }, 1);
        })
