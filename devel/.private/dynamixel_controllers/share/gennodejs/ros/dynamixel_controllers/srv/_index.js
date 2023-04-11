
"use strict";

let SetComplianceSlope = require('./SetComplianceSlope.js')
let SetTorqueLimit = require('./SetTorqueLimit.js')
let SetSpeed = require('./SetSpeed.js')
let RestartController = require('./RestartController.js')
let SetCompliancePunch = require('./SetCompliancePunch.js')
let StopController = require('./StopController.js')
let TorqueEnable = require('./TorqueEnable.js')
let SetComplianceMargin = require('./SetComplianceMargin.js')
let StartController = require('./StartController.js')

module.exports = {
  SetComplianceSlope: SetComplianceSlope,
  SetTorqueLimit: SetTorqueLimit,
  SetSpeed: SetSpeed,
  RestartController: RestartController,
  SetCompliancePunch: SetCompliancePunch,
  StopController: StopController,
  TorqueEnable: TorqueEnable,
  SetComplianceMargin: SetComplianceMargin,
  StartController: StartController,
};
