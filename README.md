***2022.1 Engine based on Katago TensorRT+GraphSearch***   

TODO:   
先做改动小的，再做改动大的   

完全没改的分支：Go2022   

|棋种|branch|状态|
|:-|:-|:-|
1.各种变种围棋（保留中国规则，删掉日韩规则）   	|CNrule2022   |
1.1 加权点目																		|weightGo|finished
1.2 某个子不能死 																| |不做了，因为需要大量死活题作为开局|
1.3.1 Hex棋盘的围棋																|HexGo |懒得做了  
1.3.2 Hex棋盘的吃子棋																|HexCaptureGo |finished  
1.4 落子没气先提自己														|firstCaptureMe|finished   
1.5 一子千金																		|yiziqianjin|finished   
   | |
2.需要提子但不需要点目的   											|CaptureGo2022   |finished
2.1 吃子棋   																		|CaptureGo2022   |finished
2.2 反吃子棋（不围棋）   												|CaptureGo2022   |**training**
2.3 活一块就算赢(死活对局)																|lifego2 |**training**   				   
2.4 黑棋活一块就赢，但是不能被吃子							|aliveWin   |finished
2.5 吃子n子棋    																| |以前做过所以不做了
2.6 白能吃黑，黑吃不掉白，黑棋最多多少手不被吃   | |todo
2.7 谁先没地方下谁输														|yiziqianjin |视为特殊的一子千金
 | |
3.不需要提子，黑白交替落子的棋  |Gom2022base |基础分支，不跑训练							   
3.0 Reversi(奥赛罗，翻转棋)，反Reversi| |以前做过，效果不好
3.1 五子棋系列(各种规则)   				| |todo
3.2 连五的个数     | |todo
3.3 反n子棋   			| |todo
3.4 Hex   					|Hex2022 |**training**
3.4.1 反Hex   					|  |todo
3.5 等差数列6子棋|EquDifGomoku|**training**
3.6 Angels and Devils game | |
3.7 每一步必须在上一步的附近某些位置，满足某些条件获胜 | |todo
 | |
4.一次走两步的棋，或者挪子的棋| |
4.0 国象，中象 | |别人做过，所以不做，且效果不好
4.1 六子棋(Connect6)| |todo
4.2 中国跳棋| |todo
4.3 Amazons(亚马逊棋)| |todo
4.4 Breakthrough| |todo
4.5 Ataxx(Botzone上的“同化棋”)| |todo
4.6 各种极简象棋变种| |todo



***Updated on 2021.4.5***
Now ***Gomoku/Renju*** code is uploading in "Gomoku" branch.




----------- 2020.7.26 ----------

Now there are gomoku(freestyle,standard,renju,caro), reversi, connect6, breakthrough, hex, "four in a row", Chinese checkers, and many board games few people play.

Now it's the strongest program on this games as I know: 
all kinds of gomoku(compared with Embryo)
connect6(compared with gzero)
hex(compared with gzero and)
Chinese checkers(compared with Shangxin Tiaoqi)

