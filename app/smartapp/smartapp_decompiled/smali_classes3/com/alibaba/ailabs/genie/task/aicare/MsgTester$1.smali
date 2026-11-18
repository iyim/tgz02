.class Lcom/alibaba/ailabs/genie/task/aicare/MsgTester$1;
.super Landroid/os/Handler;
.source "MsgTester.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/task/aicare/MsgTester;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/task/aicare/MsgTester;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/task/aicare/MsgTester;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/task/aicare/MsgTester$1;->this$0:Lcom/alibaba/ailabs/genie/task/aicare/MsgTester;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 50
    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/16 v1, 0x7530

    const/16 v3, 0x65

    if-ne v0, v3, :cond_0

    .line 51
    invoke-static {}, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->getInstance()Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;

    move-result-object p1

    const-string v0, "{\"expireTime\":-1,\"dataId\":\"172msghub_1596527559403zhz3s7\",\"data\":{\"subTitle\":\"\",\"extData\":\"{\\\"messageType\\\":\\\"longTimeSit\\\",\\\"messageGroup\\\":\\\"smartKeeper\\\"}\",\"imageURL\":\"\",\"businessId\":\"172\",\"actionURL\":\"\",\"screenButtons\":\"[{\\\"actionValue\\\":\\\"\\\",\\\"title\\\":\\\"\\\"},{\\\"actionValue\\\":\\\"\\\",\\\"title\\\":\\\"\\\"}]\",\"title\":\"\u6b63\u5728\u7761\u89c9\",\"content\":\"\u5c0f\u670b\u53cb\uff0c\u8d77\u6765\u6d3b\u52a8\u4e00\u4e0b\uff0c\u4f60\u5b66\u4e60\u7684\u592a\u4e45\u4e86\"},\"targetServiceId\":\"ai-message-hub\",\"deviceId\":\"D1204A31A7E149C7000164F88CB60672\",\"timestamp\":1596527559416}"

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->processMsg(Ljava/lang/String;)V

    .line 52
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/task/aicare/MsgTester$1;->this$0:Lcom/alibaba/ailabs/genie/task/aicare/MsgTester;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/task/aicare/MsgTester;->access$000(Lcom/alibaba/ailabs/genie/task/aicare/MsgTester;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 53
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x66

    if-ne v0, v3, :cond_1

    .line 54
    invoke-static {}, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->getInstance()Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;

    move-result-object p1

    const-string v0, "{\"expireTime\":-1,\"dataId\":\"172msghub_1596527559403zhz3s7\",\"data\":{\"subTitle\":\"\",\"extData\":\"{\\\"messageType\\\":\\\"postureWarning\\\",\\\"messageGroup\\\":\\\"smartKeeper\\\"}\",\"imageURL\":\"\",\"businessId\":\"172\",\"actionURL\":\"\",\"screenButtons\":\"[{\\\"actionValue\\\":\\\"\\\",\\\"title\\\":\\\"\\\"},{\\\"actionValue\\\":\\\"\\\",\\\"title\\\":\\\"\\\"}]\",\"title\":\"\u6b63\u5728\u7761\u89c9\",\"content\":\"\u5c0f\u670b\u53cb\uff0c\u6ce8\u610f\u4f60\u7684\u5750\u59ff\u54e6\"},\"targetServiceId\":\"ai-message-hub\",\"deviceId\":\"D1204A31A7E149C7000164F88CB60672\",\"timestamp\":1596527559416}"

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->processMsg(Ljava/lang/String;)V

    .line 55
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/task/aicare/MsgTester$1;->this$0:Lcom/alibaba/ailabs/genie/task/aicare/MsgTester;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/task/aicare/MsgTester;->access$000(Lcom/alibaba/ailabs/genie/task/aicare/MsgTester;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 56
    :cond_1
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x64

    if-ne p1, v0, :cond_2

    .line 57
    invoke-static {}, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->getInstance()Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;

    move-result-object p1

    const-string v1, "{\"expireTime\":-1,\"dataId\":\"172msghub_1596527559403zhz3s7\",\"data\":{\"subTitle\":\"\",\"extData\":\"{\\\"messageType\\\":\\\"sleeping\\\",\\\"messageGroup\\\":\\\"smartKeeper\\\"}\",\"imageURL\":\"\",\"businessId\":\"172\",\"actionURL\":\"\",\"screenButtons\":\"[{\\\"actionValue\\\":\\\"\\\",\\\"title\\\":\\\"\\\"},{\\\"actionValue\\\":\\\"\\\",\\\"title\\\":\\\"\\\"}]\",\"title\":\"\u6b63\u5728\u7761\u89c9\",\"content\":\"\u5c0f\u670b\u53cb\uff0c\u8d77\u6765\u6d3b\u52a8\u4e00\u4e0b\uff0c\u63d0\u63d0\u795e\uff0c\u518d\u6765\u5b66\u4e60\u5427\"},\"targetServiceId\":\"ai-message-hub\",\"deviceId\":\"D1204A31A7E149C7000164F88CB60672\",\"timestamp\":1596527559416}"

    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->processMsg(Ljava/lang/String;)V

    .line 58
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/task/aicare/MsgTester$1;->this$0:Lcom/alibaba/ailabs/genie/task/aicare/MsgTester;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/task/aicare/MsgTester;->access$000(Lcom/alibaba/ailabs/genie/task/aicare/MsgTester;)Landroid/os/Handler;

    move-result-object p1

    const-wide/32 v1, 0xea60

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    :goto_0
    return-void
.end method
