
require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

import 'bootstrap';

import { loadDynamicBannerText } from '../components/banner'
import { weatherInfosHome } from '../components/weather'


document.addEventListener('turbolinks:load', () => {
    loadDynamicBannerText();
    weatherInfosHome();
  });
require("trix")
require("@rails/actiontext")