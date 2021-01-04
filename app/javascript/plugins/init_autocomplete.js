import places from 'places.js';

const initAutocomplete = () => {
  const locationInput = document.getElementById('address-input');
  if (locationInput) {
    places({ container: locationInput });
  }
};

export { initAutocomplete };
