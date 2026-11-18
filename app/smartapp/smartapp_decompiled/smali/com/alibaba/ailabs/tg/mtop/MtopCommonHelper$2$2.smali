.class Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$2$2;
.super Ljava/lang/Object;
.source "MtopCommonHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$2;->onSuccess(ILmtopsdk/mtop/domain/MtopResponse;Lmtopsdk/mtop/domain/BaseOutDo;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$2;

.field final synthetic val$mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$2;Lmtopsdk/mtop/domain/MtopResponse;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$2$2;->this$1:Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$2;

    iput-object p2, p0, Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$2$2;->val$mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 191
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$2$2;->val$mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    if-eqz v0, :cond_3

    .line 192
    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->isApiSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 193
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$2$2;->val$mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->getDataJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[mtop response] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    if-nez v0, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/ailabs/tg/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 195
    iget-object v1, p0, Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$2$2;->this$1:Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$2;

    iget-object v1, v1, Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$2;->val$l:Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$OnComResponseListener;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-interface {v1, v2}, Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$OnComResponseListener;->onSuccess(Ljava/lang/String;)V

    goto :goto_2

    .line 197
    :cond_2
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$2$2;->this$1:Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$2;->val$l:Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$OnComResponseListener;

    iget-object v1, p0, Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$2$2;->val$mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->getRetMsg()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$OnComResponseListener;->onFailure(Ljava/lang/String;)V

    goto :goto_2

    .line 200
    :cond_3
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$2$2;->this$1:Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$2;->val$l:Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$OnComResponseListener;

    const-string/jumbo v1, "unknown exception"

    invoke-interface {v0, v1}, Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$OnComResponseListener;->onFailure(Ljava/lang/String;)V

    :goto_2
    return-void
.end method
