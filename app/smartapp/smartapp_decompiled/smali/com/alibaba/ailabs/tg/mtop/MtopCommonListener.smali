.class public Lcom/alibaba/ailabs/tg/mtop/MtopCommonListener;
.super Ljava/lang/Object;
.source "MtopCommonListener.java"

# interfaces
.implements Lcom/taobao/tao/remotebusiness/IRemoteBaseListener;


# static fields
.field private static final MTOP_ERROR_CODE_NULL_BASEOUTDO:Ljava/lang/String; = "BASE_OUTDO_NULL_ERROR"

.field private static final MTOP_ERROR_CODE_NULL_DATA:Ljava/lang/String; = "NO_DATA"

.field private static final MTOP_ERROR_MSG_NULL_BASEOUTDO:Ljava/lang/String; = "base outDo is null, maybe parse json ERROR"

.field private static final MTOP_ERROR_MSG_NULL_DATA:Ljava/lang/String; = "data is null"


# instance fields
.field private final listener:Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;

.field private final outClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final request:Lmtopsdk/mtop/domain/IMTOPDataObject;


# direct methods
.method public constructor <init>(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;)V
    .locals 0
    .param p1    # Lmtopsdk/mtop/domain/IMTOPDataObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmtopsdk/mtop/domain/IMTOPDataObject;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;",
            ")V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/alibaba/ailabs/tg/mtop/MtopCommonListener;->request:Lmtopsdk/mtop/domain/IMTOPDataObject;

    .line 32
    iput-object p2, p0, Lcom/alibaba/ailabs/tg/mtop/MtopCommonListener;->outClass:Ljava/lang/Class;

    .line 33
    iput-object p3, p0, Lcom/alibaba/ailabs/tg/mtop/MtopCommonListener;->listener:Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;

    return-void
.end method

