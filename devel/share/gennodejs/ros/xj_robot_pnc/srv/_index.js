
"use strict";

let xj_robot_task = require('./xj_robot_task.js')
let exe_path = require('./exe_path.js')
let record_start = require('./record_start.js')
let nav_goal = require('./nav_goal.js')
let record_stop = require('./record_stop.js')

module.exports = {
  xj_robot_task: xj_robot_task,
  exe_path: exe_path,
  record_start: record_start,
  nav_goal: nav_goal,
  record_stop: record_stop,
};
