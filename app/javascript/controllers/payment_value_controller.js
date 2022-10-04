import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["div", "p"]
  connect() {
    this.element.textContent = "Calculando el valor a pagar"
  }

  total_pay(){
    let hours;
    let price;
    hours = this.document.querySelector('.hours')
    price = this.place.price_per_hour

    let total = price * hours
    this.Target.setAttribute('total', total)
  }
}
