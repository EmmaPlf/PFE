
"use strict";

let Speed = require('./Speed.js');
let simu_CAM = require('./simu_CAM.js');
let PositionConfidenceEllipse = require('./PositionConfidenceEllipse.js');
let Altitude = require('./Altitude.js');
let VehicleLength = require('./VehicleLength.js');
let ItsPduHeader = require('./ItsPduHeader.js');
let ReferencePosition = require('./ReferencePosition.js');

module.exports = {
  Speed: Speed,
  simu_CAM: simu_CAM,
  PositionConfidenceEllipse: PositionConfidenceEllipse,
  Altitude: Altitude,
  VehicleLength: VehicleLength,
  ItsPduHeader: ItsPduHeader,
  ReferencePosition: ReferencePosition,
};
