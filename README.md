# supervised

For understanding the differences between evaluation and instruction."For binary tasks,there are two rewards success and failure.
If you received success,then you might reasonable infer that whatever action you selected was correct,if you received failure,then 
you might infer that whatever action you did not select was correct.You could then keep a tally of how often each action was correct
and select the action that was correct most often."

There are two bags and 100 balls in each bag.The goal is finding the bag mostly have red ball.The users enter the number of red.
If number of red balls is less than half of the total that is probability of selection red balls between 0-0,5.The algorithm will 
oscillate between two bags and can not resolve the problem.However,if one of this have probability between 0,5-1,0 and the other one
0-0,5 the algorithm works fine and will find the correct bag.There is other situation that cannot find the correct bag if two bags
have probability between 0,5-1,0 then algorithm will stuck one of them mostly the first selection.
