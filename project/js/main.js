var url1 = "http://rest-api-costume-contest.herokuapp.com/api/v1/contests";
var url2 = "http://rest-api-costume-contest.herokuapp.com/api/v1/contests/1";
var url3 = "http://rest-api-costume-contest.herokuapp.com/api/v1/contests/1/categories/1";

$(document).ready(function() {
  $('#contest-list-button').on('click', function(){
    changeIt(url1);
  });
  $('#contest-one-button').on('click', function(){
    changeIt(url2);
  });
  $('#category-one-button').on('click', function(){
    changeIt(url3);
  });
  //Default display: 
  changeIt(url1);
});

function changeIt(url) {
  $("div.json-data").html("<div class='my-wrapper bar'></div>");
  $.getJSON(url, function(data) {
    var prettied = syntaxHighlight(JSON.stringify(data, undefined, 4));
    $("div.json-data").html("<div class='my-wrapper'><p class='endpoint-uri'>Endpoint URI: " + url + "</p>" + prettied + '</div>');
  });
}

function syntaxHighlight(json) {
  json = json.replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/>/g, '&gt;');
  return json.replace(/("(\\u[a-zA-Z0-9]{4}|\\[^u]|[^\\"])*"(\s*:)?|\b(true|false|null)\b|-?\d+(?:\.\d*)?(?:[eE][+\-]?\d+)?)/g, function (match) {
      var cls = 'number';
      if (/^"/.test(match)) {
      if (/:$/.test(match)) {
        cls = 'key';
      } else {
        cls = 'string';
      }
      } else if (/true|false/.test(match)) {
        cls = 'boolean';
      } else if (/null/.test(match)) {
        cls = 'null';
      }
      return '<span class="' + cls + '">' + match + '</span>';
      });
}
