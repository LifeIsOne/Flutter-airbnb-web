import 'package:flutter/material.dart';

import '../../styles.dart';

class CommonFormField extends StatelessWidget {
  final hintText; // 안내 텍스트
  final prefixText; // 접두사 텍스트

  const CommonFormField({
    required this.prefixText, // required 를 붙여 꼭 받아야 한다고 알림. final이잖아.
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TextFormField(
          textAlignVertical: TextAlignVertical.bottom,
          // TextFormFiled 내부를 세로로 정렬!
          decoration: InputDecoration(
            // 3. TextFormFiled 내부에 패딩을 줄 수 있다
            contentPadding: EdgeInsets.only(top: 30, left: 20, bottom: 10),
            hintText: hintText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Colors.black,
                  width: 2,
                )),
          ),
        ),
        Positioned(
            top: 8,
            left: 20,
            child: Text(prefixText, style: overLine()) // 상단 취소선을 그리는 스타일 적용
            ),
      ],
    );
  }
}
