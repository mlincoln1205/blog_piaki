const city = document.getElementById('city-name');
const date = document.querySelector('#date');
const description = document.getElementById('description');
const temperature = document.getElementById('temperature');
const icon = document.getElementById('icon');
const form = document.getElementById('city-form');
const input = document.getElementById('city-input');

const weatherInfosHome = (cityName = 'Sao Paulo') => {
    fetch(`https://api.openweathermap.org/data/2.5/weather?q=${cityName}&appid=9536fc53c2a90abbe6f5d346c56aee19&units=metric`)
    .then(response => response.json())
    .then(data => {
        const today = new Date();
        const localOffset = data.timezone + today.getTimezoneOffset() * 60;
        const localDate = new Date(today.setUTCSeconds(localOffset));
        const options = {weekday: 'long', month: 'long', day: 'numeric', year: 'numeric', hour: 'numeric', minute: 'numeric'};
        const formattedDate = localDate.toLocaleDateString('pt-BR', options);
        city.innerText = data.name;
        date.innerText = formattedDate;
        description.innerText = data.weather[0].description;
        temperature.innerText = `${Math.round(data.main.temp)} °C`;
        icon.src = `http://openweathermap.org/img/wn/${data.weather[0].icon}@2x.png`;
        });
    };
    
   
    form.addEventListener('submit', event => {
        event.preventDefault();
        weatherInfosHome(input.value);
    });


export { weatherInfosHome };