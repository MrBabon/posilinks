// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import "bootstrap"
import "./event_card"

// Read-more de nos articles
import { Application } from '@hotwired/stimulus'
import ReadMore from 'stimulus-read-more'

const application = Application.start()
application.register('read-more', ReadMore)
