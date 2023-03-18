import 'package:flutter/material.dart';

class CommonWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CommonWidgetState();
}

class CommonWidgetState extends State<CommonWidget> {
  String _size = "S";
  bool isCashOnDelivery = false;
  bool isDigitalWallet = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("StateFul Widgets"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/jeans.jpg', //path
              width: 300,
              height: 200,
            ),
            const Text(
              "Select your Size:",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
                fontSize: 16,
              ),
            ),
            ListTile(
              title: const Text("Large"),
              leading: Radio<String>(
                value: 'L',
                groupValue: _size,
                onChanged: (value) {
                  setState(() {
                    _size = value!;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text("Medium"),
              leading: Radio<String>(
                value: 'M',
                groupValue: _size,
                onChanged: (value) {
                  setState(() {
                    _size = value!;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text("Small"),
              leading: Radio<String>(
                value: 'S',
                groupValue: _size,
                onChanged: (value) {
                  setState(() {
                    _size = value!;
                  });
                },
              ),
            ),
            TextButton(
              onPressed: () {
                _showColorDialog();
              },
              child: const Text(
                "Color",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              children: [
                Switch(
                  value: isCashOnDelivery,
                  activeColor: Colors.blue,
                  inactiveThumbColor: Colors.grey,
                  onChanged: (value) {
                    setState(() {
                      isCashOnDelivery = value;
                    });
                  },
                ),
                const Text("Cash on Delivery"),
              ],
            ),
            Row(
              children: [
                Switch(
                  value: isDigitalWallet,
                  activeColor: Colors.blue,
                  inactiveThumbColor: Colors.grey,
                  onChanged: (value) {
                    setState(() {
                      isDigitalWallet = value;
                    });
                  },
                ),
                const Text("Digital Wallet")
              ],
            ),
            ElevatedButton(
              onPressed: () {
                _showBuyConfirmAlert();
              },
              child: const Text("Buy Now"),
            )
          ],
        ),
      ),
    );
  }

  Future<void> _showColorDialog() async {
    await showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text('Select Color:'),
            children: <Widget>[
              SimpleDialogOption(
                onPressed: () {
                  Navigator.of(context).pop(); //exit
                },
                child: const Text('Black'),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Deep Blue'),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.of(context).pop(); //exit
                },
                child: const Text('Light Blue'),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.of(context).pop(); //exit
                },
                child: const Text('Brown'),
              ),
            ],
          );
        });
  }

  Future<void> _showBuyConfirmAlert() async {
    return showDialog<void>(
      context: context,
      // barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Process to Order'),
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Text('Are you sure to continue payment process?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('No'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('Yes'),
              onPressed: () {
                //canceling process
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
