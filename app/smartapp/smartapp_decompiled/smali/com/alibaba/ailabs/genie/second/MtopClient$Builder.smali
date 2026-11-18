.class public final Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;
.super Ljava/lang/Object;
.source "MtopClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/second/MtopClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/second/MtopClient$Builder$MtopFinishListenerWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final CONN_TIMEOUT_DEFAULT:I = 0x7530

.field private static final DEFAULT_IDE_PROJECT_STAGING_8:Ljava/lang/String; = "default-ide-project-staging8"

.field private static final RETRY_TIME_DEFAULT:I = 0x3

.field private static final SOCKET_TIMEOUT_DEFAULT:I = 0x7530


# instance fields
.field private calcDataHash:Z

.field private calcDataMd5:Z

.field callback:Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/ailabs/genie/second/MtopClient$Callback<",
            "TT;>;"
        }
    .end annotation
.end field

.field private checkResult:Z

.field private connTimeoutMilliSecond:I

.field private mMtopFinishListenerWrapper:Lcom/alibaba/ailabs/genie/second/MtopClient$Builder$MtopFinishListenerWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/ailabs/genie/second/MtopClient$Builder<",
            "TT;>.MtopFinish",
            "ListenerWrapper;"
        }
    .end annotation
.end field

.field private methodEnum:Lmtopsdk/mtop/domain/MethodEnum;

.field private modeEnum:Lmtopsdk/mtop/domain/EnvModeEnum;

.field private noCache:Z

.field private pickTraceId:Z

.field private projectStaging:Ljava/lang/String;

.field private protocolEnum:Lmtopsdk/mtop/domain/ProtocolEnum;

.field rawCallback:Lcom/alibaba/ailabs/genie/second/MtopClient$RawCallback;

.field request:Lmtopsdk/mtop/domain/MtopRequest;

.field private retryTime:I

.field private socketTimeoutMilliSecond:I

.field private ttid:Ljava/lang/String;

.field private uiThread:Z

.field private useWua:Z


# direct methods
.method public constructor <init>(Lmtopsdk/mtop/domain/MtopRequest;)V
    .locals 2
    .param p1    # Lmtopsdk/mtop/domain/MtopRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 222
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->noCache:Z

    const/4 v1, 0x0

    .line 223
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->useWua:Z

    .line 228
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->checkResult:Z

    .line 229
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->calcDataHash:Z

    .line 230
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->calcDataMd5:Z

    .line 231
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->pickTraceId:Z

    .line 237
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->uiThread:Z

    .line 250
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->request:Lmtopsdk/mtop/domain/MtopRequest;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;)Lmtopsdk/mtop/domain/MethodEnum;
    .locals 0

    .line 210
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->methodEnum:Lmtopsdk/mtop/domain/MethodEnum;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder$MtopFinishListenerWrapper;
    .locals 0

    .line 210
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->mMtopFinishListenerWrapper:Lcom/alibaba/ailabs/genie/second/MtopClient$Builder$MtopFinishListenerWrapper;

    return-object p0
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;)Z
    .locals 0

    .line 210
    iget-boolean p0, p0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->uiThread:Z

    return p0
.end method

.method static synthetic access$600(Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;)Z
    .locals 0

    .line 210
    iget-boolean p0, p0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->calcDataHash:Z

    return p0
.end method

.method static synthetic access$700(Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;)Z
    .locals 0

    .line 210
    iget-boolean p0, p0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->calcDataMd5:Z

    return p0
.end method

.method static synthetic access$800(Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;)Z
    .locals 0

    .line 210
    iget-boolean p0, p0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->pickTraceId:Z

    return p0
.end method

.method static synthetic access$900(Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;)Z
    .locals 0

    .line 210
    iget-boolean p0, p0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->checkResult:Z

    return p0
.end method

.method private defaultBuild()V
    .locals 2

    .line 363
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->callback:Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;

    if-eqz v0, :cond_0

    .line 364
    new-instance v1, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder$MtopFinishListenerWrapper;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder$MtopFinishListenerWrapper;-><init>(Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)V

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->mMtopFinishListenerWrapper:Lcom/alibaba/ailabs/genie/second/MtopClient$Builder$MtopFinishListenerWrapper;

    :cond_0
    return-void
.end method


# virtual methods
.method public asyncCallback(Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/second/MtopClient$Callback<",
            "TT;>;)",
            "Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;"
        }
    .end annotation

    .line 281
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->callback:Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;

    const/4 p1, 0x0

    .line 282
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->uiThread:Z

    return-object p0
.end method

