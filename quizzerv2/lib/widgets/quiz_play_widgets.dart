import 'package:flutter/material.dart';

class OptionTitle extends StatefulWidget {
  final String option, description, correctAnswer, optionSelected;

  OptionTitle({
    @required this.optionSelected,
    @required this.correctAnswer,
    @required this.description,
    @required this.option}
    );
  @override
  _OptionTitleState createState() => _OptionTitleState();
}

class _OptionTitleState extends State<OptionTitle> {
  @override
  Widget build(BuildContext context) {
    return Container(

      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
               border: Border.all(color: widget.description == widget.optionSelected ? widget.optionSelected == widget.correctAnswer ?
          Colors.green.withOpacity(0.7) : Colors.red.withOpacity(0.7) : Colors.grey
               ),
            ),
            child: Text(
              "${widget.option}",
              style: TextStyle(
                color: widget.optionSelected == widget.description ? widget.correctAnswer == widget.optionSelected ?
                Colors.green.withOpacity(0.7) : Colors.redAccent
                : Colors.white
              ),
          ),
          ),
          SizedBox(width: 8,),
          Text(
            widget.description,
            style: TextStyle(
              fontSize: 17,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
class NoOfQuestionTile extends StatefulWidget {
  final String text;
  final int number;

  NoOfQuestionTile({this.text, this.number});

  @override
  _NoOfQuestionTileState createState() => _NoOfQuestionTileState();
}

class _NoOfQuestionTileState extends State<NoOfQuestionTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 3),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 6),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(14),
                    bottomLeft: Radius.circular(14)
                ),
                color: Colors.blue
            ),
            child: Text(
              "${widget.number}",
              style: TextStyle(color: Colors.white),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(14),
                  bottomRight: Radius.circular(14),
                ),
                color: Colors.blueGrey
            ),
            child: Text(
              widget.text,
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}

