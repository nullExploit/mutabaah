const rating = document.querySelectorAll('.rating input');

            rating.forEach((rate) => {
                rate.addEventListener("keypress", (evt) => {
                    if (evt.which != 8 && evt.which != 0 && evt.which < 48 || evt.which > 57 ) {
                        evt.preventDefault();
                    }
                });
            })

            const formSub = document.querySelector('input[type=submit]');
            formSub.addEventListener('click', () => {
              setTimeout(() => {
                formSub.disabled = true
              }, 1);
            })

            const backForm = document.querySelector('button[type=submit]');
            backForm.addEventListener('click', () => {
            setTimeout(() => {
                backForm.disabled = true
            }, 1);
            })