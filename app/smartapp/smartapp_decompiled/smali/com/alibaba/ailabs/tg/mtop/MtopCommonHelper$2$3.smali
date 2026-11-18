.class Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$2$3;
.super Ljava/lang/Object;
.source "MtopCommonHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$2;->onError(ILmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Object;)V
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

    .line 208
    iput-object p1, p0, Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$2$3;->this$1:Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$2;

    iput-object p2, p0, Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$2$3;->val$mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$2$3;->val$mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$2$3;->this$1:Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$2;->val$l:Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$OnComResponseListener;

    iget-object v1, p0, Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$2$3;->val$mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->getRetMsg()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$OnComResponseListener;->onFailure(Ljava/lang/String;)V

    goto :goto_0

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$2$3;->this$1:Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$2;->val$l:Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$OnComResponseListener;

    const-string/jumbo v1, "unknown error"

    invoke-interface {v0, v1}, Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$OnComResponseListener;->onFailure(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
