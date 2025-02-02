# 📊 Instagram User Analytics | SQL 

## 📌 Project Objective
This project analyzes Instagram user data using SQL and MySQL Server. The goal is to generate valuable insights on user interactions, engagement, and behavior on the platform. By analyzing data on users, photos, comments, likes, follows, and hashtags, the findings can guide marketing efforts, improve user experience, and detect anomalies such as fake accounts and bots.

## 📈 Key Insights

### 🔹 **Loyal Users**  
By identifying the oldest users, we found a group of long-time loyal users. These users, who have been active on the platform for an extended period, can be targeted with loyalty programs or special campaigns to enhance user retention and engagement.

### 🔹 **Inactive Users**  
We discovered users who have never posted a single photo. These inactive users could be re-engaged through personalized email campaigns or app notifications, encouraging them to post content and become more active on the platform.

### 🔹 **Contest Winner**  
The winner of the contest (based on the highest number of likes on a single photo) was identified as `zack_kemmer93`. This user could be promoted for influencer campaigns or spotlighted in marketing efforts, utilizing their popularity to drive further user interaction and visibility on Instagram.

### 🔹 **Top Hashtags**  
The most commonly used hashtags on the platform were identified as `#smile`, `#beach`, `#party`, `#fun`, and `#lol`. Brands and users looking to maximize visibility and engagement can incorporate these popular hashtags in their posts to reach a wider audience and increase interaction.

### 🔹 **Best Day for Ad Campaign**  
Based on the data, the days with the highest number of user registrations were Sunday and Thursday. These two days are ideal for launching ad campaigns, as they show higher user activity and are likely to yield better results for ads targeting new and active users.

### 🔹 **User Engagement**  
We calculated the average number of posts per user, which offered insights into overall user activity. Understanding engagement levels can help determine if users are becoming more or less active on the platform over time and can inform decisions about features or campaigns to boost engagement.

### 🔹 **Bots and Fake Accounts**  
Through the analysis, we identified users who liked every single photo on the platform. These users likely represent fake accounts or bots, which could skew engagement metrics. Detecting and removing these accounts ensures more reliable and accurate data for platform analytics.

## 📂 Database Structure

### **Tables**
- **Users**: Stores information about Instagram users, including their usernames and registration dates.
- **Photos**: Contains details about photos uploaded by users, such as the image URL and the associated user.
- **Comments**: Tracks comments made by users on photos, linking users to photos they commented on.
- **Likes**: Records which users liked which photos, helping gauge user engagement.
- **Follows**: Stores relationships between users, tracking who follows whom on Instagram.
- **Tags**: Contains popular hashtags used on the platform, allowing for easy analysis of trending topics.
- **Photo_Tags**: A junction table that links photos to hashtags, allowing us to analyze the most commonly used tags associated with photos.

## 🛠️ Data Processing & Cleaning
- **Missing Data**: We handled missing data by using imputation techniques to replace missing values with meaningful data, ensuring completeness and consistency.
- **Data Consistency**: Data types and formats were checked across tables to ensure uniformity and proper data structure.
- **Data Transformation**: Raw data was cleaned and transformed to make it more analyzable, ensuring it was structured in a way that could generate meaningful insights.

## 🚀 Final Conclusion & Business Recommendations

🔹 **Re-engagement of Inactive Users**  
Target inactive users who have never posted a photo. Use email campaigns or notifications to encourage them to start posting and engage more actively with the platform.

🔹 **Leverage Loyal Users for Marketing**  
The long-time, loyal users should be used in campaigns to increase engagement. They can be incentivized with loyalty rewards or exclusive content, further boosting their activity on Instagram.

🔹 **Utilize Contest Winner for Promotions**  
The contest winner, `zack_kemmer93`, can be used as an influencer to promote Instagram features or new campaigns. Their high engagement can be a key asset in driving user interaction.

🔹 **Hashtag Strategy for Brands**  
Encourage brands to use the most popular hashtags such as `#smile`, `#beach`, `#party`, `#fun`, and `#lol` in their posts. These hashtags are associated with higher engagement and can help brands reach a larger audience on Instagram.

🔹 **Optimize Ad Campaigns Based on Registration Days**  
Since Sunday and Thursday have the highest number of user registrations, the marketing team should prioritize launching ads on these days for maximum visibility and user acquisition.

🔹 **Boost Overall User Engagement**  
The platform's user engagement can be improved by offering incentives to users who are less active. Identifying trends in post frequency can help design features or campaigns that encourage users to share more content.

🔹 **Address Fake Accounts & Bots**  
Identifying and removing fake accounts or bots from the platform is essential for maintaining the integrity of user data. This ensures more reliable engagement metrics and helps the platform provide a better user experience.

