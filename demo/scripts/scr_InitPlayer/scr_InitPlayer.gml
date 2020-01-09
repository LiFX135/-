//全局变量来源
//在创建玩家时使用
jumpKey = global.JumpKey;
rightKey = global.moveRightKey;
leftKey = global.moveLeftKey;
flyKey = global.jet
colorChangeKey = global.ColorChangeKey
rushKey = global.rush

maxRunSpeed = 5;
maxFallSpeed = 10;
maxJetSpeed = 4;

xSpeed = 0;  //水平速度
ySpeed = 0;  //垂直速度

f = .3;
accel = .5; //加速度

jumptime = 2;//跳跃次数
rushtime = 20;//冲刺时间

weight = .6;
jetPower = 1;
jumpPower = 16;
rushPower = 15;//冲刺速度
rushcharge = 1;

myState = playerstate.onGround
myColor = playercolor.yellow
colorIndex = 0;
stateIndex = 0;
playerLevel = 2;

//结束和得分相关
hp = 40;
playerscore = 0;