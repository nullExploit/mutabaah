const para = document.querySelectorAll('.para p');
        const subHeading = document.querySelectorAll('.para h2');

        para.forEach(el => {
            if (el.textContent == '') {
                el.nextElementSibling.remove()
                el.remove()
            }
        });

        subHeading.forEach(el => {
            if (el.textContent == '') {
                el.nextElementSibling.remove()
                el.remove()
            }
        });