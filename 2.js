const usernameValidity = username => /^[a-z0-9_]{5,12}$/.test(username);

const passwordValidity = password => /^[0-9]{1}[A-Z!]{5,}$/.test(password);

console.log(usernameValidity("1iona_mareta")); //true
console.log(usernameValidity("fionamareta99")); //false
console.log(usernameValidity("FIONA-mareta")); //false
console.log(passwordValidity("!WORLD1")); //true
