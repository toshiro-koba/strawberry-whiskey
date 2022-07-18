import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }

window.completionStatus = function(event, id) {
  axios.post('http://localhost:3000/api/v1/tickets/completion_status', {
    id: id,
    status: event.target.checked
  })
  .catch(error => {
    alert(`エラーが発生しました\n${error.message}` )
  })
}
