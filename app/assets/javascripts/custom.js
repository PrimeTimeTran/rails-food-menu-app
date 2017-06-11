$( document ).on('turbolinks:load', function() {
  console.log("It works on each visit!")
  $(".h1").click(function() {
    alert("Hello World");
  });
})

window.alert = function(title, message){
    var myElementToShow = document.getElementById("someElementId");
    myElementToShow.innerHTML = "Hello World!" + "</br>" + "From PrimeTimeTran";
}
