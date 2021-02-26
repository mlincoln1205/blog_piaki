
require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

import 'bootstrap';

import { loadDynamicBannerText } from '../components/banner'
import { weatherInfosHome } from '../components/weather'
import { adblockTest } from '../components/adverts'

document.addEventListener('turbolinks:load', () => {
    loadDynamicBannerText();
    weatherInfosHome();
  });
  adblockTest();

require("trix")
require("@rails/actiontext")