function setTimeoutWithTurbolinks(intervalFunction, milliseconds) {
  var interval = setTimeout(intervalFunction, milliseconds);

  document.addEventListener('turbolinks:before-render', function() {
    clearTimeout(interval);
  });
}

export default function timeoutAlert() {
  setTimeoutWithTurbolinks(function() {
    var date = new Date();
    date.setMinutes(date.getMinutes() + 10);
    var date_str = date.getHours() + ':' + date.getMinutes()
    Snackbar.show({
      text: 'Sans action dans les 10 prochaines minutes vous serez déconnecté à ' + date_str,
      duration: 0,
      showAction: false,
      customClass: 'warning-snackbar'
    });
  }, 1 * 5 * 1000) // TODO: Set it to 50min or less
}
