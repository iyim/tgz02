.class Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$1;
.super Lcom/alibaba/ailabs/genie/second/gcs/service/GCSBaseCallback;
.source "MtopCommonHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper;->asyncRequestApi(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper;

.field final synthetic val$mtopCommonListener:Lcom/alibaba/ailabs/tg/mtop/MtopCommonListener;

.field final synthetic val$outClass:Ljava/lang/Class;

.field final synthetic val$reqContext:Ljava/lang/Object;

.field final synthetic val$userFlag:I


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper;Ljava/lang/Class;Lcom/alibaba/ailabs/tg/mtop/MtopCommonListener;ILjava/lang/Object;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$1;->this$0:Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper;

    iput-object p2, p0, Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$1;->val$outClass:Ljava/lang/Class;

    iput-object p3, p0, Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$1;->val$mtopCommonListener:Lcom/alibaba/ailabs/tg/mtop/MtopCommonListener;

    iput p4, p0, Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$1;->val$userFlag:I

    iput-object p5, p0, Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$1;->val$reqContext:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSBaseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 4

    .line 144
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$1;->val$mtopCommonListener:Lcom/alibaba/ailabs/tg/mtop/MtopCommonListener;

    iget v1, p0, Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$1;->val$userFlag:I

    iget-object v2, p0, Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$1;->val$reqContext:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/alibaba/ailabs/tg/mtop/MtopCommonListener;->onError(ILmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Object;)V

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFailed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MtopCommonHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSucceed(Landroid/os/Bundle;)V
    .locals 4

    .line 118
    invoke-static {p1}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->getString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    .line 123
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 125
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    const-string v0, "mtopStat"

    .line 126
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p1

    const-class v0, Lmtopsdk/mtop/domain/MtopResponse;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmtopsdk/mtop/domain/MtopResponse;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 129
    :try_start_1
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getBytedata()[B

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$1;->val$outClass:Ljava/lang/Class;

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {v0, v2, v3}, Lcom/alibaba/fastjson/JSON;->parseObject([BLjava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmtopsdk/mtop/domain/BaseOutDo;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object p1, v1

    .line 131
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    :goto_1
    move-object v1, p1

    if-eqz v1, :cond_0

    .line 133
    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->isApiSuccess()Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 134
    iget-object p1, p0, Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$1;->val$mtopCommonListener:Lcom/alibaba/ailabs/tg/mtop/MtopCommonListener;

    iget v2, p0, Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$1;->val$userFlag:I

    iget-object v3, p0, Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$1;->val$reqContext:Ljava/lang/Object;

    invoke-virtual {p1, v2, v1, v0, v3}, Lcom/alibaba/ailabs/tg/mtop/MtopCommonListener;->onSuccess(ILmtopsdk/mtop/domain/MtopResponse;Lmtopsdk/mtop/domain/BaseOutDo;Ljava/lang/Object;)V

    return-void

    .line 139
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$1;->val$mtopCommonListener:Lcom/alibaba/ailabs/tg/mtop/MtopCommonListener;

    iget v0, p0, Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$1;->val$userFlag:I

    iget-object v2, p0, Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$1;->val$reqContext:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1, v2}, Lcom/alibaba/ailabs/tg/mtop/MtopCommonListener;->onError(ILmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Object;)V

    return-void
.end method
