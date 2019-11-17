document.addEventListener('turbolinks:load', function() {
  // Add class active to the current nav-link of the page
  let currentPath = window.location.pathname;

  if (currentPath.indexOf('users') > -1){
    document.getElementById('nav-users').classList.add('active');
  } else if (currentPath.indexOf('schools') > -1){
    document.getElementById('nav-schools').classList.add('active');
  } else if (currentPath.indexOf('lunch-projects') > -1){
    document.getElementById('nav-lunch-projects').classList.add('active');
  }
})