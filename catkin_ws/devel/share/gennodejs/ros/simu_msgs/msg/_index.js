
"use strict";

let ReferencePosition = require('./ReferencePosition.js');
let ItsPduHeader = require('./ItsPduHeader.js');
let Altitude = require('./Altitude.js');
let VehicleLength = require('./VehicleLength.js');
let Speed = require('./Speed.js');
let PositionConfidenceEllipse = require('./PositionConfidenceEllipse.js');
let simu_CAM = require('./simu_CAM.js');

module.exports = {
  ReferencePosition: ReferencePosition,
  ItsPduHeader: ItsPduHeader,
  Altitude: Altitude,
  VehicleLength: VehicleLength,
  Speed: Speed,
  PositionConfidenceEllipse: PositionConfidenceEllipse,
  simu_CAM: simu_CAM,
};
