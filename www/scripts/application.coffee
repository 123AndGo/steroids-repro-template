window.___START_TIME = new Date()

document.addEventListener "cordovaready", ->
  console.log "CORDOVA READY"

document.addEventListener "nativeready", ->
  console.log "NATIVE READY"

document.addEventListener "deviceready", ->
  now = new Date()
  diff = now.getTime() - window.___START_TIME.getTime()

  list = document.getElementById("ready")
  el = document.createElement("li")
  message = now.toLocaleTimeString() + " Cordova READY - " + diff + " ms since page load"
  console.log message
  el.innerHTML = message
  list.appendChild(el)

  # Steroids ready event
  # steroids.on 'ready' , ->
  #
  #   now = new Date()
  #   diff = now.getTime() - window.___START_TIME.getTime()
  #
  #   list = document.getElementById("ready")
  #   el = document.createElement("li")
  #   el.innerHTML = now.toLocaleTimeString() + " Steroids READY - " + diff + " ms since page load"
  #   list.appendChild(el)
