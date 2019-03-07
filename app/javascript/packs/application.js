
import { initMapbox } from '../plugins/init_mapbox';

initMapbox();

import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('mushroom_address');
  if (addressInput) {
    places({ container: addressInput });
  }
};
initAutocomplete();
