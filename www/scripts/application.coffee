appendListElementWithContents = (contents) ->
  list = document.getElementById "master-list"
  el = document.createElement("li")
  el.innerHTML = contents
  list.appendChild el

document.addEventListener "DOMContentLoaded", ->
  appendListElementWithContents "Inner height: #{window.innerHeight}"
  appendListElementWithContents "Inner width: #{window.innerWidth}"
