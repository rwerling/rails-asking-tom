import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="mood"
export default class extends Controller {
  static targets = ['scoreInput', 'emoji']

  select(event) {
    this.emojiTargets.forEach(emoji => { emoji.classList.remove('mood-button-selected')})
    event.currentTarget.classList.add('mood-button-selected')
    const score = event.currentTarget.dataset.scoreValue
    this.scoreInputTarget.value = score
  }
}
