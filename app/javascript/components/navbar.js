const initUpdateNavbarOnScroll = () => {
  const navfade = document.querySelector('.nav-bar');
    if (document.querySelector('.card-grid')) {
      navfade.classList.add('nav-bar-fading');
      navfade.classList.remove('nav-bar-white');
    };

  const navbar = document.querySelector('.nav-bar-fading');
  if (navbar) {
    window.addEventListener('scroll', () => {
      console.log("change to change change")
      if (window.scrollY >= (window.innerHeight * 0.7)) {
        navbar.classList.add('nav-bar-white');
      } else {
        navbar.classList.remove('nav-bar-white');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };
