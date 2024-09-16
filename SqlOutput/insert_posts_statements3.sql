
INSERT INTO wp_jrf23a6sz5_posts
(`post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, 
 `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, 
 `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, 
 `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, 
 `post_mime_type`, `comment_count`) VALUES 
(3, 
 NOW(), 
 NOW(), 
 'A large mobile network operating company is building a machine learning model to predict customers who are likely to unsubscribe from the service. The company plans to offer an incentive for these customers as the cost of churn is far greater than the cost of the incentive.<br/>The model produces the following confusion matrix after evaluating on a test dataset of 100 customers:<br/><img class="in-exam-image" src="./3_files/0000200001.jpg"/><br/>Based on the model evaluation results, why is this a viable model for production?<br/>', 
 'AWS ML Question #1', 
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

INSERT INTO wp_jrf23a6sz5_learnpress_question_answers (`question_id`, `title`, `value`, `order`, `is_true`)  VALUES 
(@lastQuestionId, 'A. The model is 86% accurate and the cost incurred by the company as a result of false negatives is less than the false positives.', 'A. The model is 86% accurate and the cost incurred by the company as a result of false negatives is less than the false positives.', 1, 'yes');

 
insert into `wp_jrf23a6sz5_learnpress_quiz_questions` (`quiz_id`,`question_id`,`question_order`) VALUES
(22946,@lastQuestionId,1);


INSERT INTO wp_jrf23a6sz5_learnpress_question_answers (`question_id`, `title`, `value`, `order`, `is_true`)  VALUES 
(@lastQuestionId, 'B. The precision of the model is 86%, which is less than the accuracy of the model.', 'B. The precision of the model is 86%, which is less than the accuracy of the model.', 2, 0);

 
insert into `wp_jrf23a6sz5_learnpress_quiz_questions` (`quiz_id`,`question_id`,`question_order`) VALUES
(22946,@lastQuestionId,2);


INSERT INTO wp_jrf23a6sz5_learnpress_question_answers (`question_id`, `title`, `value`, `order`, `is_true`)  VALUES 
(@lastQuestionId, 'C. The model is 86% accurate and the cost incurred by the company as a result of false positives is less than the false negatives.', 'C. The model is 86% accurate and the cost incurred by the company as a result of false positives is less than the false negatives.', 3, 0);

 
insert into `wp_jrf23a6sz5_learnpress_quiz_questions` (`quiz_id`,`question_id`,`question_order`) VALUES
(22946,@lastQuestionId,3);


INSERT INTO wp_jrf23a6sz5_learnpress_question_answers (`question_id`, `title`, `value`, `order`, `is_true`)  VALUES 
(@lastQuestionId, 'D. The precision of the model is 86%, which is greater than the accuracy of the model.', 'D. The precision of the model is 86%, which is greater than the accuracy of the model.', 4, 0);

 
insert into `wp_jrf23a6sz5_learnpress_quiz_questions` (`quiz_id`,`question_id`,`question_order`) VALUES
(22946,@lastQuestionId,4);

 
insert into wp_jrf23a6sz5_postmeta (`post_id`,`meta_key`,`meta_value`) VALUES
(@lastQuestionId, '_lp_mark',1),(@lastQuestionId, '_lp_type','single_choice'); 
    
#-------------Adding next question ----------------#

INSERT INTO wp_jrf23a6sz5_posts
(`post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, 
 `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, 
 `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, 
 `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, 
 `post_mime_type`, `comment_count`) VALUES 
(3, 
 NOW(), 
 NOW(), 
 'A Machine Learning Specialist is designing a system for improving sales for a company. The objective is to use the large amount of information the company has on users'' behavior and product preferences to predict which products users would like based on the users'' similarity to other users.<br/>What should the Specialist do to meet this objective?<br/>', 
 'AWS ML Question #2', 
 '', 
 'Publish', 
 'closed', 
 '', 
 '', 
 'AWS ML Question-2', 
 '', 
 '', 
 NOW(), 
 NOW(), 
 '', 
 0, 
 'http://corporateschool.local/?post_type=lp_question&p=2', 
 0, 
 'lp_question', 
 '', 
 0);

set @lastQuestionId = LAST_Insert_ID();

INSERT INTO wp_jrf23a6sz5_learnpress_question_answers (`question_id`, `title`, `value`, `order`, `is_true`)  VALUES 
(@lastQuestionId, 'A. Build a content-based filtering recommendation engine with Apache Spark ML on Amazon EMR', 'A. Build a content-based filtering recommendation engine with Apache Spark ML on Amazon EMR', 1, 0);

 
insert into `wp_jrf23a6sz5_learnpress_quiz_questions` (`quiz_id`,`question_id`,`question_order`) VALUES
(22946,@lastQuestionId,1);


INSERT INTO wp_jrf23a6sz5_learnpress_question_answers (`question_id`, `title`, `value`, `order`, `is_true`)  VALUES 
(@lastQuestionId, 'B. Build a collaborative filtering recommendation engine with Apache Spark ML on Amazon EMR.', 'B. Build a collaborative filtering recommendation engine with Apache Spark ML on Amazon EMR.', 2, 'yes');

 
insert into `wp_jrf23a6sz5_learnpress_quiz_questions` (`quiz_id`,`question_id`,`question_order`) VALUES
(22946,@lastQuestionId,2);


INSERT INTO wp_jrf23a6sz5_learnpress_question_answers (`question_id`, `title`, `value`, `order`, `is_true`)  VALUES 
(@lastQuestionId, 'C. Build a model-based filtering recommendation engine with Apache Spark ML on Amazon EMR', 'C. Build a model-based filtering recommendation engine with Apache Spark ML on Amazon EMR', 3, 0);

 
insert into `wp_jrf23a6sz5_learnpress_quiz_questions` (`quiz_id`,`question_id`,`question_order`) VALUES
(22946,@lastQuestionId,3);


INSERT INTO wp_jrf23a6sz5_learnpress_question_answers (`question_id`, `title`, `value`, `order`, `is_true`)  VALUES 
(@lastQuestionId, 'D. Build a combinative filtering recommendation engine with Apache Spark ML on Amazon EMR', 'D. Build a combinative filtering recommendation engine with Apache Spark ML on Amazon EMR', 4, 0);

 
insert into `wp_jrf23a6sz5_learnpress_quiz_questions` (`quiz_id`,`question_id`,`question_order`) VALUES
(22946,@lastQuestionId,4);

 
insert into wp_jrf23a6sz5_postmeta (`post_id`,`meta_key`,`meta_value`) VALUES
(@lastQuestionId, '_lp_mark',1),(@lastQuestionId, '_lp_type','single_choice'); 
    
#-------------Adding next question ----------------#

INSERT INTO wp_jrf23a6sz5_posts
(`post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, 
 `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, 
 `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, 
 `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, 
 `post_mime_type`, `comment_count`) VALUES 
(3, 
 NOW(), 
 NOW(), 
 'A Mobile Network Operator is building an analytics platform to analyze and optimize a company''s operations using Amazon Athena and Amazon S3.<br/>The source systems send data in .CSV format in real time. The Data Engineering team wants to transform the data to the Apache Parquet format before storing it on Amazon S3.<br/>Which solution takes the LEAST effort to implement?<br/>', 
 'AWS ML Question #3', 
 '', 
 'Publish', 
 'closed', 
 '', 
 '', 
 'AWS ML Question-3', 
 '', 
 '', 
 NOW(), 
 NOW(), 
 '', 
 0, 
 'http://corporateschool.local/?post_type=lp_question&p=3', 
 0, 
 'lp_question', 
 '', 
 0);

set @lastQuestionId = LAST_Insert_ID();

INSERT INTO wp_jrf23a6sz5_learnpress_question_answers (`question_id`, `title`, `value`, `order`, `is_true`)  VALUES 
(@lastQuestionId, 'A. Ingest .CSV data using Apache Kafka Streams on Amazon EC2 instances and use Kafka Connect S3 to serialize data as Parquet', 'A. Ingest .CSV data using Apache Kafka Streams on Amazon EC2 instances and use Kafka Connect S3 to serialize data as Parquet', 1, 0);

 
insert into `wp_jrf23a6sz5_learnpress_quiz_questions` (`quiz_id`,`question_id`,`question_order`) VALUES
(22946,@lastQuestionId,1);


INSERT INTO wp_jrf23a6sz5_learnpress_question_answers (`question_id`, `title`, `value`, `order`, `is_true`)  VALUES 
(@lastQuestionId, 'B. Ingest .CSV data from Amazon Kinesis Data Streams and use Amazon Glue to convert data into Parquet.', 'B. Ingest .CSV data from Amazon Kinesis Data Streams and use Amazon Glue to convert data into Parquet.', 2, 'yes');

 
insert into `wp_jrf23a6sz5_learnpress_quiz_questions` (`quiz_id`,`question_id`,`question_order`) VALUES
(22946,@lastQuestionId,2);


INSERT INTO wp_jrf23a6sz5_learnpress_question_answers (`question_id`, `title`, `value`, `order`, `is_true`)  VALUES 
(@lastQuestionId, 'C. Ingest .CSV data using Apache Spark Structured Streaming in an Amazon EMR cluster and use Apache Spark to convert data into Parquet.', 'C. Ingest .CSV data using Apache Spark Structured Streaming in an Amazon EMR cluster and use Apache Spark to convert data into Parquet.', 3, 0);

 
insert into `wp_jrf23a6sz5_learnpress_quiz_questions` (`quiz_id`,`question_id`,`question_order`) VALUES
(22946,@lastQuestionId,3);


INSERT INTO wp_jrf23a6sz5_learnpress_question_answers (`question_id`, `title`, `value`, `order`, `is_true`)  VALUES 
(@lastQuestionId, 'D. Ingest .CSV data from Amazon Kinesis Data Streams and use Amazon Kinesis Data Firehose to convert data into Parquet.', 'D. Ingest .CSV data from Amazon Kinesis Data Streams and use Amazon Kinesis Data Firehose to convert data into Parquet.', 4, 0);

 
insert into `wp_jrf23a6sz5_learnpress_quiz_questions` (`quiz_id`,`question_id`,`question_order`) VALUES
(22946,@lastQuestionId,4);

 
insert into wp_jrf23a6sz5_postmeta (`post_id`,`meta_key`,`meta_value`) VALUES
(@lastQuestionId, '_lp_mark',1),(@lastQuestionId, '_lp_type','single_choice'); 
    
#-------------Adding next question ----------------#

INSERT INTO wp_jrf23a6sz5_posts
(`post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, 
 `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, 
 `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, 
 `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, 
 `post_mime_type`, `comment_count`) VALUES 
(3, 
 NOW(), 
 NOW(), 
 'A city wants to monitor its air quality to address the consequences of air pollution. A Machine Learning Specialist needs to forecast the air quality in parts per million of contaminates for the next 2 days in the city. As this is a prototype, only daily data from the last year is available.<br/>Which model is MOST likely to provide the best results in Amazon SageMaker?<br/>', 
 'AWS ML Question #4', 
 '', 
 'Publish', 
 'closed', 
 '', 
 '', 
 'AWS ML Question-4', 
 '', 
 '', 
 NOW(), 
 NOW(), 
 '', 
 0, 
 'http://corporateschool.local/?post_type=lp_question&p=4', 
 0, 
 'lp_question', 
 '', 
 0);

set @lastQuestionId = LAST_Insert_ID();

INSERT INTO wp_jrf23a6sz5_learnpress_question_answers (`question_id`, `title`, `value`, `order`, `is_true`)  VALUES 
(@lastQuestionId, 'A. Use the Amazon SageMaker k-Nearest-Neighbors (kNN) algorithm on the single time series consisting of the full year of data with a predictor_type of regressor.', 'A. Use the Amazon SageMaker k-Nearest-Neighbors (kNN) algorithm on the single time series consisting of the full year of data with a predictor_type of regressor.', 1, 0);

 
insert into `wp_jrf23a6sz5_learnpress_quiz_questions` (`quiz_id`,`question_id`,`question_order`) VALUES
(22946,@lastQuestionId,1);


INSERT INTO wp_jrf23a6sz5_learnpress_question_answers (`question_id`, `title`, `value`, `order`, `is_true`)  VALUES 
(@lastQuestionId, 'B. Use Amazon SageMaker Random Cut Forest (RCF) on the single time series consisting of the full year of data.', 'B. Use Amazon SageMaker Random Cut Forest (RCF) on the single time series consisting of the full year of data.', 2, 0);

 
insert into `wp_jrf23a6sz5_learnpress_quiz_questions` (`quiz_id`,`question_id`,`question_order`) VALUES
(22946,@lastQuestionId,2);


INSERT INTO wp_jrf23a6sz5_learnpress_question_answers (`question_id`, `title`, `value`, `order`, `is_true`)  VALUES 
(@lastQuestionId, 'C. Use the Amazon SageMaker Linear Learner algorithm on the single time series consisting of the full year of data with a predictor_type of regressor.', 'C. Use the Amazon SageMaker Linear Learner algorithm on the single time series consisting of the full year of data with a predictor_type of regressor.', 3, 'yes');

 
insert into `wp_jrf23a6sz5_learnpress_quiz_questions` (`quiz_id`,`question_id`,`question_order`) VALUES
(22946,@lastQuestionId,3);


INSERT INTO wp_jrf23a6sz5_learnpress_question_answers (`question_id`, `title`, `value`, `order`, `is_true`)  VALUES 
(@lastQuestionId, 'D. Use the Amazon SageMaker Linear Learner algorithm on the single time series consisting of the full year of data with a predictor_type of classifier.', 'D. Use the Amazon SageMaker Linear Learner algorithm on the single time series consisting of the full year of data with a predictor_type of classifier.', 4, 0);

 
insert into `wp_jrf23a6sz5_learnpress_quiz_questions` (`quiz_id`,`question_id`,`question_order`) VALUES
(22946,@lastQuestionId,4);

 
insert into wp_jrf23a6sz5_postmeta (`post_id`,`meta_key`,`meta_value`) VALUES
(@lastQuestionId, '_lp_mark',1),(@lastQuestionId, '_lp_type','single_choice'); 
    
#-------------Adding next question ----------------#

INSERT INTO wp_jrf23a6sz5_posts
(`post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, 
 `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, 
 `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, 
 `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, 
 `post_mime_type`, `comment_count`) VALUES 
(3, 
 NOW(), 
 NOW(), 
 'A Data Engineer needs to build a model using a dataset containing customer credit card information<br/>How can the Data Engineer ensure the data remains encrypted and the credit card information is secure?<br/>', 
 'AWS ML Question #5', 
 '', 
 'Publish', 
 'closed', 
 '', 
 '', 
 'AWS ML Question-5', 
 '', 
 '', 
 NOW(), 
 NOW(), 
 '', 
 0, 
 'http://corporateschool.local/?post_type=lp_question&p=5', 
 0, 
 'lp_question', 
 '', 
 0);

set @lastQuestionId = LAST_Insert_ID();

INSERT INTO wp_jrf23a6sz5_learnpress_question_answers (`question_id`, `title`, `value`, `order`, `is_true`)  VALUES 
(@lastQuestionId, 'A. Use a custom encryption algorithm to encrypt the data and store the data on an Amazon SageMaker instance in a VPC. Use the SageMaker DeepAR algorithm to randomize the credit card numbers.', 'A. Use a custom encryption algorithm to encrypt the data and store the data on an Amazon SageMaker instance in a VPC. Use the SageMaker DeepAR algorithm to randomize the credit card numbers.', 1, 0);

 
insert into `wp_jrf23a6sz5_learnpress_quiz_questions` (`quiz_id`,`question_id`,`question_order`) VALUES
(22946,@lastQuestionId,1);


INSERT INTO wp_jrf23a6sz5_learnpress_question_answers (`question_id`, `title`, `value`, `order`, `is_true`)  VALUES 
(@lastQuestionId, 'B. Use an IAM policy to encrypt the data on the Amazon S3 bucket and Amazon Kinesis to automatically discard credit card numbers and insert fake credit card numbers.', 'B. Use an IAM policy to encrypt the data on the Amazon S3 bucket and Amazon Kinesis to automatically discard credit card numbers and insert fake credit card numbers.', 2, 0);

 
insert into `wp_jrf23a6sz5_learnpress_quiz_questions` (`quiz_id`,`question_id`,`question_order`) VALUES
(22946,@lastQuestionId,2);


INSERT INTO wp_jrf23a6sz5_learnpress_question_answers (`question_id`, `title`, `value`, `order`, `is_true`)  VALUES 
(@lastQuestionId, 'C. Use an Amazon SageMaker launch configuration to encrypt the data once it is copied to the SageMaker instance in a VPC. Use the SageMaker principal component analysis (PCA) algorithm to reduce the length of the credit card numbers.', 'C. Use an Amazon SageMaker launch configuration to encrypt the data once it is copied to the SageMaker instance in a VPC. Use the SageMaker principal component analysis (PCA) algorithm to reduce the length of the credit card numbers.', 3, 0);

 
insert into `wp_jrf23a6sz5_learnpress_quiz_questions` (`quiz_id`,`question_id`,`question_order`) VALUES
(22946,@lastQuestionId,3);


INSERT INTO wp_jrf23a6sz5_learnpress_question_answers (`question_id`, `title`, `value`, `order`, `is_true`)  VALUES 
(@lastQuestionId, 'D. Use AWS KMS to encrypt the data on Amazon S3 and Amazon SageMaker, and redact the credit card numbers from the customer data with AWS Glue.', 'D. Use AWS KMS to encrypt the data on Amazon S3 and Amazon SageMaker, and redact the credit card numbers from the customer data with AWS Glue.', 4, 'yes');

 
insert into `wp_jrf23a6sz5_learnpress_quiz_questions` (`quiz_id`,`question_id`,`question_order`) VALUES
(22946,@lastQuestionId,4);

 
insert into wp_jrf23a6sz5_postmeta (`post_id`,`meta_key`,`meta_value`) VALUES
(@lastQuestionId, '_lp_mark',1),(@lastQuestionId, '_lp_type','single_choice'); 
    
#-------------Adding next question ----------------#

INSERT INTO wp_jrf23a6sz5_posts
(`post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, 
 `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, 
 `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, 
 `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, 
 `post_mime_type`, `comment_count`) VALUES 
(3, 
 NOW(), 
 NOW(), 
 'A Machine Learning Specialist is configuring Amazon SageMaker so multiple Data Scientists can access notebooks, train models, and deploy endpoints. To ensure the best operational performance, the Specialist needs to be able to track how often the Scientists are deploying models, GPU and CPU utilization on the deployed SageMaker endpoints, and all errors that are generated when an endpoint is invoked.<br/>Which services are integrated with Amazon SageMaker to track this information? (Choose two.)<br/>', 
 'AWS ML Question #21', 
 '', 
 'Publish', 
 'closed', 
 '', 
 '', 
 'AWS ML Question-6', 
 '', 
 '', 
 NOW(), 
 NOW(), 
 '', 
 0, 
 'http://corporateschool.local/?post_type=lp_question&p=6', 
 0, 
 'lp_question', 
 '', 
 0);

set @lastQuestionId = LAST_Insert_ID();

INSERT INTO wp_jrf23a6sz5_learnpress_question_answers (`question_id`, `title`, `value`, `order`, `is_true`)  VALUES 
(@lastQuestionId, 'A. AWS CloudTrail', 'A. AWS CloudTrail', 1, 'yes');

 
insert into `wp_jrf23a6sz5_learnpress_quiz_questions` (`quiz_id`,`question_id`,`question_order`) VALUES
(22946,@lastQuestionId,1);


INSERT INTO wp_jrf23a6sz5_learnpress_question_answers (`question_id`, `title`, `value`, `order`, `is_true`)  VALUES 
(@lastQuestionId, 'B. AWS Health', 'B. AWS Health', 2, 0);

 
insert into `wp_jrf23a6sz5_learnpress_quiz_questions` (`quiz_id`,`question_id`,`question_order`) VALUES
(22946,@lastQuestionId,2);


INSERT INTO wp_jrf23a6sz5_learnpress_question_answers (`question_id`, `title`, `value`, `order`, `is_true`)  VALUES 
(@lastQuestionId, 'C. AWS Trusted Advisor', 'C. AWS Trusted Advisor', 3, 0);

 
insert into `wp_jrf23a6sz5_learnpress_quiz_questions` (`quiz_id`,`question_id`,`question_order`) VALUES
(22946,@lastQuestionId,3);


INSERT INTO wp_jrf23a6sz5_learnpress_question_answers (`question_id`, `title`, `value`, `order`, `is_true`)  VALUES 
(@lastQuestionId, 'D. Amazon CloudWatch', 'D. Amazon CloudWatch', 4, 'yes');

 
insert into `wp_jrf23a6sz5_learnpress_quiz_questions` (`quiz_id`,`question_id`,`question_order`) VALUES
(22946,@lastQuestionId,4);


INSERT INTO wp_jrf23a6sz5_learnpress_question_answers (`question_id`, `title`, `value`, `order`, `is_true`)  VALUES 
(@lastQuestionId, 'E. AWS Config', 'E. AWS Config', 5, 0);

 
insert into `wp_jrf23a6sz5_learnpress_quiz_questions` (`quiz_id`,`question_id`,`question_order`) VALUES
(22946,@lastQuestionId,5);

 
insert into wp_jrf23a6sz5_postmeta (`post_id`,`meta_key`,`meta_value`) VALUES
(@lastQuestionId, '_lp_mark',1),(@lastQuestionId, '_lp_type','multi_choice'); 
    
#-------------Adding next question ----------------#

INSERT INTO wp_jrf23a6sz5_posts
(`post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, 
 `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, 
 `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, 
 `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, 
 `post_mime_type`, `comment_count`) VALUES 
(3, 
 NOW(), 
 NOW(), 
 'A Machine Learning Specialist is configuring Amazon SageMaker so multiple Data Scientists can access notebooks, train models, and deploy endpoints. To ensure the best operational performance, the Specialist needs to be able to track how often the Scientists are deploying models, GPU and CPU utilization on the deployed SageMaker endpoints, and all errors that are generated when an endpoint is invoked.<br/>Which services are integrated with Amazon SageMaker to track this information? (Choose two.)<br/>', 
 'AWS ML Question #21', 
 '', 
 'Publish', 
 'closed', 
 '', 
 '', 
 'AWS ML Question-7', 
 '', 
 '', 
 NOW(), 
 NOW(), 
 '', 
 0, 
 'http://corporateschool.local/?post_type=lp_question&p=7', 
 0, 
 'lp_question', 
 '', 
 0);

set @lastQuestionId = LAST_Insert_ID();

INSERT INTO wp_jrf23a6sz5_learnpress_question_answers (`question_id`, `title`, `value`, `order`, `is_true`)  VALUES 
(@lastQuestionId, 'Yes', 'Yes', 1, 'yes');

 
insert into `wp_jrf23a6sz5_learnpress_quiz_questions` (`quiz_id`,`question_id`,`question_order`) VALUES
(22946,@lastQuestionId,1);


INSERT INTO wp_jrf23a6sz5_learnpress_question_answers (`question_id`, `title`, `value`, `order`, `is_true`)  VALUES 
(@lastQuestionId, 'No', 'No', 2, 0);

 
insert into `wp_jrf23a6sz5_learnpress_quiz_questions` (`quiz_id`,`question_id`,`question_order`) VALUES
(22946,@lastQuestionId,2);

 
insert into wp_jrf23a6sz5_postmeta (`post_id`,`meta_key`,`meta_value`) VALUES
(@lastQuestionId, '_lp_mark',1),(@lastQuestionId, '_lp_type','true_or_false'); 
    
#-------------Adding next question ----------------#
