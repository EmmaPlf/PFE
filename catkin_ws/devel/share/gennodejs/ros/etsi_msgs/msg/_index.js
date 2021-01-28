
"use strict";

let Heading = require('./Heading.js');
let ReferencePosition = require('./ReferencePosition.js');
let PathHistory = require('./PathHistory.js');
let VehicleRole = require('./VehicleRole.js');
let ManagementContainer = require('./ManagementContainer.js');
let BasicVehicleContainerLowFrequency = require('./BasicVehicleContainerLowFrequency.js');
let ItsPduHeader = require('./ItsPduHeader.js');
let LocationContainer = require('./LocationContainer.js');
let RelevanceDistance = require('./RelevanceDistance.js');
let Altitude = require('./Altitude.js');
let LongitudinalAcceleration = require('./LongitudinalAcceleration.js');
let SituationContainer = require('./SituationContainer.js');
let CauseCode = require('./CauseCode.js');
let DeltaReferencePosition = require('./DeltaReferencePosition.js');
let EventPoint = require('./EventPoint.js');
let AccelerationControl = require('./AccelerationControl.js');
let InformationQuality = require('./InformationQuality.js');
let CurvatureCalculationMode = require('./CurvatureCalculationMode.js');
let Curvature = require('./Curvature.js');
let VehicleLength = require('./VehicleLength.js');
let PathDeltaTime = require('./PathDeltaTime.js');
let SPAT = require('./SPAT.js');
let CAM = require('./CAM.js');
let StationType = require('./StationType.js');
let VehicleWidth = require('./VehicleWidth.js');
let Speed = require('./Speed.js');
let YawRate = require('./YawRate.js');
let PathPoint = require('./PathPoint.js');
let DENM = require('./DENM.js');
let ExteriorLights = require('./ExteriorLights.js');
let DriveDirection = require('./DriveDirection.js');
let PositionConfidenceEllipse = require('./PositionConfidenceEllipse.js');
let RelevanceTrafficDirection = require('./RelevanceTrafficDirection.js');
let ActionID = require('./ActionID.js');
let BasicVehicleContainerHighFrequency = require('./BasicVehicleContainerHighFrequency.js');

module.exports = {
  Heading: Heading,
  ReferencePosition: ReferencePosition,
  PathHistory: PathHistory,
  VehicleRole: VehicleRole,
  ManagementContainer: ManagementContainer,
  BasicVehicleContainerLowFrequency: BasicVehicleContainerLowFrequency,
  ItsPduHeader: ItsPduHeader,
  LocationContainer: LocationContainer,
  RelevanceDistance: RelevanceDistance,
  Altitude: Altitude,
  LongitudinalAcceleration: LongitudinalAcceleration,
  SituationContainer: SituationContainer,
  CauseCode: CauseCode,
  DeltaReferencePosition: DeltaReferencePosition,
  EventPoint: EventPoint,
  AccelerationControl: AccelerationControl,
  InformationQuality: InformationQuality,
  CurvatureCalculationMode: CurvatureCalculationMode,
  Curvature: Curvature,
  VehicleLength: VehicleLength,
  PathDeltaTime: PathDeltaTime,
  SPAT: SPAT,
  CAM: CAM,
  StationType: StationType,
  VehicleWidth: VehicleWidth,
  Speed: Speed,
  YawRate: YawRate,
  PathPoint: PathPoint,
  DENM: DENM,
  ExteriorLights: ExteriorLights,
  DriveDirection: DriveDirection,
  PositionConfidenceEllipse: PositionConfidenceEllipse,
  RelevanceTrafficDirection: RelevanceTrafficDirection,
  ActionID: ActionID,
  BasicVehicleContainerHighFrequency: BasicVehicleContainerHighFrequency,
};
