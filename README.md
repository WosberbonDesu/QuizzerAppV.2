# QuizzerAppV.2
Quizzer App  upgraded version
## Additional
```python
 Future<void> addQuestionData(Map questionData, String quizId) async {
    await Firestore.instance
        .collection("Quiz")
        .document(quizId)
        .collection("QNA")
        .add(questionData)
        .catchError((e) {
      print(e);
    });
    
  }
```
# Due to security reasons, personal keys and codes that provide firebase communication have been deleted, edit it according to you.



![e](https://user-images.githubusercontent.com/69467096/117830229-1b619180-b27c-11eb-9854-d6ac0966cd67.jpg)
![d](https://user-images.githubusercontent.com/69467096/117831148-f91c4380-b27c-11eb-82a6-fd48ef22ce3a.jpg)
![f](https://user-images.githubusercontent.com/69467096/117830236-1c92be80-b27c-11eb-888d-3000aad52ab9.jpg)
![c](https://user-images.githubusercontent.com/69467096/117831151-f9b4da00-b27c-11eb-9610-eb504ec88620.jpg)
![a](https://user-images.githubusercontent.com/69467096/117831157-fb7e9d80-b27c-11eb-9f39-7d539c1e2c08.jpg)
![b](https://user-images.githubusercontent.com/69467096/117831155-fae60700-b27c-11eb-831d-562f077f4de1.jpg)
![g](https://user-images.githubusercontent.com/69467096/117830242-1ef51880-b27c-11eb-857c-573f93005a90.jpg)
![l](https://user-images.githubusercontent.com/69467096/117830247-1f8daf00-b27c-11eb-8119-ab575cb969f6.jpg)


![x](https://user-images.githubusercontent.com/69467096/117830629-7e532880-b27c-11eb-9a49-ceabe10d0c67.jpg)
![playstore](https://user-images.githubusercontent.com/69467096/117830747-9aef6080-b27c-11eb-9016-b763d953fe18.png)


```python
 getQuizezData() async {
    return await Firestore.instance.collection("Quiz").snapshots();
  }

  getQuestionData(String quizId) async {
    return await Firestore.instance
        .collection("Quiz")
        .document(quizId)
        .collection("QNA")
        .getDocuments();
  }
  getQuizData(String quizId) async{
    return await Firestore.instance
        .collection("Quiz")
        .document(quizId)
        .collection("QNA")
        .getDocuments();
  }
    
  }
```



