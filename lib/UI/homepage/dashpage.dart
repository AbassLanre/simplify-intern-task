import 'package:flutter/material.dart';
import 'package:pavilion_rewards/UI/widgets/balanceCards.dart';
import 'package:pavilion_rewards/UI/widgets/redeemNow.dart';
import 'package:pavilion_rewards/UI/widgets/top_contents.dart';
import 'package:pavilion_rewards/UI/widgets/transactionHistory.dart';
import 'package:pavilion_rewards/UI/widgets/virtualCards.dart';

class DashPage extends StatelessWidget {
  const DashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xf0f0f0f0),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
              children: [
                Container(
                  height: 200,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(24.0),
                          bottomRight: Radius.circular(24.0)),


                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: width*25/375),
                    child: Column(
                      children: [
                        SizedBox(height: height*0.03325,),
                        const TopContents(),
                        SizedBox(height: height*0.046108,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            BalanceCard(
                              image: 'assets/wallet.png',
                              text1: 'Wallet Balance',
                            ),
                            BalanceCard(
                              image: 'assets/hand.png',
                              text1: 'Reward Balance',
                            )
                          ],
                        ),
                        const SizedBox(height: 40,),

                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 25,),
                const RedeemNowContainer(),
                const SizedBox(height: 25,),
                const VirtualCard(),
                const SizedBox(height: 25,),
                const TransactionHistory(),

              ],
            )),
      ),
    );
  }
}
