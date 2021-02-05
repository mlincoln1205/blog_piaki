
require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

import 'bootstrap';

import { loadDynamicBannerText } from '../components/banner'

document.addEventListener('turbolinks:load', () => {
    loadDynamicBannerText();
  });

require("trix")
require("@rails/actiontext")