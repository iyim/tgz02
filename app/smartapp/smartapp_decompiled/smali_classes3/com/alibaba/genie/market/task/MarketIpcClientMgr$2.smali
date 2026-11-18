.class Lcom/alibaba/genie/market/task/MarketIpcClientMgr$2;
.super Ljava/lang/Object;
.source "MarketIpcClientMgr.java"

# interfaces
.implements Lcom/alibaba/genie/market/task/CallBackInClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/market/task/MarketIpcClientMgr;->download(Ljava/lang/String;Lcom/alibaba/genie/market/task/MarketDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/market/task/MarketIpcClientMgr;

.field final synthetic val$downloadListener:Lcom/alibaba/genie/market/task/MarketDownloadListener;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/market/task/MarketIpcClientMgr;Lcom/alibaba/genie/market/task/MarketDownloadListener;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/alibaba/genie/market/task/MarketIpcClientMgr$2;->this$0:Lcom/alibaba/genie/market/task/MarketIpcClientMgr;

    iput-object p2, p0, Lcom/alibaba/genie/market/task/MarketIpcClientMgr$2;->val$downloadListener:Lcom/alibaba/genie/market/task/MarketDownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;)V
    .locals 6

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "download callbackStr == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MarketIpcClientMgr-l"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    const-string v0, "clazz"

    .line 55
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadListener"

    .line 56
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "method"

    .line 58
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, -0x1

    .line 60
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x42fe6352

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v3, :cond_1

    const v3, 0x505f9ad4

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "onDownloadProgress"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const-string v2, "onFinish"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    const-string v0, "param2"

    if-eqz v1, :cond_5

    if-eq v1, v5, :cond_3

    goto :goto_1

    :cond_3
    const-string v1, "param3"

    .line 65
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "param1"

    if-eqz v1, :cond_4

    .line 67
    iget-object v1, p0, Lcom/alibaba/genie/market/task/MarketIpcClientMgr$2;->val$downloadListener:Lcom/alibaba/genie/market/task/MarketDownloadListener;

    .line 68
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 69
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 67
    invoke-interface {v1, v5, v2, p1}, Lcom/alibaba/genie/market/task/MarketDownloadListener;->onDownloadSuccess(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 71
    :cond_4
    iget-object v1, p0, Lcom/alibaba/genie/market/task/MarketIpcClientMgr$2;->val$downloadListener:Lcom/alibaba/genie/market/task/MarketDownloadListener;

    .line 72
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "param4"

    .line 73
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 74
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-interface {v1, v4, v2, v3, p1}, Lcom/alibaba/genie/market/task/MarketDownloadListener;->onDownloadFailed(ZLjava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    .line 62
    :cond_5
    iget-object v1, p0, Lcom/alibaba/genie/market/task/MarketIpcClientMgr$2;->val$downloadListener:Lcom/alibaba/genie/market/task/MarketDownloadListener;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v1, p1}, Lcom/alibaba/genie/market/task/MarketDownloadListener;->onDownloadProgress(I)V

    :cond_6
    :goto_1
    return-void
.end method
