
"use strict";

let face_recog = require('./face_recog.js')
let recept_start = require('./recept_start.js')
let people_id_ui = require('./people_id_ui.js')
let bed_recog = require('./bed_recog.js')
let people_id_lan = require('./people_id_lan.js')
let visite_start = require('./visite_start.js')
let nav_goal = require('./nav_goal.js')

module.exports = {
  face_recog: face_recog,
  recept_start: recept_start,
  people_id_ui: people_id_ui,
  bed_recog: bed_recog,
  people_id_lan: people_id_lan,
  visite_start: visite_start,
  nav_goal: nav_goal,
};
