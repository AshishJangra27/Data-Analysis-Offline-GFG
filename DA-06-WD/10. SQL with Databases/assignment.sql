drop database if exists gfg_courses;
create database gfg_courses;

use gfg_courses;

CREATE table if not exists users (  
										user_id VARCHAR(20), 
                                        mail_id VARCHAR(50),
                                        address VARCHAR(100),
                                        country_code VARCHAR(3),
                                        phone INT,
                                        age INT
								);
                                
CREATE table if not exists courses (  
									course_id    VARCHAR(5), 
									mentor_name  VARCHAR(50),
									ta_name      VARCHAR(50),
									course_price FLOAT,
									course_mode  VARCHAR(5),
									location     VARCHAR(100)
							);
							
                            
CREATE table if not exists transection (  
									transection_id    INT, 
									course_id  VARCHAR(5),
									user_id    VARCHAR(20),
                                    marked_price FLOAT,
                                    discounted_price FLOAT
							);
