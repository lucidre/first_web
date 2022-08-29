import 'package:data_table_2/data_table_2.dart';
import 'package:first_web/constants/style.dart';
import 'package:first_web/widgets/custom_text.dart';
import 'package:flutter/material.dart';

/// Example without a datasource
class AvailialeDrivers extends StatelessWidget {
  const AvailialeDrivers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.only(bottom: 30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 6),
            color: lightGrey.withOpacity(.1),
            blurRadius: 12,
          )
        ],
        border: Border.all(
          color: lightGrey,
          width: .5,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              CustomText(
                text: "Availiable Drivers",
                color: lightGrey,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
          SizedBox(
            height: 400,
            child: DataTable2(
              columnSpacing: 12,
              horizontalMargin: 12,
              minWidth: 600,
              columns: const [
                DataColumn2(
                  label: Text('Name'),
                  size: ColumnSize.L,
                ),
                DataColumn(
                  label: Text('Location'),
                ),
                DataColumn(
                  label: Text('Rating'),
                ),
                DataColumn(
                  label: Text('Action'),
                ),
              ],
              rows: List<DataRow>.generate(
                7,
                (index) => DataRow(
                  cells: [
                    const DataCell(
                      CustomText(
                        text: "Lorem Ispidium",
                      ),
                    ),
                    const DataCell(
                      CustomText(
                        text: "Canada",
                      ),
                    ),
                    DataCell(
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(
                            Icons.star_rounded,
                            color: Colors.deepOrange,
                            size: 18,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          CustomText(
                            text: "4.$index",
                          ),
                        ],
                      ),
                    ),
                    DataCell(
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: active,
                            width: .5,
                          ),
                          color: light,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        child: CustomText(
                          text: "Assign Delivery",
                          color: active.withOpacity(.7),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
