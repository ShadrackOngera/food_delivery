import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:food_delivery/pages/delivery_progress_page.dart';
import 'package:food_delivery/widgets/primary_button.dart';
import 'package:food_delivery/widgets/primary_text.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;

  void userTappedPay() {
    if (formKey.currentState!.validate()) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: PrimaryText(
            text: 'Confirm Payment',
            color: Theme.of(context).colorScheme.inversePrimary,
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                PrimaryText(
                  text: 'Card Number: $cardNumber',
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
                PrimaryText(
                  text: 'Expiry Date: $expiryDate',
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
                PrimaryText(
                  text: 'Cvv: $cvvCode',
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
                PrimaryText(
                  text: 'Card Holder Name: $cardHolderName',
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: PrimaryText(
                text: 'cancel',
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DeliveryProgressPage(),
                  ),
                );
              },
              child: PrimaryText(
                text: 'Proceed',
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
        title: PrimaryText(
          text: 'Checkout',
          fontSize: 18,
          color: Theme.of(context).colorScheme.inversePrimary,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CreditCardWidget(
              cardNumber: cardNumber,
              expiryDate: expiryDate,
              cardHolderName: cardHolderName,
              cvvCode: cvvCode,
              showBackView: isCvvFocused,
              onCreditCardWidgetChange: (data) {},
            ),
            CreditCardForm(
              cardNumber: cardNumber,
              expiryDate: expiryDate,
              cardHolderName: cardHolderName,
              cvvCode: cvvCode,
              onCreditCardModelChange: (data) {
                setState(() {
                  cardNumber = data.cardNumber;
                  expiryDate = data.expiryDate;
                  cardHolderName = data.cardHolderName;
                  cvvCode = data.cvvCode;
                });
              },
              formKey: formKey,
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: PrimaryButton(
                onTap: userTappedPay,
                child: PrimaryText(
                  text: 'Pay Now',
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
