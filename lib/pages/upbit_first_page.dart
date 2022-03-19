import 'package:flutter/material.dart';
import 'package:upbit_ui_clone/config/colors.dart';

class UpbitFirstPage extends StatelessWidget {
  const UpbitFirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TextField(
          decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              hintText: "코인명/심볼 검색",
              hintStyle: TextStyle(color: Colors.white)),
        ),
        ToggleButtons(
          children: [
            Text(
              "KRW",
              style: TextStyle(
                color: UpbitColor.blue,
              ),
            ),
            Text(
              "BTC",
              style: TextStyle(
                color: UpbitColor.grey2,
              ),
            ),
            Text(
              "USDT",
              style: TextStyle(
                color: UpbitColor.grey2,
              ),
            ),
            Text(
              "관심",
              style: TextStyle(
                color: UpbitColor.grey2,
              ),
            ),
          ],
          isSelected: [
            false,
            false,
            false,
            false,
          ],
        ),
        Divider(
          color: UpbitColor.grey1,
          thickness: 0.5,
        ),
        Container(
          child: Row(
            children: [
              Spacer(),
              Expanded(
                child: Text(
                  "한글명",
                  style: TextStyle(
                    color: UpbitColor.grey2,
                  ),
                ),
                flex: 8,
              ),
              Expanded(
                child: Text(
                  "현재가",
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    color: UpbitColor.grey2,
                  ),
                ),
                flex: 5,
              ),
              Expanded(
                child: Text(
                  "전일대비",
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    color: UpbitColor.grey2,
                  ),
                ),
                flex: 5,
              ),
              Expanded(
                child: Text(
                  "거래대금",
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    color: UpbitColor.grey2,
                  ),
                ),
                flex: 8,
              ),
              Spacer(),
            ],
          ),
        ),
        Divider(
          color: UpbitColor.grey1,
          thickness: 0.25,
        ),
        Container(
          child: Row(
            children: [
              Spacer(),
              Expanded(
                child: Text(
                  "한글명",
                  style: TextStyle(
                    color: UpbitColor.grey2,
                  ),
                ),
                flex: 8,
              ),
              Expanded(
                child: Text(
                  "현재가",
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    color: UpbitColor.grey2,
                  ),
                ),
                flex: 5,
              ),
              Expanded(
                child: Text(
                  "전일대비",
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    color: UpbitColor.grey2,
                  ),
                ),
                flex: 5,
              ),
              Expanded(
                child: Text(
                  "거래대금",
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    color: UpbitColor.grey2,
                  ),
                ),
                flex: 8,
              ),
              Spacer(),
            ],
          ),
        ),
      ],
    );
  }
}
