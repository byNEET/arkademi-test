const usernameValidity = username => /^[a-z0-9_]{5,12}$/.test(username);

const passwordValidity = password => /^[0-9]{1}[A-Z!]{5,}$/.test(password);

console.log(usernameValidity("fiona_mareta")); //true
console.log(usernameValidity("fionamareta99")); //false
console.log(usernameValidity("FIONA-mareta")); //false
console.log(passwordValidity("1WORLD!")); //true

const nilaiTengah = Math.floor(7 / 2);
console.log(nilaiTengah);
