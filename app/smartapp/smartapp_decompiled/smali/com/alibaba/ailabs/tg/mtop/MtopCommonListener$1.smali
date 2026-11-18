.class Lcom/alibaba/ailabs/tg/mtop/MtopCommonListener$1;
.super Ljava/lang/Object;
.source "MtopCommonListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/tg/mtop/MtopCommonListener;->runOnUiThread(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;IZLmtopsdk/mtop/domain/BaseOutDo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/tg/mtop/MtopCommonListener;

.field final synthetic val$baseOutDo:Lmtopsdk/mtop/domain/BaseOutDo;

.field final synthetic val$errorCode:Ljava/lang/String;

.field final synthetic val$errorMsg:Ljava/lang/String;

.field final synthetic val$isSuccess:Z

.field final synthetic val$listener:Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;

.field final synthetic val$outClass:Ljava/lang/Class;

.field final synthetic val$reqContext:Ljava/lang/Object;

.field final synthetic val$request:Lmtopsdk/mtop/domain/IMTOPDataObject;

.field final synthetic val$userFlag:I


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/tg/mtop/MtopCommonListener;Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;IZLmtopsdk/mtop/domain/BaseOutDo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/alibaba/ailabs/tg/mtop/MtopCommonListener$1;->this$0:Lcom/alibaba/ailabs/tg/mtop/MtopCommonListener;

    iput-object p2, p0, Lcom/alibaba/ailabs/tg/mtop/MtopCommonListener$1;->val$request:Lmtopsdk/mtop/domain/IMTOPDataObject;

    iput-object p3, p0, Lcom/alibaba/ailabs/tg/mtop/MtopCommonListener$1;->val$outClass:Ljava/lang/Class;

    iput-object p4, p0, Lcom/alibaba/ailabs/tg/mtop/MtopCommonListener$1;->val$listener:Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;

    iput p5, p0, Lcom/alibaba/ailabs/tg/mtop/MtopCommonListener$1;->val$userFlag:I

    iput-boolean p6, p0, Lcom/alibaba/ailabs/tg/mtop/MtopCommonListener$1;->val$isSuccess:Z

    iput-object p7, p0, Lcom/alibaba/ailabs/tg/mtop/MtopCommonListener$1;->val$baseOutDo:Lmtopsdk/mtop/domain/BaseOutDo;

    iput-object p8, p0, Lcom/alibaba/ailabs/tg/mtop/MtopCommonListener$1;->val$errorCode:Ljava/lang/String;

    iput-object p9, p0, Lcom/alibaba/ailabs/tg/mtop/MtopCommonListener$1;->val$errorMsg:Ljava/lang/String;

    iput-object p10, p0, Lcom/alibaba/ailabs/tg/mtop/MtopCommonListener$1;->val$reqContext:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 122
    invoke-static {}, Lcom/alibaba/ailabs/tg/mtop/MtopProcessorManager;->getInstance()Lcom/alibaba/ailabs/tg/mtop/MtopProcessorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/tg/mtop/MtopCommonListener$1;->val$request:Lmtopsdk/mtop/domain/IMTOPDataObject;

    iget-object v2, p0, Lcom/alibaba/ailabs/tg/mtop/MtopCommonListener$1;->val$outClass:Ljava/lang/Class;

    iget-object v3, p0, Lcom/alibaba/ailabs/tg/mtop/MtopCommonListener$1;->val$listener:Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;

    iget v4, p0, Lcom/alibaba/ailabs/tg/mtop/MtopCommonListener$1;->val$userFlag:I

    iget-boolean v5, p0, Lcom/alibaba/ailabs/tg/mtop/MtopCommonListener$1;->val$isSuccess:Z

    iget-object v6, p0, Lcom/alibaba/ailabs/tg/mtop/MtopCommonListener$1;->val$baseOutDo:Lmtopsdk/mtop/domain/BaseOutDo;

    iget-object v7, p0, Lcom/alibaba/ailabs/tg/mtop/MtopCommonListener$1;->val$errorCode:Ljava/lang/String;

    iget-object v8, p0, Lcom/alibaba/ailabs/tg/mtop/MtopCommonListener$1;->val$errorMsg:Ljava/lang/String;

    .line 123
    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/ailabs/tg/mtop/MtopProcessorManager;->handleAfterRequestProcessors(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;IZLmtopsdk/mtop/domain/BaseOutDo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 127
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/ailabs/tg/mtop/MtopCommonListener$1;->val$isSuccess:Z

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/mtop/MtopCommonListener$1;->val$listener:Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;

    iget-object v1, p0, Lcom/alibaba/ailabs/tg/mtop/MtopCommonListener$1;->val$baseOutDo:Lmtopsdk/mtop/domain/BaseOutDo;

    iget v2, p0, Lcom/alibaba/ailabs/tg/mtop/MtopCommonListener$1;->val$userFlag:I

    iget-object v3, p0, Lcom/alibaba/ailabs/tg/mtop/MtopCommonListener$1;->val$reqContext:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;->onResponseSuccess(Lmtopsdk/mtop/domain/BaseOutDo;ILjava/lang/Object;)V

    goto :goto_0

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/mtop/MtopCommonListener$1;->val$listener:Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;

    iget v1, p0, Lcom/alibaba/ailabs/tg/mtop/MtopCommonListener$1;->val$userFlag:I

    iget-object v2, p0, Lcom/alibaba/ailabs/tg/mtop/MtopCommonListener$1;->val$errorCode:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/ailabs/tg/mtop/MtopCommonListener$1;->val$errorMsg:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/ailabs/tg/mtop/MtopCommonListener$1;->val$reqContext:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;->onResponseFailed(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
