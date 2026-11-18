.class final Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/NetApi$1;
.super Ljava/lang/Object;
.source "NetApi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/NetApi;->getCorpus(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;

.field final synthetic val$clickCorpus:Ljava/util/Map;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$pageName:Ljava/lang/String;

.field final synthetic val$showCorpus:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/NetApi$1;->val$packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/NetApi$1;->val$pageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/NetApi$1;->val$showCorpus:Ljava/util/Map;

    iput-object p4, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/NetApi$1;->val$clickCorpus:Ljava/util/Map;

    iput-object p5, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/NetApi$1;->val$callback:Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 38
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/NetApi;->getDeviceInfo()Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/DeviceInfo;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/DeviceInfo;->getDeviceMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 43
    :cond_0
    new-instance v1, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;-><init>()V

    const-string v2, "mtop.alibaba.aicloud.t.getCorpus.getCorpus"

    .line 44
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setApiName(Ljava/lang/String;)V

    const-string v2, "1.0"

    .line 45
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setVersion(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 46
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setNeedEcode(Z)V

    .line 47
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setNeedSession(Z)V

    .line 48
    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 49
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getAuthInfo(Z)Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;

    move-result-object v3

    .line 50
    invoke-static {v3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "authInfo"

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    new-instance v3, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/request/CorpusRequestData;

    invoke-direct {v3}, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/request/CorpusRequestData;-><init>()V

    .line 52
    iget-object v5, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/NetApi$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/request/CorpusRequestData;->setPackageName(Ljava/lang/String;)V

    .line 53
    iget-object v5, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/NetApi$1;->val$pageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/request/CorpusRequestData;->setPageName(Ljava/lang/String;)V

    .line 54
    iget-object v5, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/NetApi$1;->val$showCorpus:Ljava/util/Map;

    invoke-virtual {v3, v5}, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/request/CorpusRequestData;->setCorpusLastView(Ljava/util/Map;)V

    .line 55
    iget-object v5, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/NetApi$1;->val$clickCorpus:Ljava/util/Map;

    invoke-virtual {v3, v5}, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/request/CorpusRequestData;->setCorpusLastClick(Ljava/util/Map;)V

    .line 56
    invoke-static {v3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "request"

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "deviceInfo"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setData(Ljava/lang/Object;)V

    .line 59
    new-instance v0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;-><init>(Lmtopsdk/mtop/domain/MtopRequest;)V

    .line 60
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/NetApi$1;->val$callback:Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->callback(Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    .line 61
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->getEnvType()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 62
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->getPreStaging()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->projectStaging(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    .line 64
    :cond_1
    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getCorpus"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->build()Lcom/alibaba/ailabs/genie/second/MtopClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/MtopClient;->send()Lmtopsdk/mtop/common/ApiID;

    return-void
.end method
