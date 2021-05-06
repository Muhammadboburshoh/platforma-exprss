/*
  -POST/login
*/
-login(username, password): {accessTokin, userId}

/*
  -POST/signup
*/
-signup(username, password, name): {accessTokin, userId}

/*
  -GIT/topics
*/
-getTopics(page): [Topics]

/*
  -POST/topics
*/
-postTopics(authorId, topicTitle): Topics


/*
  -DELETE/topics[optional]
*/
-deleteTopics(topicId)

/*
  -PUT/topics[optional]
*/
-editTopics(topicId, column, value)

--------------------------------

/*
  -GET/lectures
*/

-getLectures(topicId): [Lectures]

/*
  -POST/lectures
*/
-postLectures(topicId, lectureTitle, lectureAudio, lectureIslike, ): Lectures

/*
  -DELETE/lectures
*/
-deleteLectures(lectureId ): Lectures

/*
  -PUT/lectures
*/
-editLectures(lectureId, column, value): Lectures

------------------------------------------

/*
  -GET/questions
*/
-getQuestions(lectureId): [Questions]

/*
  -POST/questions
*/
-postQuestions(questionTitle, questionVariants, lectureId): Questions

/*
  -DELETE/questions
*/
-deleteQuestions(questionId): Questions

/*
  -PUT/questions
*/
-editQuestions(questionId, column, value): Questions







