# https://mp.weixin.qq.com/s/H6ZKEZhxBprQk8qinIrPww
library(jiebaRD)
library(jiebaR)

en = "R is my favorite programming language."
cn = "R语言是我最喜爱的编程语言"

worker() -> wk
segment(en,wk)
segment(cn,wk)

show_dictpath()#词典在哪里
#可以在user.dict.utf8文件里添加词组
#不过要重新定义worker

#可以通过搜狗词库添加词库
#https://github.com/qinwf/cidian


cn = "我想写一本书，名字叫做《R语言高效数据处理》。"   #构造中文文本
tag_worker = worker(type = "tag")    #构造分词标注器
tag_result = tagging(cn,tag_worker)   #进行分词标注
tag_result    

str(tag_result)  #查看数据类型
#enframe(tag_result) -> tag_table  #转换数据存储格式

vector_tag(segment(cn,wk),tag_worker)

