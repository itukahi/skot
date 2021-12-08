import consumer from "./consumer"

const appRoom = consumer.subscriptions.create("RoomChannel", {
  connected() {
    return this.perform('channel_select', {select: document.getElementById("target_id").value})
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    //return alert(data['message'])
    const messages = document.getElementById('messages');
    //messages.insertAdjacentHTML('beforeend', data['message']);
    if (data['user'] == document.getElementById("current_user").value){
      messages.insertAdjacentHTML("beforeend", "<div class=me>" + data["message"] + "</div>");
    } else {
      messages.insertAdjacentHTML("beforeend", "<div class=you>" + data["message"] + "</div>");
    }
  },

  speak: function(message, target_id, user_id) {
    return this.perform('speak', {message: message, target_id: target_id, user_id: user_id });
  }
});

window.addEventListener("keypress", function(e){
  if (e.keyCode === 13){if (e.target.value != ''){
    appRoom.speak(e.target.value, document.getElementById("target_id").value,
    document.getElementById("current_user").value);
    e.target.value = '';
    e.preventDefault();
  }
}
})
