import 'package:flutter/material.dart';

enum ConferenceItem { AddMember, LockConference, ModifyLayout, TurnoffAll }

class PoputMenuBtnTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('popupmenubutton widget'),
      ),
      body: Center(
        child: FlatButton(
            onPressed: () {},
            child: PopupMenuButton<ConferenceItem>(
              itemBuilder: (BuildContext context) =>
                  <PopupMenuEntry<ConferenceItem>>[
                const PopupMenuItem<ConferenceItem>(
                  value: ConferenceItem.AddMember,
                  child: Text('添加成员'),
                ),
                    const PopupMenuItem<ConferenceItem>(
                      value: ConferenceItem.LockConference,
                      child: Text('锁定会议'),
                    ),
                    const PopupMenuItem<ConferenceItem>(
                      value: ConferenceItem.ModifyLayout,
                      child: Text('修改布局 '),
                    ),
                    const PopupMenuItem<ConferenceItem>(
                      value: ConferenceItem.TurnoffAll,
                      child: Text('挂断所有'),
                    ),
              ],
              onSelected: (ConferenceItem result) {},
            )),
      ),
    );
  }
}
