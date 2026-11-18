.class public Lcom/alibaba/ailabs/genie/task/aicare/MsgTester;
.super Ljava/lang/Object;
.source "MsgTester.java"


# static fields
.field static final MSG_LONG:I = 0x65

.field static final MSG_SEAT:I = 0x66

.field static final MSG_SLEEP:I = 0x64

.field private static final longSit:Ljava/lang/String; = "{\"expireTime\":-1,\"dataId\":\"172msghub_1596527559403zhz3s7\",\"data\":{\"subTitle\":\"\",\"extData\":\"{\\\"messageType\\\":\\\"longTimeSit\\\",\\\"messageGroup\\\":\\\"smartKeeper\\\"}\",\"imageURL\":\"\",\"businessId\":\"172\",\"actionURL\":\"\",\"screenButtons\":\"[{\\\"actionValue\\\":\\\"\\\",\\\"title\\\":\\\"\\\"},{\\\"actionValue\\\":\\\"\\\",\\\"title\\\":\\\"\\\"}]\",\"title\":\"\u6b63\u5728\u7761\u89c9\",\"content\":\"\u5c0f\u670b\u53cb\uff0c\u8d77\u6765\u6d3b\u52a8\u4e00\u4e0b\uff0c\u4f60\u5b66\u4e60\u7684\u592a\u4e45\u4e86\"},\"targetServiceId\":\"ai-message-hub\",\"deviceId\":\"D1204A31A7E149C7000164F88CB60672\",\"timestamp\":1596527559416}"

.field private static final seat:Ljava/lang/String; = "{\"expireTime\":-1,\"dataId\":\"172msghub_1596527559403zhz3s7\",\"data\":{\"subTitle\":\"\",\"extData\":\"{\\\"messageType\\\":\\\"postureWarning\\\",\\\"messageGroup\\\":\\\"smartKeeper\\\"}\",\"imageURL\":\"\",\"businessId\":\"172\",\"actionURL\":\"\",\"screenButtons\":\"[{\\\"actionValue\\\":\\\"\\\",\\\"title\\\":\\\"\\\"},{\\\"actionValue\\\":\\\"\\\",\\\"title\\\":\\\"\\\"}]\",\"title\":\"\u6b63\u5728\u7761\u89c9\",\"content\":\"\u5c0f\u670b\u53cb\uff0c\u6ce8\u610f\u4f60\u7684\u5750\u59ff\u54e6\"},\"targetServiceId\":\"ai-message-hub\",\"deviceId\":\"D1204A31A7E149C7000164F88CB60672\",\"timestamp\":1596527559416}"

.field private static final sleep:Ljava/lang/String; = "{\"expireTime\":-1,\"dataId\":\"172msghub_1596527559403zhz3s7\",\"data\":{\"subTitle\":\"\",\"extData\":\"{\\\"messageType\\\":\\\"sleeping\\\",\\\"messageGroup\\\":\\\"smartKeeper\\\"}\",\"imageURL\":\"\",\"businessId\":\"172\",\"actionURL\":\"\",\"screenButtons\":\"[{\\\"actionValue\\\":\\\"\\\",\\\"title\\\":\\\"\\\"},{\\\"actionValue\\\":\\\"\\\",\\\"title\\\":\\\"\\\"}]\",\"title\":\"\u6b63\u5728\u7761\u89c9\",\"content\":\"\u5c0f\u670b\u53cb\uff0c\u8d77\u6765\u6d3b\u52a8\u4e00\u4e0b\uff0c\u63d0\u63d0\u795e\uff0c\u518d\u6765\u5b66\u4e60\u5427\"},\"targetServiceId\":\"ai-message-hub\",\"deviceId\":\"D1204A31A7E149C7000164F88CB60672\",\"timestamp\":1596527559416}"


# instance fields
.field private handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/alibaba/ailabs/genie/task/aicare/MsgTester$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/task/aicare/MsgTester$1;-><init>(Lcom/alibaba/ailabs/genie/task/aicare/MsgTester;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/MsgTester;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/task/aicare/MsgTester;)Landroid/os/Handler;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/task/aicare/MsgTester;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method private testLong()V
    .locals 4

    .line 69
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/MsgTester;->handler:Landroid/os/Handler;

    const/16 v1, 0x65

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private testSeat()V
    .locals 4

    .line 65
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/MsgTester;->handler:Landroid/os/Handler;

    const/16 v1, 0x66

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private testSleep()V
    .locals 4

    .line 73
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/MsgTester;->handler:Landroid/os/Handler;

    const/16 v1, 0x64

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/MsgTester;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 96
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public testAll()V
    .locals 4

    .line 77
    invoke-static {}, Lcom/alibaba/ailabs/genie/task/utils/ToolsUtils;->getTestType()Ljava/lang/String;

    move-result-object v0

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "testAll type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TaskService-"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "1"

    .line 79
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/aicare/MsgTester;->testSleep()V

    goto :goto_0

    :cond_0
    const-string v1, "2"

    .line 81
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/aicare/MsgTester;->testSeat()V

    goto :goto_0

    :cond_1
    const-string v1, "3"

    .line 83
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/aicare/MsgTester;->testLong()V

    goto :goto_0

    .line 86
    :cond_2
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/MsgTester;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    const/16 v1, 0x64

    const-wide/16 v2, 0x2710

    .line 87
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 88
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/MsgTester;->handler:Landroid/os/Handler;

    const/16 v1, 0x65

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 89
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/MsgTester;->handler:Landroid/os/Handler;

    const/16 v1, 0x66

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    :goto_0
    return-void
.end method
