import 'package:flutter/material.dart';

import '../../size.dart';
import '../../styles.dart';

class HomeHeaderForm extends StatelessWidget {
  const HomeHeaderForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width; // TODO : 코드 해석하기
    return Align(
      alignment: screenWidth < 520 ? Alignment(0, 0) : Alignment(-0.6, 0),
      // TODO : 코드 해석 2
      child: Container(
        width: 420,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Form(
            child: Padding(
          padding: const EdgeInsets.all(gap_l),
          child: Column(
            children: [
              _buildFormTitle(),
              _buildFormField(),
              _buildFormSubmit(),
            ],
          ),
        )),
      ),
    );
  }

  Column _buildFormTitle() {
    return Column(
      children: [
        Text(
          "모두의 숙소에서 숙소를 검색하세요.",
          style: h4(),
        ),
        SizedBox(height: gap_xs),
        Text(
          "혼자 하는 여행에 적합한 개인실부터 여럿이 함께하는 여행에 좋은 '공간 천체' 숙소까지, 모두의 숙소에 다 있습니다.",
          style: body1(),
        ),
        SizedBox(
          height: gap_m,
        ),
      ],
    );
  }

  Column _buildFormField() {
    return Column(
      children: [
        CommonFormField(
            // prefixText: "위치",
            // hintText: "근처 추천 장소",
            ),
        SizedBox(height: gap_s),
        Row(
          children: [Column()],
        )
      ],
    );
  }

  Column _buildFormSubmit() {
    return Column(// TODO :

        );
  }
}

class CommonFormField extends StatelessWidget {
  const CommonFormField({
    super.key,
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
          ),
        )
      ],
    );
  }
}
