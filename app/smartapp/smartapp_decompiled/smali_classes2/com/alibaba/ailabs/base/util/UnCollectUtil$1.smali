.class final Lcom/alibaba/ailabs/base/util/UnCollectUtil$1;
.super Ljava/lang/Object;
.source "UnCollectUtil.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/base/util/UnCollectUtil;->unCollectAppletAndUninstall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/ailabs/genie/second/MtopClient$Callback<",
        "Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$actionUrl:Ljava/lang/String;

.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$callback:Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$type:Ljava/lang/String;

.field final synthetic val$uninstalled:Z


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/alibaba/ailabs/base/util/UnCollectUtil$1;->val$callback:Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;

    iput-object p2, p0, Lcom/alibaba/ailabs/base/util/UnCollectUtil$1;->val$type:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/ailabs/base/util/UnCollectUtil$1;->val$packageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/ailabs/base/util/UnCollectUtil$1;->val$actionUrl:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/ailabs/base/util/UnCollectUtil$1;->val$appId:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/alibaba/ailabs/base/util/UnCollectUtil$1;->val$uninstalled:Z

    iput-object p7, p0, Lcom/alibaba/ailabs/base/util/UnCollectUtil$1;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/alibaba/ailabs/base/util/UnCollectUtil$1;->val$callback:Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;

    if-eqz v0, :cond_0

    .line 181
    invoke-interface {v0, p1, p2}, Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse<",
            "Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;",
            ">;)V"
        }
    .end annotation

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unCollectAppletAndUninstall unCollectApplet2 onSuccess apiResponse:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnCollectUtil"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_d

    .line 69
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 75
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;->getModel()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unCollectAppletAndUninstall unCollectApplet2  model:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "true"

    .line 78
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 79
    iget-object v0, p0, Lcom/alibaba/ailabs/base/util/UnCollectUtil$1;->val$callback:Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;

    if-eqz v0, :cond_1

    .line 80
    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;->onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V

    :cond_1
    return-void

    .line 85
    :cond_2
    iget-object v0, p0, Lcom/alibaba/ailabs/base/util/UnCollectUtil$1;->val$type:Ljava/lang/String;

    const-string v2, "apk"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unCollectAppletAndUninstall unCollectApplet2 no apk type\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/base/util/UnCollectUtil$1;->val$type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/alibaba/ailabs/base/util/UnCollectUtil$1;->val$callback:Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;

    if-eqz v0, :cond_3

    .line 88
    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;->onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V

    :cond_3
    return-void

    .line 93
    :cond_4
    iget-object v0, p0, Lcom/alibaba/ailabs/base/util/UnCollectUtil$1;->val$packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/utils/SystemUtil;->isApkAvailable(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "unCollectAppletAndUninstall unCollectApplet2 no isApkAvailable packageName\uff1a"

    if-nez v0, :cond_6

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/base/util/UnCollectUtil$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/alibaba/ailabs/base/util/UnCollectUtil$1;->val$callback:Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;

    if-eqz v0, :cond_5

    .line 96
    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;->onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V

    :cond_5
    return-void

    .line 101
    :cond_6
    iget-object v0, p0, Lcom/alibaba/ailabs/base/util/UnCollectUtil$1;->val$actionUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/ailabs/base/util/AppTypeUtil;->isCloudAppUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/base/util/UnCollectUtil$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/alibaba/ailabs/base/util/UnCollectUtil$1;->val$callback:Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;

    if-eqz v0, :cond_7

    .line 104
    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;->onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V

    :cond_7
    return-void

    .line 109
    :cond_8
    invoke-static {}, Lcom/alibaba/ailabs/appbox/db/CollectionDBUtil;->getAppList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v2, 0x0

    .line 111
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_c

    .line 112
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    .line 113
    invoke-virtual {v3}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 114
    invoke-virtual {v3}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getAppid()Ljava/lang/String;

    move-result-object v5

    .line 115
    iget-object v6, p0, Lcom/alibaba/ailabs/base/util/UnCollectUtil$1;->val$appId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    iget-object v5, p0, Lcom/alibaba/ailabs/base/util/UnCollectUtil$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_1

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 116
    :cond_a
    :goto_1
    invoke-virtual {v3}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getDeleteType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_c

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unCollectAppletAndUninstall unCollectApplet2 uninstalled\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/alibaba/ailabs/base/util/UnCollectUtil$1;->val$uninstalled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/alibaba/ailabs/base/util/UnCollectUtil$1;->val$callback:Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;

    if-eqz v0, :cond_b

    .line 120
    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;->onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V

    :cond_b
    return-void

    .line 128
    :cond_c
    invoke-static {}, Lcom/alibaba/ailabs/base/util/UnCollectUtil;->access$000()Ljava/lang/String;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/alibaba/ailabs/base/util/UnCollectUtil$1;->val$packageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/ailabs/base/util/UnCollectUtil;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alibaba/ailabs/base/util/UnCollectUtil$1$1;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/ailabs/base/util/UnCollectUtil$1$1;-><init>(Lcom/alibaba/ailabs/base/util/UnCollectUtil$1;Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V

    invoke-static {v1, v0, v2}, Lcom/alibaba/ailabs/appbox/mtop/MarketMtopUtil;->queryCollectedAppletWithPattern(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)V

    return-void

    .line 70
    :cond_d
    :goto_2
    iget-object v0, p0, Lcom/alibaba/ailabs/base/util/UnCollectUtil$1;->val$callback:Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;

    if-eqz v0, :cond_e

    .line 71
    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;->onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V

    :cond_e
    return-void
.end method
