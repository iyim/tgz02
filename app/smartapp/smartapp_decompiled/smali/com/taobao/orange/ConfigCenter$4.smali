.class Lcom/taobao/orange/ConfigCenter$4;
.super Lcom/taobao/orange/sync/BaseAuthRequest;
.source "ConfigCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/orange/ConfigCenter;->loadConfig(Lcom/taobao/orange/model/NameSpaceDO;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/orange/sync/BaseAuthRequest<",
        "Lcom/taobao/orange/model/ConfigDO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/orange/ConfigCenter;

.field final synthetic val$nameSpaceDO:Lcom/taobao/orange/model/NameSpaceDO;

.field final synthetic val$realConfigClz:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lcom/taobao/orange/ConfigCenter;Ljava/lang/String;ZLjava/lang/String;Lcom/taobao/orange/model/NameSpaceDO;Ljava/lang/Class;)V
    .locals 0

    .line 389
    iput-object p1, p0, Lcom/taobao/orange/ConfigCenter$4;->this$0:Lcom/taobao/orange/ConfigCenter;

    iput-object p5, p0, Lcom/taobao/orange/ConfigCenter$4;->val$nameSpaceDO:Lcom/taobao/orange/model/NameSpaceDO;

    iput-object p6, p0, Lcom/taobao/orange/ConfigCenter$4;->val$realConfigClz:Ljava/lang/Class;

    invoke-direct {p0, p2, p3, p4}, Lcom/taobao/orange/sync/BaseAuthRequest;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getReqParams()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 392
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 393
    iget-object v1, p0, Lcom/taobao/orange/ConfigCenter$4;->val$nameSpaceDO:Lcom/taobao/orange/model/NameSpaceDO;

    iget-object v1, v1, Lcom/taobao/orange/model/NameSpaceDO;->resourceId:Ljava/lang/String;

    const-string/jumbo v2, "resourceId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected getReqPostBody()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected parseResContent(Ljava/lang/String;)Lcom/taobao/orange/model/ConfigDO;
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/taobao/orange/ConfigCenter$4;->val$realConfigClz:Ljava/lang/Class;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/orange/model/ConfigDO;

    return-object p1
.end method

.method protected bridge synthetic parseResContent(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 389
    invoke-virtual {p0, p1}, Lcom/taobao/orange/ConfigCenter$4;->parseResContent(Ljava/lang/String;)Lcom/taobao/orange/model/ConfigDO;

    move-result-object p1

    return-object p1
.end method