.method public asyncRawCallback(Lcom/alibaba/ailabs/genie/second/MtopClient$RawCallback;)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->rawCallback:Lcom/alibaba/ailabs/genie/second/MtopClient$RawCallback;

    const/4 p1, 0x0

    .line 270
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->uiThread:Z

    return-object p0
.end method

.method public build()Lcom/alibaba/ailabs/genie/second/MtopClient;
    .locals 2

    .line 357
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->defaultBuild()V

    .line 359
    new-instance v0, Lcom/alibaba/ailabs/genie/second/MtopClient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/ailabs/genie/second/MtopClient;-><init>(Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;Lcom/alibaba/ailabs/genie/second/MtopClient$1;)V

    return-object v0
.end method

.method public cacheControlNoCache(Z)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;
    .locals 0

    .line 302
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->noCache:Z

    return-object p0
.end method

.method public calcDataHash(Z)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;
    .locals 0

    .line 317
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->calcDataHash:Z

    return-object p0
.end method

.method public calcDataMd5(Z)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;
    .locals 0

    .line 322
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->calcDataMd5:Z

    return-object p0
.end method

.method public callback(Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/second/MtopClient$Callback<",
            "TT;>;)",
            "Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;"
        }
    .end annotation

    .line 275
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->callback:Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;

    const/4 p1, 0x1

    .line 276
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->uiThread:Z

    return-object p0
.end method

.method public checkResult(Z)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;
    .locals 0

    .line 332
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->checkResult:Z

    return-object p0
.end method

.method public connectionTimeout(I)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;
    .locals 0

    .line 337
    iput p1, p0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->connTimeoutMilliSecond:I

    return-object p0
.end method

.method public envModeEnum(Lmtopsdk/mtop/domain/EnvModeEnum;)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->modeEnum:Lmtopsdk/mtop/domain/EnvModeEnum;

    return-object p0
.end method

.method public getMtopFinishListenerWrapper()Lcom/alibaba/ailabs/genie/second/MtopClient$Builder$MtopFinishListenerWrapper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/alibaba/ailabs/genie/second/MtopClient$Builder<",
            "TT;>.MtopFinish",
            "ListenerWrapper;"
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->mMtopFinishListenerWrapper:Lcom/alibaba/ailabs/genie/second/MtopClient$Builder$MtopFinishListenerWrapper;

    return-object v0
.end method

.method public mtop(Lmtopsdk/mtop/intf/Mtop;)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;
    .locals 0
    .param p1    # Lmtopsdk/mtop/intf/Mtop;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-object p0
.end method

.method public pickTraceId(Z)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;
    .locals 0

    .line 327
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->pickTraceId:Z

    return-object p0
.end method

.method public projectStaging(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;
    .locals 0

    .line 347
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->projectStaging:Ljava/lang/String;

    return-object p0
.end method

.method public protocol(Lmtopsdk/mtop/domain/ProtocolEnum;)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->protocolEnum:Lmtopsdk/mtop/domain/ProtocolEnum;

    return-object p0
.end method

.method public rawCallback(Lcom/alibaba/ailabs/genie/second/MtopClient$RawCallback;)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->rawCallback:Lcom/alibaba/ailabs/genie/second/MtopClient$RawCallback;

    const/4 p1, 0x1

    .line 264
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->uiThread:Z

    return-object p0
.end method

.method public reqMethod(Lmtopsdk/mtop/domain/MethodEnum;)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->methodEnum:Lmtopsdk/mtop/domain/MethodEnum;

    return-object p0
.end method

.method public retryTime(I)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;
    .locals 0

    .line 312
    iput p1, p0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->retryTime:I

    return-object p0
.end method

.method public setMtopFinishListenerWrapper(Lcom/alibaba/ailabs/genie/second/MtopClient$Builder$MtopFinishListenerWrapper;)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/second/MtopClient$Builder<",
            "TT;>.MtopFinish",
            "ListenerWrapper;",
            ")",
            "Lcom/alibaba/ailabs/genie/second/MtopClient$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 245
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->mMtopFinishListenerWrapper:Lcom/alibaba/ailabs/genie/second/MtopClient$Builder$MtopFinishListenerWrapper;

    return-object p0
.end method

.method public socketTimeout(I)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;
    .locals 0

    .line 342
    iput p1, p0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->socketTimeoutMilliSecond:I

    return-object p0
.end method

.method public ttid(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;
    .locals 0

    .line 292
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->ttid:Ljava/lang/String;

    return-object p0
.end method

.method public useDefaultProjectStaging()Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;
    .locals 1

    const-string v0, "default-ide-project-staging8"

    .line 352
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->projectStaging:Ljava/lang/String;

    return-object p0
.end method

.method public useWua(Z)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;
    .locals 0

    .line 307
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->useWua:Z

    return-object p0
.end method
