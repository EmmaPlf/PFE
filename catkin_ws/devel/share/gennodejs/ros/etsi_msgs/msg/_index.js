
"use strict";

let LocationContainer = require('./LocationContainer.js');
let DeltaReferencePosition = require('./DeltaReferencePosition.js');
let CurvatureCalculationMode = require('./CurvatureCalculationMode.js');
let BasicVehicleContainerHighFrequency = require('./BasicVehicleContainerHighFrequency.js');
let PathDeltaTime = require('./PathDeltaTime.js');
let DENM = require('./DENM.js');
let ExteriorLights = require('./ExteriorLights.js');
let YawRate = require('./YawRate.js');
let StationType = require('./StationType.js');
let RelevanceDistance = require('./RelevanceDistance.js');
let CAM = require('./CAM.js');
let EventPoint = require('./EventPoint.js');
let BasicVehicleContainerLowFrequency = require('./BasicVehicleContainerLowFrequency.js');
let Speed = require('./Speed.js');
let SituationContainer = require('./SituationContainer.js');
let VehicleWidth = require('./VehicleWidth.js');
let Heading = require('./Heading.js');
let PositionConfidenceEllipse = require('./PositionConfidenceEllipse.js');
let RelevanceTrafficDirection = require('./RelevanceTrafficDirection.js');
let Altitude = require('./Altitude.js');
let PathPoint = require('./PathPoint.js');
let AccelerationControl = require('./AccelerationControl.js');
let PathHistory = require('./PathHistory.js');
let LongitudinalAcceleration = require('./LongitudinalAcceleration.js');
let VehicleLength = require('./VehicleLength.js');
let CauseCode = require('./CauseCode.js');
let InformationQuality = require('./InformationQuality.js');
let ManagementContainer = require('./ManagementContainer.js');
let ItsPduHeader = require('./ItsPduHeader.js');
let ActionID = require('./ActionID.js');
let DriveDirection = require('./DriveDirection.js');
let VehicleRole = require('./VehicleRole.js');
let Curvature = require('./Curvature.js');
let ReferencePosition = require('./ReferencePosition.js');

module.exports = {
  LocationContainer: LocationContainer,
  DeltaReferencePosition: DeltaReferencePosition,
  CurvatureCalculationMode: CurvatureCalculationMode,
  BasicVehicleContainerHighFrequency: BasicVehicleContainerHighFrequency,
  PathDeltaTime: PathDeltaTime,
  DENM: DENM,
  ExteriorLights: ExteriorLights,
  YawRate: YawRate,
  StationType: StationType,
  RelevanceDistance: RelevanceDistance,
  CAM: CAM,
  EventPoint: EventPoint,
  BasicVehicleContainerLowFrequency: BasicVehicleContainerLowFrequency,
  Speed: Speed,
  SituationContainer: SituationContainer,
  VehicleWidth: VehicleWidth,
  Heading: Heading,
  PositionConfidenceEllipse: PositionConfidenceEllipse,
  RelevanceTrafficDirection: RelevanceTrafficDirection,
  Altitude: Altitude,
  PathPoint: PathPoint,
  AccelerationControl: AccelerationControl,
  PathHistory: PathHistory,
  LongitudinalAcceleration: LongitudinalAcceleration,
  VehicleLength: VehicleLength,
  CauseCode: CauseCode,
  InformationQuality: InformationQuality,
  ManagementContainer: ManagementContainer,
  ItsPduHeader: ItsPduHeader,
  ActionID: ActionID,
  DriveDirection: DriveDirection,
  VehicleRole: VehicleRole,
  Curvature: Curvature,
  ReferencePosition: ReferencePosition,
};
