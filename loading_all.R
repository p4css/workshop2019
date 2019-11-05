users_1 <- read_csv("data/china_082019_1_users_csv_hashed.csv")
tweets_1 <- read_csv("data/china_082019_1_tweets_csv_hashed.csv")

users_2 <- read_csv("data/china_082019_2_users_csv_hashed.csv")
tweets_2 <- read_csv("data/china_082019_2_tweets_csv_hashed.csv")

tweets_1 <- tweets_1 %>% 
    mutate(dataset = "set1") %>%
    mutate(tweetid = as.character(tweetid)) %>%
    mutate(userid = as.character(userid)) %>%
    mutate(in_reply_to_userid  = as.character(in_reply_to_userid)) %>%
    mutate(in_reply_to_tweetid = as.character(in_reply_to_tweetid))



# Converting datatype of set 2
tweets_2 <- tweets_2 %>% 
    mutate(dataset = "set2") %>%
    mutate(tweetid = as.character(tweetid)) %>%
    mutate(userid = as.character(userid)) %>%
    mutate(retweet_userid = as.character(retweet_userid)) %>%
    mutate(retweet_tweetid = as.character(retweet_tweetid))

# Binding (combining) tweets of set1 and set2
all_tweets <- bind_rows(tweets_1, tweets_2)