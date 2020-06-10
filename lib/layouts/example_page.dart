import 'package:flutter/material.dart';

class ExamplePageLayout extends StatelessWidget {
  Widget addressContainer = Container(
    padding: const EdgeInsets.all(32.0),
    child: Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  '展会地址',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                '河南郑州会展中心',
                style: TextStyle(color: Colors.grey[500]),
              )
            ],
          ),
        ),
        Icon(
          Icons.star,
          color: Colors.red[500],
        ),
        Text('888')
      ],
    ),
  );

  Column buildButtonColumn(IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.lightGreen[600],
        ),
        Container(
          margin: const EdgeInsets.only(top: 8.0),
          child: Text(
            label,
            style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                color: Colors.lightGreen[600]),
          ),
        )
      ],
    );
  }

  Widget buttonContainer = Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
//        buildButtonColumn(Icons.call, '电话'),
//        buildButtonColumn(Icons.near_me, '导航'),
//        buildButtonColumn(Icons.share, '分享'),
        Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.call,
              color: Colors.lightGreen[600],
            ),
            Container(
              margin: const EdgeInsets.only(top: 8.0),
              child: Text(
                '电话',
                style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.lightGreen[600]),
              ),
            )
          ],
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.near_me,
              color: Colors.lightGreen[600],
            ),
            Container(
              margin: const EdgeInsets.only(top: 8.0),
              child: Text(
                '导航',
                style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.lightGreen[600]),
              ),
            )
          ],
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.share,
              color: Colors.lightGreen[600],
            ),
            Container(
              margin: const EdgeInsets.only(top: 8.0),
              child: Text(
                '分享',
                style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.lightGreen[600]),
              ),
            )
          ],
        )
      ],
    ),
  );

  Widget textContainer = Container(
    padding: const EdgeInsets.all(32.0),
    child: Text(
      '''
      全新林肯冒险家 24.68万起售“豪”不妥协的美式豪华SUV全新林肯冒险家Corsair高能上市！ 5年14万公里的原厂质保服务，使林肯成为燃油车型提供5年质保的豪华汽车品牌。“美式豪华 中国制造”—全新林肯冒险家Corsair将为中国客户打造与时俱进的美式豪华“智享健康头等舱， 吃喝玩乐视听享受，随时一手掌控。同级最大12.8寸超大触控屏搭载SYNC+智行互联系统，融合“智能导航”、“语音交互”、“车载娱乐服务生态”和“云端智能互联互通”四大特色，颠覆人车互动的想象。
      近日，本店内有沃尔沃XC90销售，颜色可选，沃尔沃车型价格优惠躁动起来；钜惠在这“礼”，购车开门红！钜惠购车热销中。集团直补千元购车金，给您最真诚的价格，最优质体贴的服务！进店即可尊享优质服务。 1【预约礼】线上预约进店即送油卡或精美礼品 2【试驾礼】试乘试驾可得沃尔沃原厂打火机套盒一份。 3【订车礼】订车即送万元精美装饰礼包。 4【金融礼】订车即享20%首付，最高三年0息金融方案。 5【置换礼】置换最高可享23000元置换补贴。 6【转介绍礼】老客户成功介绍新客户订车，即可享受5000汇金币和油卡相送！让您安心又省心！
      期待荣威全新车型的朋友们久等了！
      新国潮智联网SUV荣威RX5 PLUS
      凭借全方位PLUS的动力总成升级无愧为“车轮上的国潮”！
      全新上市。即刻参与预定，即享超级福利——
      整车终身质保承诺终身免费保养服务互联网车型终身免流量
      以及30天无理由退车55元享上市5000元惊喜等你先享！
      作为荣威品牌年轻化战略的首款车型
      荣威RX5 PLUS拥有哪些超乎期待的实力呢？
      一起先睹为快！
      ''',
      softWrap: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('汽车展会'),
      ),
      body: ListView(
        children: [
          Image.asset(
            'images/cargril.png',
            width: 600.0,
            height: 250.0,
            fit: BoxFit.cover,
          ),
          addressContainer,
          buttonContainer,
          textContainer
        ],
      ),
    );
  }
}
