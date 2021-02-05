import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Espaço de liberdade!", 
        "Minha casa, minhas regras", 
        "Ele não!!!", 
        "Ele nunca!!!", 
        "Ele jamais!!!"
    ],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };