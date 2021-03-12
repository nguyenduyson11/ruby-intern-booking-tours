import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import "bootstrap"
import "jquery-datetimepicker"
require("packs/main")
//= require jquery-ui
//= require jquery.datetimepicker.full.min.js
Rails.start()
Turbolinks.start()
ActiveStorage.start()

