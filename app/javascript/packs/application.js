
require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("trix")
require("@rails/actiontext")

import 'bootstrap';

import { loadDynamicBannerText } from '../components/banner'
import { weatherInfosHome } from '../components/weather'


document.addEventListener('turbolinks:load', () => {
    loadDynamicBannerText();
    weatherInfosHome();
  });