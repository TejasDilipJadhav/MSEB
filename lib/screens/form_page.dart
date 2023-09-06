import 'package:flutter/material.dart';
import 'package:mseb/classes/form_buttons.dart';
import 'package:mseb/resources/list.dart';
import 'package:mseb/classes/date_and_time.dart';
import 'package:mseb/classes/complaint.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  Complaint complaint = Complaint();
  final String date = DateAndTime().date();

  final String time = DateAndTime().time();

  final TextEditingController dateController = TextEditingController();

  final TextEditingController timeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    dateController.text = date;
    timeController.text = time;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            TextButton(
              onPressed: () {},
              child: const Icon(
                Icons.check,
                color: Colors.white,
              ),
            ),
          ],
          title: const Text("Form"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Scrollbar(
            child: ListView(
              children: [
                RowForForm(
                  question1: "Flying Squad Unit",
                  question2: "Theft Detected By",
                  field1: (v) {
                    complaint.flyingSquadUnit = v;
                  },
                  field2: (v) {
                    complaint.theftDetectedBy = v;
                  },
                ),
                RowForForm(
                  question1: "Serial Number",
                  question2: "Place",
                  field1: (v) {
                    complaint.serialNumber = v;
                  },
                  field2: (v) {
                    complaint.place = v;
                  },
                ),
                Row(
                  children: [
                    Flexible(
                      child: TextField(
                        onTap: () async {
                          DateTime? pickedDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2000),
                              lastDate: DateTime(2050));

                          if (pickedDate != null) {
                            dateController.text =
                                pickedDate.toString().substring(0, 10);
                          }
                        },
                        controller: dateController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          labelText: "Date",
                          suffixIcon: const Icon(Icons.date_range),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Flexible(
                      child: TextField(
                        onTap: () async {
                          var time = await showTimePicker(
                              context: context, initialTime: TimeOfDay.now());

                          if (time != null) {
                            timeController.text =
                                time.toString().substring(10, 15);
                          }
                        },
                        controller: timeController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          labelText: "Time",
                          suffixIcon: const Icon(Icons.watch_later),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                RowForForm(
                  question1: "1. Consumer Number",
                  question2: "BU No.",
                  field1: (v) {
                    complaint.consumerNumber = v;
                  },
                  field2: (v) {
                    complaint.buNumber = v;
                  },
                ),
                TextButtonWithTextField(
                  text: "2a. Name of consumer as per bill",
                  field: (v) {
                    complaint.name = v;
                  },
                ),
                TextButtonWithTextField(
                  text: "2a. Address of consumer as per bill",
                  field: (v) {
                    complaint.address = v;
                  },
                ),
                TextButtonWithTextField(
                  text: "2b. Name of Owner/Partner/User/Director",
                  field: (v) {
                    complaint.nameOfOwner = v;
                  },
                ),
                TextButtonWithTextField(
                  text: "2c. Contact number if any (Mobile/Off/Res)",
                  field: (v) {
                    complaint.contactNumber = v;
                  },
                ),
                TextButtonWithTextField(
                  text: "4a. Category/Tariff as per bill",
                  field: (v) {
                    complaint.category = v;
                  },
                ),
                TextButtonWithTextField(
                  text: "4b. Type of installation/Nature of work carried out",
                  field: (v) {
                    complaint.typeOfInstallation = v;
                  },
                ),
                TextButtonWithTextField(
                  text: "4c. Tariff applicable as per actual usage at premises",
                  field: (v) {
                    complaint.tariffDetails = v;
                  },
                ),
                RowForForm(
                  question1: "5a. Sanctioned Load",
                  question2: "5b. Connected Load",
                  field1: (v) {
                    complaint.sanctionedLoad = v;
                  },
                  field2: (v) {
                    complaint.connectedLoad = v;
                  },
                ),
                TextButtonWithTextField(
                  text: "6. Normal working hours/No. of shifts",
                  field: (v) {
                    complaint.normalWorkingHours = v;
                  },
                ),
                TextButtonWithTextField(
                  text: "7. Name of billing office",
                  field: (v) {
                    complaint.nameOfBillingOffice = v;
                  },
                ),
                const Text("8a. Meter Details"),
                const SizedBox(height: 20),
                RowForForm(
                  question1: "Meter Serial Number",
                  question2: "Lab No.",
                  field1: (v) {
                    complaint.meterSerialNumber = v;
                  },
                  field2: (v) {
                    complaint.labNo = v;
                  },
                ),
                RowForForm(
                  question1: "Make",
                  question2: "Type",
                  field1: (v) {
                    complaint.make = v;
                  },
                  field2: (v) {
                    complaint.type = v;
                  },
                ),
                RowForForm(
                  question1: "Capacity",
                  question2: "Rev. imp/kwh",
                  field1: (v) {
                    complaint.capacity = v;
                  },
                  field2: (v) {
                    complaint.revImpKwh = v;
                  },
                ),
                RowForForm(
                  question1: "External C.T. Ratio",
                  question2: "Meter C.T. ratio",
                  field1: (v) {
                    complaint.externalCtRatio = v;
                  },
                  field2: (v) {
                    complaint.meterCTRatio = v;
                  },
                ),
                const Text("8b. Meter Reading"),
                const SizedBox(height: 20),
                TableForForm(
                  table: meterReadingTable,
                  t: textEditingControllerForMeterReading,
                ),
                const SizedBox(height: 20),
                const Text(
                  "8c.",
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Flexible(
                      child: TextButtonWithTextField(
                        text: "Scale Factor",
                        field: (v) {
                          complaint.scaleFactor = v;
                        },
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      child: TextButtonWithTextField(
                        text: "Overall MF",
                        field: (v) {
                          complaint.overallMFForUnit = v;
                        },
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      child: TextButtonWithTextField(
                        text: "Freq (Hz)",
                        field: (v) {
                          complaint.freq = v;
                        },
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Flexible(
                      child: DropDownButtonForForm(
                        list: yesNo,
                        question: "Whether meter data read through MRI/Laptop",
                        field: (v) {
                          complaint.whetherMeterDataReadThroughMriLaptop = v!;
                        },
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      child: DropDownButtonForForm(
                        list: yesNo,
                        question: "Whether meter data collected successfully",
                        field: (v) {
                          complaint.whetherDataCollectedSuccessfully = v!;
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                TextButtonWithTextField(
                  text: "If no, specify reason",
                  field: (v) {
                    complaint.ifNoSpecifyReason = v;
                  },
                ),
                const Text(
                  "9. Details of seals and its condition",
                ),
                const SizedBox(height: 20),
                RowForForm(
                  question1: "(i) On meter box",
                  question2: "(ii) On meter body",
                  field1: (v) {
                    complaint.onMeterBox = v;
                  },
                  field2: (v) {
                    complaint.onMeterBody = v;
                  },
                ),
                RowForForm(
                  question1: "(iii). On meter terminal cover",
                  question2: "(iv). On optical port",
                  field1: (v) {
                    complaint.onMeterTerminalCover = v;
                  },
                  field2: (v) {
                    complaint.onOpticalPort = v;
                  },
                ),
                RowForForm(
                  question1: "(v). C.T. box if any",
                  question2: "(vi) Other",
                  field1: (v) {
                    complaint.ctBoxIfAny = v;
                  },
                  field2: (v) {
                    complaint.other = v;
                  },
                ),
                const Text("10. Current And Volt Measurement"),
                const SizedBox(height: 20),
                TableForForm(
                    table: currentAndVoltMeasurement,
                    t: textEditingControllerForCurrentAndVoltMeasurement),
                const SizedBox(height: 20),
                const Text(
                    "11. If consumer's meter inspected with ERSS meter ERSS meter reading while load test"),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Flexible(
                      child: TextButtonWithTextField(
                        text: "a. wh",
                        field: (v) {
                          complaint.wh = v;
                        },
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      child: TextButtonWithTextField(
                        text: "b. VAh",
                        field: (v) {
                          complaint.vah = v;
                        },
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      child: TextButtonWithTextField(
                        text: "b. VArh",
                        field: (v) {
                          complaint.varh = v;
                        },
                      ),
                    ),
                  ],
                ),
                RowForForm(
                  question1: "d. Avg PF",
                  question2: "e. Time",
                  field1: (v) {
                    complaint.avgPF = v;
                  },
                  field2: (v) {
                    complaint.erssTime = v;
                  },
                ),
                const Text(
                  "Percentage error calculation of energy meter comparing to ERSS meter",
                ),
                const SizedBox(height: 20),
                RowForForm(
                  question1: "Final Reading",
                  question2: "Initial Reading",
                  field1: (v) {
                    complaint.finalReading = v;
                  },
                  field2: (v) {
                    complaint.initialReading = v;
                  },
                ),
                RowForForm(
                  question1: "Difference",
                  question2: "Multiply MF",
                  field1: (v) {
                    complaint.difference = v;
                  },
                  field2: (v) {
                    complaint.multiplyMF = v;
                  },
                ),
                RowForForm(
                  question1: "Net Consumption",
                  question2: "Percentage Error",
                  field1: (v) {
                    complaint.netConsumption = v;
                  },
                  field2: (v) {
                    complaint.percentageError = v;
                  },
                ),
                const Text(
                  "12. General Observations",
                ),
                const SizedBox(height: 20),
                DropDownButtonForForm(
                  list: yesNo,
                  question: "a. Whether capacitor is installed",
                  field: (v) {
                    complaint.capacitorInstalled = v!;
                  },
                ),
                const SizedBox(height: 20),
                DropDownButtonForForm(
                  list: adequateOrNot,
                  question: "b. If yes whether capacity is adequate or not",
                  field: (v) {
                    complaint.adequateOrNot = v!;
                  },
                ),
                const SizedBox(height: 20),
                DropDownButtonForForm(
                  list: beforeCutAfterCut,
                  question: "c. Meter installed at",
                  field: (v) {
                    complaint.meterInstalledAt = v!;
                  },
                ),
                const SizedBox(height: 20),
                DropDownButtonForForm(
                  list: yesNo,
                  question: "d. Meter installed at eyesight",
                  field: (v) {
                    complaint.meterInstalledAtEyesight = v!;
                  },
                ),
                const SizedBox(height: 20),
                TextButtonWithTextField(
                  text: "e. Other observations",
                  field: (v) {
                    complaint.otherObservations = v;
                  },
                ),
                DynamicTableForForm(
                  table: detailsOfConnectedLoad,
                  nameOfTable: "13. Details of connected load",
                  t: textEditingControllerForConnectedLoad,
                ),
                const SizedBox(height: 20),
                DropDownButtonForForm(
                  list: yesNo,
                  question: "14. Whether meter/service kept under observation?",
                  field: (v) {
                    complaint.whetherMeterServiceKeptUnderObservation = v!;
                  },
                ),
                const SizedBox(height: 20),
                TextButtonWithTextField(
                  text: "15. Irregularities observed and remarks",
                  field: (v) {
                    complaint.irregularitiesObserved = v;
                  },
                ),
                TextButtonWithTextField(
                  text: "16. Action taken after inspection",
                  field: (v) {
                    complaint.actionTaken = v;
                  },
                ),
                DynamicTableForForm(
                  table: nameAndSignature,
                  nameOfTable:
                      "Name and designation of inspecting officer, staff and their signatures",
                  t: textEditingControllerForNameAndSignature,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
