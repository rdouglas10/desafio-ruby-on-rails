$("#send-cnab").click(function () {
  var delay = 2000; //2 seconds
  setTimeout(function () {
    alert("Dados Inseridos com sucesso!");
    location.reload().delay(2000); //your code to be executed after 2 seconds
  }, delay);
});
