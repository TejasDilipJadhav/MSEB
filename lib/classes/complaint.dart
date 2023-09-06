class Complaint {
  String flyingSquadUnit;
  String theftDetectedBy;
  String serialNumber;
  String place;
  String date;
  String time;
  String consumerNumber;
  String buNumber;
  String name;
  String address;
  String nameOfOwner;
  String contactNumber;
  String category;
  String typeOfInstallation;
  String tariffDetails;
  String sanctionedLoad;
  String connectedLoad;
  String normalWorkingHours;
  String nameOfBillingOffice;
  String meterSerialNumber;
  String make;
  String capacity;
  String externalCtRatio;
  String labNo;
  String type;
  String revImpKwh;
  String meterCTRatio;
  List<List<String>>? meterReading;
  String scaleFactor;
  String overallMFForUnit;
  String freq;
  String whetherMeterDataReadThroughMriLaptop;
  String whetherDataCollectedSuccessfully;
  String ifNoSpecifyReason;
  String onMeterBox;
  String onMeterBody;
  String onMeterTerminalCover;
  String onOpticalPort;
  String ctBoxIfAny;
  String other;
  List<List<String>>? currentAndVoltMeasurement;
  String wh;
  String vah;
  String varh;
  String avgPF;
  String erssTime;
  String finalReading;
  String initialReading;
  String difference;
  String multiplyMF;
  String netConsumption;
  String percentageError;
  String capacitorInstalled;
  String adequateOrNot;
  String meterInstalledAt;
  String meterInstalledAtEyesight;
  String otherObservations;
  List<List<String>>? detailsOfConnectedLoad;
  String whetherMeterServiceKeptUnderObservation;
  String irregularitiesObserved;
  String actionTaken;
  List<List<String>>? officerInformation;
  Complaint({
    this.flyingSquadUnit = "",
    this.theftDetectedBy = "",
    this.serialNumber = "",
    this.place = "",
    this.date = "",
    this.time = "",
    this.consumerNumber = "",
    this.buNumber = "",
    this.name = "",
    this.address = "",
    this.nameOfOwner = "",
    this.contactNumber = "",
    this.category = "",
    this.typeOfInstallation = "",
    this.tariffDetails = "",
    this.sanctionedLoad = "",
    this.connectedLoad = "",
    this.normalWorkingHours = "",
    this.nameOfBillingOffice = "",
    this.meterSerialNumber = "",
    this.labNo = "",
    this.make = "",
    this.type = "",
    this.capacity = "",
    this.revImpKwh = "",
    this.externalCtRatio = "",
    this.meterCTRatio = "",
    this.meterReading,
    this.scaleFactor = "",
    this.overallMFForUnit = "",
    this.freq = "",
    this.whetherMeterDataReadThroughMriLaptop = "",
    this.whetherDataCollectedSuccessfully = "",
    this.ifNoSpecifyReason = "",
    this.onMeterBox = "",
    this.onMeterBody = "",
    this.onMeterTerminalCover = "",
    this.onOpticalPort = "",
    this.ctBoxIfAny = "",
    this.other = "",
    this.wh = "",
    this.vah = "",
    this.varh = "",
    this.avgPF = "",
    this.erssTime = "",
    this.finalReading = "",
    this.initialReading = "",
    this.difference = "",
    this.multiplyMF = "",
    this.netConsumption = "",
    this.percentageError = "",
    this.detailsOfConnectedLoad,
    this.capacitorInstalled = "",
    this.adequateOrNot = "",
    this.meterInstalledAt = "",
    this.meterInstalledAtEyesight = "",
    this.otherObservations = "",
    this.whetherMeterServiceKeptUnderObservation = "",
    this.irregularitiesObserved = "",
    this.actionTaken = "",
    this.officerInformation,
  });
}
