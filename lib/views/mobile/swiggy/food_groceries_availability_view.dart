import 'package:flutter/material.dart';
import 'package:swiggy_ui/utils/app_colors.dart';
import 'package:swiggy_ui/utils/ui_helper.dart';
import 'package:swiggy_ui/views/mobile/swiggy/genie/genie_screen.dart';
import 'package:swiggy_ui/widgets/responsive.dart';

import 'all_restaurants/all_restaurants_screen.dart';
import 'genie/genie_grocery_card_view.dart';
import 'meat/meat_screen.dart';

class FoodGroceriesAvailabilityView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final isTabletDesktop = Responsive.isTabletDesktop(context);

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
      child: Column(
        children: <Widget>[
          if (!isTabletDesktop)
            Row(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(8.0),
                    bottomRight: Radius.circular(8.0),
                  ),
                  child: Container(
                    width: 10.0,
                    height: 140.0,
                    color: swiggyOrange,
                  ),
                ),
                UIHelper.horizontalSpaceMedium(),
                Flexible(
                  child: Column(
                    children: <Widget>[
                      Text(
                        '121 Kilos de alimento são disperdiçados por pessoa todos os anos!',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      UIHelper.verticalSpaceSmall(),
                      Text(
                        'A Organização das Nações Unidas para a Alimentação e a Agricultura (FAO) calcula que 1,3 bilhão de toneladas de alimentos são desperdiçadas por ano no – cerca de 1/3 do que é produzido globalmente.',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              fontSize: 16.0,
                              color: Colors.grey[800],
                            ),
                      )
                    ],
                  ),
                )
              ],
            ),
          if (!isTabletDesktop) UIHelper.verticalSpaceLarge(),
          Stack(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: InkWell(
                  child: Container(
                    height: 150.0,
                    color: swiggyOrange,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.topLeft,
                          child: FractionallySizedBox(
                            widthFactor: 0.7,
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'ZeroHunger Project',
                                    style: Theme.of(context).textTheme.headline5!.copyWith(color: Colors.white),
                                  ),
                                  UIHelper.verticalSpaceExtraSmall(),
                                  Text(
                                    'Buscamos acabar com a fome combatendo o disperdício.',
                                    style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: 45.0,
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          color: darkOrange,
                          child: Row(
                            children: <Widget>[
                              Text(
                                'Clique aqui para saber mais!',
                                style:
                                    Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.white, fontSize: 18.0),
                              ),
                              UIHelper.horizontalSpaceSmall(),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                                size: 18.0,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  onTap: isTabletDesktop
                      ? () {}
                      : () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AllRestaurantsScreen(),
                            ),
                          );
                        },
                ),
              ),
              Positioned(
                top: -10.0,
                right: -10.0,
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/food-waste1.png',
                    width: 130.0,
                    height: 130.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          UIHelper.verticalSpaceMedium(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              GenieGroceryCardView(
                title: 'Genie',
                subtitle: 'Anything you need,\ndelivered',
                image: 'assets/images/food1.jpg',
                onTap: isTabletDesktop
                    ? () {}
                    : () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => GenieScreen(),
                          ),
                        );
                      },
              ),
              GenieGroceryCardView(
                title: 'Grocery',
                subtitle: 'Esentials delivered\nin 2 Hrs',
                image: 'assets/images/food4.jpg',
                onTap: isTabletDesktop
                    ? () {}
                    : () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => GenieScreen(),
                          ),
                        );
                      },
              ),
              GenieGroceryCardView(
                title: 'Meat',
                subtitle: 'Fesh meat\ndelivered safe',
                image: 'assets/images/food6.jpg',
                onTap: isTabletDesktop
                    ? () {}
                    : () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MeatScreen(),
                          ),
                        );
                      },
              ),
            ],
          )
        ],
      ),
    );
  }
}
