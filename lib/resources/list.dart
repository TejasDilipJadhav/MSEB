import 'package:flutter/material.dart';

List<String> yesNo = ["Yes", "No"];

List<String> adequateOrNot = ["NA", "Adequate", "Not Adequate"];

List<String> beforeCutAfterCut = ["Before cut out", "After cut out"];

List<List<Widget>> meterReadingTable = [
  [
    const Text("Zone No."),
    const Text("MDkW"),
    const Text("kVAH"),
    const Text("kVAMD"),
    const Text("RkVAN"),
    const Text("pf"),
    const Text("Anomaly if any in meter")
  ],
  [
    const Text("Zone1"),
    TextField(controller: textEditingControllerForMeterReading[1][1]),
    TextField(controller: textEditingControllerForMeterReading[1][2]),
    TextField(controller: textEditingControllerForMeterReading[1][3]),
    TextField(controller: textEditingControllerForMeterReading[1][4]),
    TextField(controller: textEditingControllerForMeterReading[1][5]),
    TextField(controller: textEditingControllerForMeterReading[1][6]),
  ],
  [
    const Text("Zone2"),
    TextField(controller: textEditingControllerForMeterReading[2][1]),
    TextField(controller: textEditingControllerForMeterReading[2][2]),
    TextField(controller: textEditingControllerForMeterReading[2][3]),
    TextField(controller: textEditingControllerForMeterReading[2][4]),
    TextField(controller: textEditingControllerForMeterReading[2][5]),
    TextField(controller: textEditingControllerForMeterReading[2][6]),
  ],
  [
    const Text("Zone3"),
    TextField(controller: textEditingControllerForMeterReading[3][1]),
    TextField(controller: textEditingControllerForMeterReading[3][2]),
    TextField(controller: textEditingControllerForMeterReading[3][3]),
    TextField(controller: textEditingControllerForMeterReading[3][4]),
    TextField(controller: textEditingControllerForMeterReading[3][5]),
    TextField(controller: textEditingControllerForMeterReading[3][6]),
  ],
  [
    const Text("Zone4"),
    TextField(controller: textEditingControllerForMeterReading[4][1]),
    TextField(controller: textEditingControllerForMeterReading[4][2]),
    TextField(controller: textEditingControllerForMeterReading[4][3]),
    TextField(controller: textEditingControllerForMeterReading[4][4]),
    TextField(controller: textEditingControllerForMeterReading[4][5]),
    TextField(controller: textEditingControllerForMeterReading[4][6]),
  ],
];

List<List<TextEditingController>> textEditingControllerForMeterReading = [
  [
    TextEditingController(text: "Zone No."),
    TextEditingController(text: "MDkW"),
    TextEditingController(text: "kVAH"),
    TextEditingController(text: "kVAMD"),
    TextEditingController(text: "RkVAN"),
    TextEditingController(text: "pf"),
    TextEditingController(text: "Anomaly if any in meter"),
  ],
  [
    TextEditingController(text: "Zone1"),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController()
  ],
  [
    TextEditingController(text: "Zone2"),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController()
  ],
  [
    TextEditingController(text: "Zone3"),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController()
  ],
  [
    TextEditingController(text: "Zone4"),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController()
  ]
];

List<List<Widget>> currentAndVoltMeasurement = [
  [
    const Text("."),
    const Text("R Phase"),
    const Text("Y Phase"),
    const Text("B Phase"),
  ],
  [
    const Text("Current measured at incoming supply"),
    TextField(controller: textEditingControllerForMeterReading[1][1]),
    TextField(controller: textEditingControllerForMeterReading[1][2]),
    TextField(controller: textEditingControllerForMeterReading[1][3]),
  ],
  [
    const Text("Current on energy meter display"),
    TextField(controller: textEditingControllerForMeterReading[2][1]),
    TextField(controller: textEditingControllerForMeterReading[2][2]),
    TextField(controller: textEditingControllerForMeterReading[2][3]),
  ],
  [
    const Text("Volt measured at terminal port"),
    TextField(controller: textEditingControllerForMeterReading[3][1]),
    TextField(controller: textEditingControllerForMeterReading[3][2]),
    TextField(controller: textEditingControllerForMeterReading[3][3]),
  ],
  [
    const Text("Voltage on energy meter display"),
    TextField(controller: textEditingControllerForMeterReading[4][1]),
    TextField(controller: textEditingControllerForMeterReading[4][2]),
    TextField(controller: textEditingControllerForMeterReading[4][3]),
  ],
];

List<List<TextEditingController>>
    textEditingControllerForCurrentAndVoltMeasurement = [
  [
    TextEditingController(text: ""),
    TextEditingController(text: "R Phase"),
    TextEditingController(text: "Y Phase"),
    TextEditingController(text: "B Phase"),
  ],
  [
    TextEditingController(text: "Current measured at incoming supply"),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
  ],
  [
    TextEditingController(text: "Current on energy meter display"),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
  ],
  [
    TextEditingController(text: "Volt measured at terminal port"),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
  ],
  [
    TextEditingController(text: "Voltage on energy meter display"),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
  ]
];

List<List<Widget>> detailsOfConnectedLoad = [
  [
    const Text("Equipment Name"),
    const Text("Quantity"),
    const Text("Capacity"),
    const Text("Measurement Unit"),
    const Text("Total Load"),
    const Text("Load in KW")
  ],
  [
    TextField(
      controller: textEditingControllerForConnectedLoad[1][0],
    ),
    TextField(
      controller: textEditingControllerForConnectedLoad[1][1],
    ),
    TextField(
      controller: textEditingControllerForConnectedLoad[1][2],
    ),
    TextField(
      controller: textEditingControllerForConnectedLoad[1][3],
    ),
    TextField(
      controller: textEditingControllerForConnectedLoad[1][4],
    ),
    TextField(
      controller: textEditingControllerForConnectedLoad[1][5],
    ),
  ],
];

List<List<TextEditingController>> textEditingControllerForConnectedLoad = [
  [
    TextEditingController(text: "Equipment Name"),
    TextEditingController(text: "Quantity"),
    TextEditingController(text: "Capacity"),
    TextEditingController(text: "Measurement Unit"),
    TextEditingController(text: "Total Load"),
    TextEditingController(text: "Load in KW"),
  ],
  [
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
  ]
];

List<List<Widget>> nameAndSignature = [
  [
    const Text("Name"),
    const Text("Designation"),
    const Text("Signature"),
  ],
  [
    TextField(
      controller: textEditingControllerForNameAndSignature[1][0],
    ),
    TextField(
      controller: textEditingControllerForNameAndSignature[1][1],
    ),
    TextField(
      controller: textEditingControllerForNameAndSignature[1][2],
    ),
  ]
];

List<List<TextEditingController>> textEditingControllerForNameAndSignature = [
  [
    TextEditingController(text: "Name"),
    TextEditingController(text: "Designation"),
    TextEditingController(text: "Signature"),
  ],
  [
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
  ]
];
