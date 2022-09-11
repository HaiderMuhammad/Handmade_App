import 'package:flutter/material.dart';

class CheckOutItems extends StatelessWidget {
  const CheckOutItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20.0,
          ),
          Row(
            children: [
              const Text.rich(
                TextSpan(
                  text: 'Total:\n',
                  children: [
                    TextSpan(
                      text: '71.25 IQD',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50.0),
                child: SizedBox(
                  width: 190,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      primary: Colors.white,
                      backgroundColor: const Color(0xff67C4A7),
                    ),
                    child: const Text(
                      'Check Out',
                      style: TextStyle(fontSize: 16),
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}