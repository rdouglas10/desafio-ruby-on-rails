$("#send-cnab").click(function () {
  var delay = 2000; //2 seconds
  setTimeout(function () {
    if ($("#archive").val() != "") {
      alert("Dados Inseridos com sucesso!");
    } else {
      alert("Erro no envio");
    }
    location.reload().delay(2000); //your code to be executed after 2 seconds
  }, delay);
});
