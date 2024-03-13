const murojaahShow = document.querySelectorAll('button[type=submit]');
    murojaahShow.forEach((btn) => {
        btn.addEventListener('click', () => {
          setTimeout(() => {
            btn.disabled = true
          }, 1);
        })
    })