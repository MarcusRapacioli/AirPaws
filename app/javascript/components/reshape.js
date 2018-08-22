import anime from 'animejs'


function reshape() {
  anime({
    targets: '.banner',
    left: '240px',
    backgroundColor: '#FFF',
    borderRadius: ['0em', '2em'],
    easing: 'easeInOutQuad'
  });
}