.method private runOnUiThread(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;IZLmtopsdk/mtop/domain/BaseOutDo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmtopsdk/mtop/domain/IMTOPDataObject;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;",
            "IZ",
            "Lmtopsdk/mtop/domain/BaseOutDo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    if-nez p3, :cond_0

    const-string v0, "not set listener, do nothing and return !!!"

    .line 114
    invoke-static {v0}, Lcom/alibaba/ailabs/tg/utils/LogUtils;->w(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 119
    :cond_0
    new-instance v11, Lcom/alibaba/ailabs/tg/mtop/MtopCommonListener$1;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/ailabs/tg/mtop/MtopCommonListener$1;-><init>(Lcom/alibaba/ailabs/tg/mtop/MtopCommonListener;Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;IZLmtopsdk/mtop/domain/BaseOutDo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v11}, Lcom/alibaba/ailabs/tg/thread/MainTaskHandler;->post(Ljava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onError(ILmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Object;)V
    .locals 12

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 98
    invoke-virtual {p2}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/tg/utils/StringUtils;->checkNoNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-virtual {p2}, Lmtopsdk/mtop/domain/MtopResponse;->getRetMsg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/ailabs/tg/utils/StringUtils;->checkNoNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AsyncRequestApi["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lmtopsdk/mtop/domain/MtopResponse;->getApi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] errorCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {p2}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", errorMsg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {p2}, Lmtopsdk/mtop/domain/MtopResponse;->getRetMsg()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 100
    invoke-static {p2}, Lcom/alibaba/ailabs/tg/utils/LogUtils;->e(Ljava/lang/String;)V

    move-object v9, v0

    move-object v10, v1

    goto :goto_0

    :cond_0
    move-object v9, v0

    move-object v10, v9

    :goto_0
    const/4 v3, 0x0

    .line 104
    iget-object v4, p0, Lcom/alibaba/ailabs/tg/mtop/MtopCommonListener;->outClass:Ljava/lang/Class;

    iget-object v5, p0, Lcom/alibaba/ailabs/tg/mtop/MtopCommonListener;->listener:Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move v6, p1

    move-object v11, p3

    invoke-direct/range {v2 .. v11}, Lcom/alibaba/ailabs/tg/mtop/MtopCommonListener;->runOnUiThread(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;IZLmtopsdk/mtop/domain/BaseOutDo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(ILmtopsdk/mtop/domain/MtopResponse;Lmtopsdk/mtop/domain/BaseOutDo;Ljava/lang/Object;)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    .line 64
    invoke-virtual {p2}, Lmtopsdk/mtop/domain/MtopResponse;->isApiSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_1

    .line 68
    invoke-virtual {p3}, Lmtopsdk/mtop/domain/BaseOutDo;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/tg/mtop/data/BaseDataBean;

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0}, Lcom/alibaba/ailabs/tg/mtop/data/BaseDataBean;->isSuccess()Z

    move-result v1

    .line 71
    invoke-virtual {v0}, Lcom/alibaba/ailabs/tg/mtop/data/BaseDataBean;->getMsgCode()Ljava/lang/String;

    move-result-object v2

    .line 72
    invoke-virtual {v0}, Lcom/alibaba/ailabs/tg/mtop/data/BaseDataBean;->getMsgInfo()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v2, "NO_DATA"

    const-string v0, "data is null"

    :goto_0
    move-object v8, v0

    move v5, v1

    move-object v7, v2

    goto :goto_3

    :cond_1
    const-string v0, "BASE_OUTDO_NULL_ERROR"

    const-string v2, "base outDo is null, maybe parse json ERROR"

    goto :goto_1

    .line 82
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AsyncRequestApi["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lmtopsdk/mtop/domain/MtopResponse;->getApi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] errorCode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {p2}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", errorMsg: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {p2}, Lmtopsdk/mtop/domain/MtopResponse;->getRetMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-static {v0}, Lcom/alibaba/ailabs/tg/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-virtual {p2}, Lmtopsdk/mtop/domain/MtopResponse;->getRetMsg()Ljava/lang/String;

    move-result-object v2

    :goto_1
    move-object v7, v0

    move-object v8, v2

    goto :goto_2

    :cond_3
    move-object v7, v0

    move-object v8, v7

    :goto_2
    const/4 v5, 0x0

    .line 89
    :goto_3
    iget-object v1, p0, Lcom/alibaba/ailabs/tg/mtop/MtopCommonListener;->request:Lmtopsdk/mtop/domain/IMTOPDataObject;

    iget-object v2, p0, Lcom/alibaba/ailabs/tg/mtop/MtopCommonListener;->outClass:Ljava/lang/Class;

    iget-object v3, p0, Lcom/alibaba/ailabs/tg/mtop/MtopCommonListener;->listener:Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;

    move-object v0, p0

    move v4, p1

    move-object v6, p3

    move-object v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/alibaba/ailabs/tg/mtop/MtopCommonListener;->runOnUiThread(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;IZLmtopsdk/mtop/domain/BaseOutDo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onSystemError(ILmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Object;)V
    .locals 12

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 41
    invoke-virtual {p2}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/tg/utils/StringUtils;->checkNoNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-virtual {p2}, Lmtopsdk/mtop/domain/MtopResponse;->getRetMsg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/ailabs/tg/utils/StringUtils;->checkNoNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AsyncRequestApi["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lmtopsdk/mtop/domain/MtopResponse;->getApi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] errorCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {p2}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", errorMsg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {p2}, Lmtopsdk/mtop/domain/MtopResponse;->getRetMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 47
    invoke-virtual {p2}, Lmtopsdk/mtop/domain/MtopResponse;->isSessionInvalid()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p2}, Lmtopsdk/mtop/domain/MtopResponse;->isMtopServerError()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {p2}, Lmtopsdk/mtop/domain/MtopResponse;->isMtopSdkError()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v3, v4

    const-string p2, " isSessionInvalid: %b isMtopServerError: %b isMtopSdkError: %b"

    .line 46
    invoke-static {p2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 43
    invoke-static {p2}, Lcom/alibaba/ailabs/tg/utils/LogUtils;->e(Ljava/lang/String;)V

    move-object v9, v0

    move-object v10, v1

    goto :goto_0

    :cond_0
    move-object v9, v0

    move-object v10, v9

    :goto_0
    const/4 v3, 0x0

    .line 49
    iget-object v4, p0, Lcom/alibaba/ailabs/tg/mtop/MtopCommonListener;->outClass:Ljava/lang/Class;

    iget-object v5, p0, Lcom/alibaba/ailabs/tg/mtop/MtopCommonListener;->listener:Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move v6, p1

    move-object v11, p3

    invoke-direct/range {v2 .. v11}, Lcom/alibaba/ailabs/tg/mtop/MtopCommonListener;->runOnUiThread(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;IZLmtopsdk/mtop/domain/BaseOutDo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
