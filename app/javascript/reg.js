const age = document.querySelector('.age input');
        age.addEventListener("keypress", (evt) => {
            if (evt.which != 8 && evt.which != 0 && evt.which < 48 || evt.which > 57 ) {
                evt.preventDefault();
            }
        });

        const details = document.querySelectorAll('.custom-select'),
        radios = document.querySelectorAll('.radios'),
        radios1 = document.getElementsByName('user[education]'),
        radios2 = document.getElementsByName('user[job]'),
        itemRadioName = ['SD', 'SMP', 'SMA', 'S1', 'Lain-lain'],
        jobRadioName = ['Pelajar', 'Pegawai', 'Wiraswasta', 'Lain-lain'];

        radios[0].addEventListener('change', () => {
            for (let radio of radios1) {
                if (itemRadioName.includes(radio.title)) {
                    details[0].removeAttribute('open')
                }
            }
        });

        radios[1].addEventListener('change', () => {
            for (let radio of radios2) {
                if (jobRadioName.includes(radio.title)) {
                    details[1].removeAttribute('open')
                }
            }
        });

        const signUp = document.querySelector('input[type=submit]');
        signUp.addEventListener('click', () => {
          setTimeout(() => {
            signUp.disabled = true
          }, 1);
        })