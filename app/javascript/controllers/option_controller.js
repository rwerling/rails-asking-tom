import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="option"
export default class extends Controller {
    static targets = ["form", "list"]
  connect() {
    this.element.scrollIntoView;
    console.log(this.formTarget);
  }
  create(event) {
    event.preventDefault();
    console.log("created");
    const url = this.formTarget.action
    fetch(url, {
      method: "POST",
      headers: { "Accept": "text/plain" },
      body: new FormData(this.formTarget)
      })
        .then(response => response.text())
        .then((data) => {
          this.listTarget.insertAdjacentHTML("beforeend", data)
        })
  }
}
