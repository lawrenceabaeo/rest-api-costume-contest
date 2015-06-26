var url1 = "http://rest-api-costume-contest.herokuapp.com/api/v1/contests";
var url2 = "http://rest-api-costume-contest.herokuapp.com/api/v1/contests/1";
var url3 = "http://rest-api-costume-contest.herokuapp.com/api/v1/contests/1/categories/1";
 
$(document).ready(function() {
  // Attach click handlers
  $('#contest-list-button').on('click', function(){
    changeIt(url1);
  });
  $('#contest-one-button').on('click', function(){
    changeIt(url2);
  });
  $('#category-one-button').on('click', function(){
    changeIt(url3);
  });

  //Display url1 by default: 
  changeIt(url1);

});

function changeIt(url) {
  // Show various loading text (the 'divs' var below will rotate them):
  $("div.json-data").html(
     "<div class='spinner'></div>"+ 
     "<div class='loading-1'>Loading...</div>"+ 
     "<div class='loading-2'>Hope you are doing well...</div>"+ 
     "<div class='loading-3'>Looks like our host heroku is spinning up a new dyno just for you...</div>"+ 
     "<div class='loading-4'>Any moment now...</div>"+
     "<div class='loading-5'>Party at the servers!...</div>"
   );

  $.getJSON(url, function(data) {
    var prettied = syntaxHighlight(JSON.stringify(data, undefined, 4));
    $("div.json-data").html("<div class='my-wrapper'><p class='endpoint-uri'>Endpoint URI: " + url + "</p>" + prettied + '</div>');
  });


/* Code to show and hide the various laoding text:
 * From: 
 * http://codepen.io/maaviles/pen/olKxr/
 */
  var divs = $('div[class^="loading-"]').hide(),
    i = 0;
      (function cycle() { 
        divs.eq(i).fadeIn(400)
        .delay(3000)
        .fadeOut(400, cycle);
        i = ++i % divs.length;
      })();
}

/* Make the json look pretty
 * Code is from pumbaa80 on stackoverflow
 * http://stackoverflow.com/questions/4810841/how-can-i-pretty-print-json-using-javascript
 */
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
