.class Lcom/taobao/orange/util/ReportAckUtils$2$1;
.super Lcom/taobao/orange/sync/BaseAuthRequest;
.source "ReportAckUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/orange/util/ReportAckUtils$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/orange/util/ReportAckUtils$2;


# direct methods
.method constructor <init>(Lcom/taobao/orange/util/ReportAckUtils$2;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/taobao/orange/util/ReportAckUtils$2$1;->this$0:Lcom/taobao/orange/util/ReportAckUtils$2;

    invoke-direct {p0, p2, p3, p4}, Lcom/taobao/orange/sync/BaseAuthRequest;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getReqParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getReqPostBody()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/taobao/orange/util/ReportAckUtils$2$1;->this$0:Lcom/taobao/orange/util/ReportAckUtils$2;

    iget-object v0, v0, Lcom/taobao/orange/util/ReportAckUtils$2;->val$indexAck:Lcom/taobao/orange/model/IndexAckDO;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected parseResContent(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
