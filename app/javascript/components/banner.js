import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Espaço de liberdade!", 
        "Todos são bem vindos!!! =)",
        "Até que se prove o contrário...", 
        "Ele não!!!", 
        "Ele nunca!!!", 
        "Ele jamais!!!"
    ],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };