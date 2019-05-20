dataset = read.csv('Winners09.csv')
df=dataset[2:6]

df$PCType = factor(df$PCType, levels = c('ST', 'SC', 'GEN'), labels = c(1, 2, 3))
df$Sex = factor(df$Sex , levels = c('F','M') , labels = c(1,2))
df$Category = factor(df$Category, levels = c('ST', 'SC', 'GEN'), labels = c(1, 2, 3))


df$Age = cut(df$Age, seq(25, 100, 25))
df$Age = factor(df$Age, levels = c('(25,50]' , '(50,75]' , '(75,100]') , labels = c(2,3,1))
