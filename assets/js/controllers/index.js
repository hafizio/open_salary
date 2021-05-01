import { Application } from "stimulus"
import { definitionsFromContext } from "stimulus/webpack-helpers"
import { Dropdown } from "tailwindcss-stimulus-components"

const application = Application.start()
const context = require.context(".", true, /\.js$/)

application.load(definitionsFromContext(context))

application.register('desktop-menu', Dropdown)
application.register('mobile-menu', Dropdown)

console.log('Stimulus loaded')