const resultStart = document.querySelectorAll('button[type=submit]');
      resultStart.forEach((btn) => {
        btn.addEventListener('click', () => {
          setTimeout(() => {
            btn.disabled = true
          }, 1);
        })
      })