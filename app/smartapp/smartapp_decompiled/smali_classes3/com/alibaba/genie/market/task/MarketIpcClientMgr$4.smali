.class Lcom/alibaba/genie/market/task/MarketIpcClientMgr$4;
.super Ljava/lang/Object;
.source "MarketIpcClientMgr.java"

# interfaces
.implements Lcom/alibaba/genie/market/task/CallBackInClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/market/task/MarketIpcClientMgr;->uninstallApk(Ljava/lang/String;Lcom/alibaba/genie/market/task/MarketApkDeleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/market/task/MarketIpcClientMgr;

.field final synthetic val$deleteListener:Lcom/alibaba/genie/market/task/MarketApkDeleteListener;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/market/task/MarketIpcClientMgr;Lcom/alibaba/genie/market/task/MarketApkDeleteListener;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/alibaba/genie/market/task/MarketIpcClientMgr$4;->this$0:Lcom/alibaba/genie/market/task/MarketIpcClientMgr;

    iput-object p2, p0, Lcom/alibaba/genie/market/task/MarketIpcClientMgr$4;->val$deleteListener:Lcom/alibaba/genie/market/task/MarketApkDeleteListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;)V
    .locals 5

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uninstallApk callbackStr == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MarketIpcClientMgr-l"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    const-string v0, "clazz"

    .line 120
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MarketApkDeleteListener"

    .line 121
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "method"

    .line 122
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, -0x1

    .line 124
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x4e9b47e0    # 1.3025894E9f

    const/4 v4, 0x1

    if-eq v2, v3, :cond_1

    const v3, 0x564700c0

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "onUninstallSuccess"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const-string v2, "onUninstallFailed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    const-string v0, "param2"

    const-string v2, "param1"

    if-eqz v1, :cond_4

    if-eq v1, v4, :cond_3

    goto :goto_1

    .line 130
    :cond_3
    iget-object v1, p0, Lcom/alibaba/genie/market/task/MarketIpcClientMgr$4;->val$deleteListener:Lcom/alibaba/genie/market/task/MarketApkDeleteListener;

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 131
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 130
    invoke-interface {v1, v2, p1}, Lcom/alibaba/genie/market/task/MarketApkDeleteListener;->onUninstallFailed(Ljava/lang/String;I)V

    goto :goto_1

    .line 126
    :cond_4
    iget-object v1, p0, Lcom/alibaba/genie/market/task/MarketIpcClientMgr$4;->val$deleteListener:Lcom/alibaba/genie/market/task/MarketApkDeleteListener;

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 127
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 126
    invoke-interface {v1, v2, p1}, Lcom/alibaba/genie/market/task/MarketApkDeleteListener;->onUninstallSuccess(Ljava/lang/String;I)V

    :cond_5
    :goto_1
    return-void
.end method
