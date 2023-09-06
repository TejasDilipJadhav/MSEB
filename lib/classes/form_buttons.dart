import 'package:flutter/material.dart';

class TextButtonWithTextField extends StatelessWidget {
  final String text;
  final void Function(String) field;

  const TextButtonWithTextField(
      {super.key, required this.text, required this.field});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          keyboardType: TextInputType.multiline,
          maxLines: null,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            labelText: text,
          ),
          onChanged: (value) {
            field(value);
          },
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}

class DropDownButtonForForm extends StatelessWidget {
  final List<String> list;

  final String question;
  final void Function(String?) field;

  const DropDownButtonForForm(
      {super.key,
      required this.list,
      required this.question,
      required this.field});
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      decoration: InputDecoration(
        label: Text(question),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      items: list.map((listItem) {
        return DropdownMenuItem(
          value: listItem,
          child: Text(listItem),
        );
      }).toList(),
      onChanged: (value) {
        field(value);
      },
    );
  }
}

class RowForForm extends StatelessWidget {
  final String question1;
  final String question2;
  final void Function(String) field1;
  final void Function(String) field2;

  const RowForForm({
    super.key,
    required this.question1,
    required this.question2,
    required this.field1,
    required this.field2,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Flexible(
              child: TextField(
                onChanged: (value) {
                  field1(value);
                },
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: question1,
                ),
              ),
            ),
            const SizedBox(width: 10),
            Flexible(
              child: TextField(
                onChanged: (value) {
                  field2(value);
                },
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: question2,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}

class TableForForm extends StatelessWidget {
  final List<List<Widget>> table;
  final List<List<TextEditingController>> t;

  const TableForForm({super.key, required this.table, required this.t});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        border: TableBorder.all(color: Colors.grey),
        columns: [
          for (int i = 0; i < table[0].length; i++)
            DataColumn(
              label: table[0][i],
            ),
        ],
        rows: [
          for (int i = 1; i < table.length; i++)
            DataRow(cells: [
              for (int j = 0; j < table[i].length; j++) DataCell(table[i][j]),
            ])
        ],
      ),
    );
  }
}

class DynamicTableForForm extends StatefulWidget {
  final List<List<Widget>> table;
  final List<List<TextEditingController>> t;
  final String nameOfTable;

  const DynamicTableForForm({
    super.key,
    required this.table,
    required this.nameOfTable,
    required this.t,
  });

  @override
  State<DynamicTableForForm> createState() => _DynamicTableForFormState();
}

class _DynamicTableForFormState extends State<DynamicTableForForm> {
  int index = 2;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.nameOfTable),
        const SizedBox(
          height: 20,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: DataTable(
            border: TableBorder.all(color: Colors.grey),
            columns: [
              for (int i = 0; i < widget.table[0].length; i++)
                DataColumn(
                  label: widget.table[0][i],
                ),
            ],
            rows: [
              for (int i = 1; i < widget.table.length; i++)
                DataRow(cells: [
                  for (int j = 0; j < widget.table[i].length; j++)
                    DataCell(widget.table[i][j]),
                ])
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Expanded(
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  backgroundColor: Colors.blue,
                ),
                onPressed: () {
                  setState(() {
                    if (widget.nameOfTable == "13. Details of connected load") {
                      widget.t.add([
                        TextEditingController(),
                        TextEditingController(),
                        TextEditingController(),
                        TextEditingController(),
                        TextEditingController(),
                        TextEditingController(),
                      ]);

                      widget.table.add([
                        TextField(
                          controller: widget.t[index][0],
                        ),
                        TextField(
                          controller: widget.t[index][1],
                        ),
                        TextField(
                          controller: widget.t[index][2],
                        ),
                        TextField(
                          controller: widget.t[index][3],
                        ),
                        TextField(
                          controller: widget.t[index][4],
                        ),
                        TextField(
                          controller: widget.t[index][5],
                        ),
                      ]);
                      index++;
                    } else {
                      widget.t.add([
                        TextEditingController(),
                        TextEditingController(),
                        TextEditingController(),
                      ]);

                      widget.table.add([
                        TextField(controller: widget.t[index][0]),
                        TextField(controller: widget.t[index][1]),
                        TextField(controller: widget.t[index][2]),
                      ]);
                      index++;
                    }
                  });
                },
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  backgroundColor: Colors.blue,
                ),
                onPressed: () {
                  setState(() {
                    if (widget.table.length > 2) {
                      widget.table.removeLast();
                      widget.t.removeLast();
                    }
                  });
                },
                child: const Icon(
                  Icons.delete,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
