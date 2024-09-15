
INSERT INTO wp_jrf23a6sz5_posts
(`post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, 
 `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, 
 `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, 
 `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, 
 `post_mime_type`, `comment_count`) 
VALUES 
(2, 
 NOW(), 
 NOW(), 
 'A large mobile network operating company is building a machine learning model to predict customers who are likely to unsubscribe from the service. The company plans to offer an incentive for these customers as the cost of churn is far greater than the cost of the incentive.<br/>The model produces the following confusion matrix after evaluating on a test dataset of 100 customers:<br/><img class="in-exam-image" src="./3_files/0000200001.jpg"/><br/>Based on the model evaluation results, why is this a viable model for production?<br/>', 
 '#1', 
 '', 
 'Publish', 
 'closed', 
 '', 
 '', 
 'AWS ML Question-1', 
 '', 
 '', 
 NOW(), 
 NOW(), 
 '', 
 0, 
 'http://corporateschool.local/?post_type=lp_question&p=1', 
 0, 
 'lp_question', 
 '', 
 0);

set @lastQuestionId = LAST_Insert_ID();

INSERT INTO wp_jrf23a6sz5_learnpress_question_answers
(`question_id`, `title`, `value`, `order`, `is_true`) 
VALUES 
(@lastQuestionId, 'A. The model is 86% accurate and the cost incurred by the company as a result of false negatives is less than the false positives.', 'A. The model is 86% accurate and the cost incurred by the company as a result of false negatives is less than the false positives.', 1, 1);


INSERT INTO wp_jrf23a6sz5_learnpress_question_answers
(`question_id`, `title`, `value`, `order`, `is_true`) 
VALUES 
(@lastQuestionId, 'B. The precision of the model is 86%, which is less than the accuracy of the model.', 'B. The precision of the model is 86%, which is less than the accuracy of the model.', 2, 0);


INSERT INTO wp_jrf23a6sz5_learnpress_question_answers
(`question_id`, `title`, `value`, `order`, `is_true`) 
VALUES 
(@lastQuestionId, 'C. The model is 86% accurate and the cost incurred by the company as a result of false positives is less than the false negatives.', 'C. The model is 86% accurate and the cost incurred by the company as a result of false positives is less than the false negatives.', 3, 0);


INSERT INTO wp_jrf23a6sz5_learnpress_question_answers
(`question_id`, `title`, `value`, `order`, `is_true`) 
VALUES 
(@lastQuestionId, 'D. The precision of the model is 86%, which is greater than the accuracy of the model.', 'D. The precision of the model is 86%, which is greater than the accuracy of the model.', 4, 0);

