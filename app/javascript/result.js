const date = document.querySelectorAll('.date'),
  removeChar = () => {
    date.forEach(el => {
      // if (el.innerText.includes('UTC')) {
      //   el.innerText = el.innerText.replace('UTC', '');
      // }
      // el.innerText = el.innerText.slice(0, 10) + '\n' + el.innerText.slice(11, 16);
    })
  }

  removeChar();