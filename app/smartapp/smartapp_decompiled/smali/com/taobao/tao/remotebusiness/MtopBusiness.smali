.class public Lcom/taobao/tao/remotebusiness/MtopBusiness;
.super Lmtopsdk/mtop/intf/MtopBuilder;
.source "MtopBusiness.java"


# static fields
.field public static final MAX_RETRY_TIMES:I = 0x3

.field private static final TAG:Ljava/lang/String; = "mtopsdk.MtopBusiness"

.field private static seqGen:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private apiID:Lmtopsdk/mtop/common/ApiID;

.field public authParam:Ljava/lang/String;

.field public clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public isCached:Z

.field private isCancelled:Z

.field private isErrorNotifyAfterCache:Z

.field public listener:Lmtopsdk/mtop/common/MtopListener;

.field private mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

.field private needAuth:Z

.field public onBgFinishTime:J

.field public reqStartTime:J

.field public requestContext:Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected requestType:I

.field protected retryTime:I

.field public sendStartTime:J

.field private final seqNo:Ljava/lang/String;

.field public showAuthUI:Z

.field private showLoginUI:Z

.field private syncRequestFlag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 70
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->seqGen:Ljava/util/concurrent/atomic/AtomicInteger;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected constructor <init>(Lmtopsdk/mtop/intf/Mtop;Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lmtopsdk/mtop/intf/Mtop;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 81
    invoke-direct {p0, p1, p2, p3}, Lmtopsdk/mtop/intf/MtopBuilder;-><init>(Lmtopsdk/mtop/intf/Mtop;Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 39
    iput-boolean p1, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->isCancelled:Z

    .line 44
    iput p1, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->retryTime:I

    .line 45
    iput p1, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->requestType:I

    const/4 p2, 0x0

    .line 50
    iput-object p2, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->requestContext:Ljava/lang/Object;

    const/4 p3, 0x1

    .line 53
    iput-boolean p3, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->showLoginUI:Z

    .line 54
    iput-boolean p1, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->isErrorNotifyAfterCache:Z

    .line 57
    iput-object p2, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->authParam:Ljava/lang/String;

    .line 58
    iput-boolean p3, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->showAuthUI:Z

    .line 59
    iput-boolean p1, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->needAuth:Z

    .line 61
    iput-boolean p1, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->isCached:Z

    const-wide/16 v0, 0x0

    .line 62
    iput-wide v0, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->reqStartTime:J

    .line 63
    iput-wide v0, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->onBgFinishTime:J

    .line 64
    iput-wide v0, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->sendStartTime:J

    .line 66
    iput-object p2, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    .line 67
    iput-boolean p1, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->syncRequestFlag:Z

    .line 82
    invoke-direct {p0}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->genSeqNo()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->seqNo:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lmtopsdk/mtop/intf/Mtop;Lmtopsdk/mtop/domain/MtopRequest;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lmtopsdk/mtop/intf/Mtop;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 93
    invoke-direct {p0, p1, p2, p3}, Lmtopsdk/mtop/intf/MtopBuilder;-><init>(Lmtopsdk/mtop/intf/Mtop;Lmtopsdk/mtop/domain/MtopRequest;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 39
    iput-boolean p1, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->isCancelled:Z

    .line 44
    iput p1, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->retryTime:I

    .line 45
    iput p1, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->requestType:I

    const/4 p2, 0x0

    .line 50
    iput-object p2, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->requestContext:Ljava/lang/Object;

    const/4 p3, 0x1

    .line 53
    iput-boolean p3, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->showLoginUI:Z

    .line 54
    iput-boolean p1, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->isErrorNotifyAfterCache:Z

    .line 57
    iput-object p2, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->authParam:Ljava/lang/String;

    .line 58
    iput-boolean p3, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->showAuthUI:Z

    .line 59
    iput-boolean p1, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->needAuth:Z

    .line 61
    iput-boolean p1, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->isCached:Z

    const-wide/16 v0, 0x0

    .line 62
    iput-wide v0, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->reqStartTime:J

    .line 63
    iput-wide v0, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->onBgFinishTime:J

    .line 64
    iput-wide v0, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->sendStartTime:J

    .line 66
    iput-object p2, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    .line 67
    iput-boolean p1, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->syncRequestFlag:Z

    .line 94
    invoke-direct {p0}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->genSeqNo()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->seqNo:Ljava/lang/String;

    return-void
.end method

.method public static build(Lmtopsdk/mtop/domain/IMTOPDataObject;)Lcom/taobao/tao/remotebusiness/MtopBusiness;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 144
    invoke-static {v0}, Lmtopsdk/mtop/intf/Mtop;->instance(Landroid/content/Context;)Lmtopsdk/mtop/intf/Mtop;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->build(Lmtopsdk/mtop/intf/Mtop;Lmtopsdk/mtop/domain/IMTOPDataObject;)Lcom/taobao/tao/remotebusiness/MtopBusiness;

    move-result-object p0

    return-object p0
.end method

.method public static build(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/String;)Lcom/taobao/tao/remotebusiness/MtopBusiness;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 135
    invoke-static {v0, p1}, Lmtopsdk/mtop/intf/Mtop;->instance(Landroid/content/Context;Ljava/lang/String;)Lmtopsdk/mtop/intf/Mtop;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->build(Lmtopsdk/mtop/intf/Mtop;Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/String;)Lcom/taobao/tao/remotebusiness/MtopBusiness;

    move-result-object p0

    return-object p0
.end method

.method public static build(Lmtopsdk/mtop/domain/MtopRequest;)Lcom/taobao/tao/remotebusiness/MtopBusiness;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 183
    invoke-static {v0}, Lmtopsdk/mtop/intf/Mtop;->instance(Landroid/content/Context;)Lmtopsdk/mtop/intf/Mtop;

    move-result-object v1

    invoke-static {v1, p0, v0}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->build(Lmtopsdk/mtop/intf/Mtop;Lmtopsdk/mtop/domain/MtopRequest;Ljava/lang/String;)Lcom/taobao/tao/remotebusiness/MtopBusiness;

    move-result-object p0

    return-object p0
.end method

.method public static build(Lmtopsdk/mtop/domain/MtopRequest;Ljava/lang/String;)Lcom/taobao/tao/remotebusiness/MtopBusiness;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 175
    invoke-static {v0, p1}, Lmtopsdk/mtop/intf/Mtop;->instance(Landroid/content/Context;Ljava/lang/String;)Lmtopsdk/mtop/intf/Mtop;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->build(Lmtopsdk/mtop/intf/Mtop;Lmtopsdk/mtop/domain/MtopRequest;Ljava/lang/String;)Lcom/taobao/tao/remotebusiness/MtopBusiness;

    move-result-object p0

    return-object p0
.end method

.method public static build(Lmtopsdk/mtop/intf/Mtop;Lmtopsdk/mtop/domain/IMTOPDataObject;)Lcom/taobao/tao/remotebusiness/MtopBusiness;
    .locals 1

    const/4 v0, 0x0

    .line 127
    invoke-static {p0, p1, v0}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->build(Lmtopsdk/mtop/intf/Mtop;Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/String;)Lcom/taobao/tao/remotebusiness/MtopBusiness;

    move-result-object p0

    return-object p0
.end method

.method public static build(Lmtopsdk/mtop/intf/Mtop;Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/String;)Lcom/taobao/tao/remotebusiness/MtopBusiness;
    .locals 1

    .line 116
    new-instance v0, Lcom/taobao/tao/remotebusiness/MtopBusiness;

    invoke-direct {v0, p0, p1, p2}, Lcom/taobao/tao/remotebusiness/MtopBusiness;-><init>(Lmtopsdk/mtop/intf/Mtop;Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/String;)V

    return-object v0
.end method

.method public static build(Lmtopsdk/mtop/intf/Mtop;Lmtopsdk/mtop/domain/MtopRequest;)Lcom/taobao/tao/remotebusiness/MtopBusiness;
    .locals 1

    const/4 v0, 0x0

    .line 167
    invoke-static {p0, p1, v0}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->build(Lmtopsdk/mtop/intf/Mtop;Lmtopsdk/mtop/domain/MtopRequest;Ljava/lang/String;)Lcom/taobao/tao/remotebusiness/MtopBusiness;

    move-result-object p0

    return-object p0
.end method

.method public static build(Lmtopsdk/mtop/intf/Mtop;Lmtopsdk/mtop/domain/MtopRequest;Ljava/lang/String;)Lcom/taobao/tao/remotebusiness/MtopBusiness;
    .locals 1

    .line 156
    new-instance v0, Lcom/taobao/tao/remotebusiness/MtopBusiness;

    invoke-direct {v0, p0, p1, p2}, Lcom/taobao/tao/remotebusiness/MtopBusiness;-><init>(Lmtopsdk/mtop/intf/Mtop;Lmtopsdk/mtop/domain/MtopRequest;Ljava/lang/String;)V

    return-object v0
.end method

.method private doErrorCallback(Lmtopsdk/mtop/domain/MtopResponse;Lcom/taobao/tao/remotebusiness/IRemoteListener;)V
    .locals 5

    const/4 v0, 0x1

    const-string v1, "mtopsdk.MtopBusiness"

    if-nez p1, :cond_0

    .line 567
    sget-object v2, Lmtopsdk/common/util/TBSdkLog$LogEnable;->ErrorEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v2}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 568
    iget-object v2, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->seqNo:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mtopResponse is null."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->request:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 570
    :cond_0
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->isSessionInvalid()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 572
    sget-object v2, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v2}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 573
    iget-object v2, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->seqNo:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "session invalid error."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->request:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 575
    :cond_1
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->isMtopServerError()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->isMtopSdkError()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 578
    :cond_3
    :goto_0
    sget-object v2, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v2}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 579
    iget-object v2, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->seqNo:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mtopServerError or mtopSdkError."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->request:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    .line 584
    :try_start_0
    instance-of v2, p2, Lcom/taobao/tao/remotebusiness/IRemoteBaseListener;

    if-eqz v2, :cond_5

    .line 585
    check-cast p2, Lcom/taobao/tao/remotebusiness/IRemoteBaseListener;

    iget v2, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->requestType:I

    invoke-virtual {p0}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->getReqContext()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p2, v2, p1, v3}, Lcom/taobao/tao/remotebusiness/IRemoteBaseListener;->onSystemError(ILmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Object;)V

    goto :goto_2

    .line 587
    :cond_5
    iget v2, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->requestType:I

    invoke-virtual {p0}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->getReqContext()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p2, v2, p1, v3}, Lcom/taobao/tao/remotebusiness/IRemoteListener;->onError(ILmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 590
    iget-object p2, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->seqNo:Ljava/lang/String;

    const-string v2, "listener onError callback error"

    invoke-static {v1, p2, v2, p1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 593
    :goto_2
    sget-object p1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {p1}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 594
    iget-object p1, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->seqNo:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listener onError callback, "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_6

    const-string/jumbo v0, "sys error"

    goto :goto_3

    :cond_6
    const-string v0, "biz error"

    :goto_3
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p1, p2}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method private genSeqNo()Ljava/lang/String;
    .locals 2

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "MB"

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/taobao/tao/remotebusiness/MtopBusiness;->seqGen:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    iget-object v1, v1, Lmtopsdk/mtop/util/MtopStatistics;->seqNo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getRequestLogInfo(Ljava/lang/String;Lcom/taobao/tao/remotebusiness/MtopBusiness;)Ljava/lang/String;
    .locals 2

    .line 816
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 817
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string p1, "apiName="

    .line 819
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/taobao/tao/remotebusiness/MtopBusiness;->request:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";version="

    .line 820
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/taobao/tao/remotebusiness/MtopBusiness;->request:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopRequest;->getVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";requestType="

    .line 821
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->getRequestType()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    const-string p1, "]"

    .line 823
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 824
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public addCacheKeyParamBlackList(Ljava/util/List;)Lcom/taobao/tao/remotebusiness/MtopBusiness;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/taobao/tao/remotebusiness/MtopBusiness;"
        }
    .end annotation

    .line 637
    invoke-super {p0, p1}, Lmtopsdk/mtop/intf/MtopBuilder;->addCacheKeyParamBlackList(Ljava/util/List;)Lmtopsdk/mtop/intf/MtopBuilder;

    move-result-object p1

    check-cast p1, Lcom/taobao/tao/remotebusiness/MtopBusiness;

    return-object p1
.end method

.method public bridge synthetic addCacheKeyParamBlackList(Ljava/util/List;)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->addCacheKeyParamBlackList(Ljava/util/List;)Lcom/taobao/tao/remotebusiness/MtopBusiness;

    move-result-object p1

    return-object p1
.end method

.method public addHttpQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/tao/remotebusiness/MtopBusiness;
    .locals 0

    .line 632
    invoke-super {p0, p1, p2}, Lmtopsdk/mtop/intf/MtopBuilder;->addHttpQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lmtopsdk/mtop/intf/MtopBuilder;

    move-result-object p1

    check-cast p1, Lcom/taobao/tao/remotebusiness/MtopBusiness;

    return-object p1
.end method

.method public bridge synthetic addHttpQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 0

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->addHttpQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/tao/remotebusiness/MtopBusiness;

    move-result-object p1

    return-object p1
.end method

.method public addListener(Lmtopsdk/mtop/common/MtopListener;)Lcom/taobao/tao/remotebusiness/MtopBusiness;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 209
    iput-object p1, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->listener:Lmtopsdk/mtop/common/MtopListener;

    return-object p0
.end method

.method public bridge synthetic addListener(Lmtopsdk/mtop/common/MtopListener;)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 35
    invoke-virtual {p0, p1}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->addListener(Lmtopsdk/mtop/common/MtopListener;)Lcom/taobao/tao/remotebusiness/MtopBusiness;

    move-result-object p1

    return-object p1
.end method

.method public addMteeUa(Ljava/lang/String;)Lcom/taobao/tao/remotebusiness/MtopBusiness;
    .locals 0

    .line 642
    invoke-super {p0, p1}, Lmtopsdk/mtop/intf/MtopBuilder;->addMteeUa(Ljava/lang/String;)Lmtopsdk/mtop/intf/MtopBuilder;

    move-result-object p1

    check-cast p1, Lcom/taobao/tao/remotebusiness/MtopBusiness;

    return-object p1
.end method

.method public bridge synthetic addMteeUa(Ljava/lang/String;)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->addMteeUa(Ljava/lang/String;)Lcom/taobao/tao/remotebusiness/MtopBusiness;

    move-result-object p1

    return-object p1
.end method

.method public addOpenApiParams(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/tao/remotebusiness/MtopBusiness;
    .locals 0

    .line 482
    invoke-super {p0, p1, p2}, Lmtopsdk/mtop/intf/MtopBuilder;->addOpenApiParams(Ljava/lang/String;Ljava/lang/String;)Lmtopsdk/mtop/intf/MtopBuilder;

    move-result-object p1

    check-cast p1, Lcom/taobao/tao/remotebusiness/MtopBusiness;

    return-object p1
.end method

.method public bridge synthetic addOpenApiParams(Ljava/lang/String;Ljava/lang/String;)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 0

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->addOpenApiParams(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/tao/remotebusiness/MtopBusiness;

    move-result-object p1

    return-object p1
.end method

.method public asyncRequest()Lmtopsdk/mtop/common/ApiID;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 336
    invoke-virtual {p0}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->startRequest()V

    .line 337
    iget-object v0, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->apiID:Lmtopsdk/mtop/common/ApiID;

    return-object v0
.end method

.method public cancelRequest()V
    .locals 4

    .line 368
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    const-string v1, "mtopsdk.MtopBusiness"

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->seqNo:Ljava/lang/String;

    const-string v2, "cancelRequest."

    invoke-direct {p0, v2, p0}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->getRequestLogInfo(Ljava/lang/String;Lcom/taobao/tao/remotebusiness/MtopBusiness;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    .line 371
    iput-boolean v0, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->isCancelled:Z

    .line 372
    iget-object v0, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->apiID:Lmtopsdk/mtop/common/ApiID;

    if-eqz v0, :cond_1

    .line 374
    :try_start_0
    invoke-virtual {v0}, Lmtopsdk/mtop/common/ApiID;->cancelApiCall()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 376
    iget-object v2, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->seqNo:Ljava/lang/String;

    const-string v3, "cancelRequest failed."

    invoke-direct {p0, v3, p0}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->getRequestLogInfo(Ljava/lang/String;Lcom/taobao/tao/remotebusiness/MtopBusiness;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public doFinish(Lmtopsdk/mtop/domain/MtopResponse;Lmtopsdk/mtop/domain/BaseOutDo;)V
    .locals 6

    .line 500
    iget-boolean v0, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->syncRequestFlag:Z

    if-eqz v0, :cond_1

    .line 501
    iput-object p1, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    .line 502
    iget-object v0, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->listener:Lmtopsdk/mtop/common/MtopListener;

    monitor-enter v0

    .line 504
    :try_start_0
    iget-object v1, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->listener:Lmtopsdk/mtop/common/MtopListener;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "mtopsdk.MtopBusiness"

    .line 506
    iget-object v3, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->seqNo:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[doFinish]syncRequest do notify Exception. apiKey="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getFullKey()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    const-string v5, ""

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 508
    :goto_1
    monitor-exit v0

    goto :goto_3

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 511
    :cond_1
    :goto_3
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "doFinish request="

    .line 513
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->request:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    const-string v1, ", retCode="

    .line 515
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    :cond_2
    iget-object v1, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->seqNo:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mtopsdk.MtopBusiness"

    invoke-static {v2, v1, v0}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    :cond_3
    iget-boolean v0, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->isCancelled:Z

    if-eqz v0, :cond_4

    .line 522
    iget-object p1, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->seqNo:Ljava/lang/String;

    const-string p2, "mtopsdk.MtopBusiness"

    const-string/jumbo v0, "request is cancelled,don\'t callback listener."

    invoke-static {p2, p1, v0}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 527
    :cond_4
    iget-object v0, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->listener:Lmtopsdk/mtop/common/MtopListener;

    instance-of v1, v0, Lcom/taobao/tao/remotebusiness/IRemoteListener;

    if-nez v1, :cond_6

    .line 528
    iget-object p2, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->seqNo:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "listener did\'t implement IRemoteBaseListener.apiKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getFullKey()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_5
    const-string p1, ""

    :goto_4
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mtopsdk.MtopBusiness"

    invoke-static {v0, p2, p1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 532
    :cond_6
    check-cast v0, Lcom/taobao/tao/remotebusiness/IRemoteListener;

    if-eqz p1, :cond_8

    .line 534
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->isApiSuccess()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 537
    :try_start_2
    iget v1, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->requestType:I

    invoke-virtual {p0}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->getReqContext()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/taobao/tao/remotebusiness/IRemoteListener;->onSuccess(ILmtopsdk/mtop/domain/MtopResponse;Lmtopsdk/mtop/domain/BaseOutDo;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    move-exception p1

    .line 539
    iget-object p2, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->seqNo:Ljava/lang/String;

    const-string v0, "mtopsdk.MtopBusiness"

    const-string v1, "listener onSuccess callback error"

    invoke-static {v0, p2, v1, p1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 542
    :goto_5
    sget-object p1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {p1}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 543
    iget-object p1, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->seqNo:Ljava/lang/String;

    const-string p2, "mtopsdk.MtopBusiness"

    const-string v0, "listener onSuccess callback."

    invoke-static {p2, p1, v0}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void

    .line 548
    :cond_8
    iget-boolean p2, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->isCached:Z

    if-eqz p2, :cond_9

    iget-boolean p2, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->isErrorNotifyAfterCache:Z

    if-nez p2, :cond_9

    .line 549
    iget-object p1, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->seqNo:Ljava/lang/String;

    const-string p2, "mtopsdk.MtopBusiness"

    const-string v0, "listener onCached callback,doNothing in doFinish()"

    invoke-static {p2, p1, v0}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 553
    :cond_9
    invoke-direct {p0, p1, v0}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->doErrorCallback(Lmtopsdk/mtop/domain/MtopResponse;Lcom/taobao/tao/remotebusiness/IRemoteListener;)V

    return-void
.end method

.method public enableProgressListener()Lcom/taobao/tao/remotebusiness/MtopBusiness;
    .locals 1

    .line 648
    invoke-super {p0}, Lmtopsdk/mtop/intf/MtopBuilder;->enableProgressListener()Lmtopsdk/mtop/intf/MtopBuilder;

    move-result-object v0

    check-cast v0, Lcom/taobao/tao/remotebusiness/MtopBusiness;

    return-object v0
.end method

.method public bridge synthetic enableProgressListener()Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->enableProgressListener()Lcom/taobao/tao/remotebusiness/MtopBusiness;

    move-result-object v0

    return-object v0
.end method

.method public forceRefreshCache()Lcom/taobao/tao/remotebusiness/MtopBusiness;
    .locals 1

    .line 653
    invoke-super {p0}, Lmtopsdk/mtop/intf/MtopBuilder;->forceRefreshCache()Lmtopsdk/mtop/intf/MtopBuilder;

    move-result-object v0

    check-cast v0, Lcom/taobao/tao/remotebusiness/MtopBusiness;

    return-object v0
.end method

.method public bridge synthetic forceRefreshCache()Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->forceRefreshCache()Lcom/taobao/tao/remotebusiness/MtopBusiness;

    move-result-object v0

    return-object v0
.end method

.method public getRequestType()I
    .locals 1

    .line 344
    iget v0, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->requestType:I

    return v0
.end method

.method public getRetryTime()I
    .locals 1

    .line 360
    iget v0, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->retryTime:I

    return v0
.end method

.method public getSeqNo()Ljava/lang/String;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->seqNo:Ljava/lang/String;

    return-object v0
.end method

.method public handler(Landroid/os/Handler;)Lcom/taobao/tao/remotebusiness/MtopBusiness;
    .locals 0

    .line 669
    invoke-super {p0, p1}, Lmtopsdk/mtop/intf/MtopBuilder;->handler(Landroid/os/Handler;)Lmtopsdk/mtop/intf/MtopBuilder;

    move-result-object p1

    check-cast p1, Lcom/taobao/tao/remotebusiness/MtopBusiness;

    return-object p1
.end method

.method public bridge synthetic handler(Landroid/os/Handler;)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->handler(Landroid/os/Handler;)Lcom/taobao/tao/remotebusiness/MtopBusiness;

    move-result-object p1

    return-object p1
.end method

.method public headers(Ljava/util/Map;)Lcom/taobao/tao/remotebusiness/MtopBusiness;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/taobao/tao/remotebusiness/MtopBusiness;"
        }
    .end annotation

    .line 674
    invoke-super {p0, p1}, Lmtopsdk/mtop/intf/MtopBuilder;->headers(Ljava/util/Map;)Lmtopsdk/mtop/intf/MtopBuilder;

    move-result-object p1

    check-cast p1, Lcom/taobao/tao/remotebusiness/MtopBusiness;

    return-object p1
.end method

.method public bridge synthetic headers(Ljava/util/Map;)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->headers(Ljava/util/Map;)Lcom/taobao/tao/remotebusiness/MtopBusiness;

    move-result-object p1

    return-object p1
.end method

.method public isNeedAuth()Z
    .locals 1

    .line 469
    iget-boolean v0, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->needAuth:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->authParam:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isShowLoginUI()Z
    .locals 1

    .line 410
    iget-boolean v0, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->showLoginUI:Z

    return v0
.end method

.method public isTaskCanceled()Z
    .locals 1

    .line 353
    iget-boolean v0, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->isCancelled:Z

    return v0
.end method

.method public protocol(Lmtopsdk/mtop/domain/ProtocolEnum;)Lcom/taobao/tao/remotebusiness/MtopBusiness;
    .locals 0

    .line 679
    invoke-super {p0, p1}, Lmtopsdk/mtop/intf/MtopBuilder;->protocol(Lmtopsdk/mtop/domain/ProtocolEnum;)Lmtopsdk/mtop/intf/MtopBuilder;

    move-result-object p1

    check-cast p1, Lcom/taobao/tao/remotebusiness/MtopBusiness;

    return-object p1
.end method

.method public bridge synthetic protocol(Lmtopsdk/mtop/domain/ProtocolEnum;)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->protocol(Lmtopsdk/mtop/domain/ProtocolEnum;)Lcom/taobao/tao/remotebusiness/MtopBusiness;

    move-result-object p1

    return-object p1
.end method

.method public registerListener(Lcom/taobao/tao/remotebusiness/IRemoteListener;)Lcom/taobao/tao/remotebusiness/MtopBusiness;
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->listener:Lmtopsdk/mtop/common/MtopListener;

    return-object p0
.end method

.method public registerListener(Lmtopsdk/mtop/common/MtopListener;)Lcom/taobao/tao/remotebusiness/MtopBusiness;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 195
    iput-object p1, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->listener:Lmtopsdk/mtop/common/MtopListener;

    return-object p0
.end method

.method public reqContext(Ljava/lang/Object;)Lcom/taobao/tao/remotebusiness/MtopBusiness;
    .locals 0

    .line 684
    invoke-super {p0, p1}, Lmtopsdk/mtop/intf/MtopBuilder;->reqContext(Ljava/lang/Object;)Lmtopsdk/mtop/intf/MtopBuilder;

    move-result-object p1

    check-cast p1, Lcom/taobao/tao/remotebusiness/MtopBusiness;

    return-object p1
.end method

.method public bridge synthetic reqContext(Ljava/lang/Object;)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->reqContext(Ljava/lang/Object;)Lcom/taobao/tao/remotebusiness/MtopBusiness;

    move-result-object p1

    return-object p1
.end method

.method public reqMethod(Lmtopsdk/mtop/domain/MethodEnum;)Lcom/taobao/tao/remotebusiness/MtopBusiness;
    .locals 0

    .line 689
    invoke-super {p0, p1}, Lmtopsdk/mtop/intf/MtopBuilder;->reqMethod(Lmtopsdk/mtop/domain/MethodEnum;)Lmtopsdk/mtop/intf/MtopBuilder;

    move-result-object p1

    check-cast p1, Lcom/taobao/tao/remotebusiness/MtopBusiness;

    return-object p1
.end method

.method public bridge synthetic reqMethod(Lmtopsdk/mtop/domain/MethodEnum;)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->reqMethod(Lmtopsdk/mtop/domain/MethodEnum;)Lcom/taobao/tao/remotebusiness/MtopBusiness;

    move-result-object p1

    return-object p1
.end method

.method retryRequest()V
    .locals 3

    .line 385
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->seqNo:Ljava/lang/String;

    const-string/jumbo v1, "retryRequest."

    invoke-direct {p0, v1, p0}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->getRequestLogInfo(Ljava/lang/String;Lcom/taobao/tao/remotebusiness/MtopBusiness;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mtopsdk.MtopBusiness"

    invoke-static {v2, v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    :cond_0
    iget v0, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->retryTime:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    .line 390
    iput v0, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->retryTime:I

    .line 391
    iget-object v0, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->mtopContext:Lmtopsdk/framework/domain/MtopContext;

    iget-object v0, v0, Lmtopsdk/framework/domain/MtopContext;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->doFinish(Lmtopsdk/mtop/domain/MtopResponse;Lmtopsdk/mtop/domain/BaseOutDo;)V

    return-void

    .line 394
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->cancelRequest()V

    .line 395
    iget v0, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->requestType:I

    iget-object v1, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->clazz:Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->startRequest(ILjava/lang/Class;)V

    .line 396
    iget v0, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->retryTime:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->retryTime:I

    return-void
.end method

.method public retryTime(I)Lcom/taobao/tao/remotebusiness/MtopBusiness;
    .locals 0

    .line 694
    invoke-super {p0, p1}, Lmtopsdk/mtop/intf/MtopBuilder;->retryTime(I)Lmtopsdk/mtop/intf/MtopBuilder;

    move-result-object p1

    check-cast p1, Lcom/taobao/tao/remotebusiness/MtopBusiness;

    return-object p1
.end method

.method public bridge synthetic retryTime(I)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->retryTime(I)Lcom/taobao/tao/remotebusiness/MtopBusiness;

    move-result-object p1

    return-object p1
.end method

.method public setBizId(I)Lcom/taobao/tao/remotebusiness/MtopBusiness;
    .locals 0

    .line 605
    invoke-super {p0, p1}, Lmtopsdk/mtop/intf/MtopBuilder;->setBizId(I)Lmtopsdk/mtop/intf/MtopBuilder;

    move-result-object p1

    check-cast p1, Lcom/taobao/tao/remotebusiness/MtopBusiness;

    return-object p1
.end method

.method public bridge synthetic setBizId(I)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->setBizId(I)Lcom/taobao/tao/remotebusiness/MtopBusiness;

    move-result-object p1

    return-object p1
.end method

.method public setCacheControlNoCache()Lcom/taobao/tao/remotebusiness/MtopBusiness;
    .locals 1

    .line 699
    invoke-super {p0}, Lmtopsdk/mtop/intf/MtopBuilder;->setCacheControlNoCache()Lmtopsdk/mtop/intf/MtopBuilder;

    move-result-object v0

    check-cast v0, Lcom/taobao/tao/remotebusiness/MtopBusiness;

    return-object v0
.end method

.method public bridge synthetic setCacheControlNoCache()Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->setCacheControlNoCache()Lcom/taobao/tao/remotebusiness/MtopBusiness;

    move-result-object v0

    return-object v0
.end method

.method public setConnectionTimeoutMilliSecond(I)Lcom/taobao/tao/remotebusiness/MtopBusiness;
    .locals 0

    .line 704
    invoke-super {p0, p1}, Lmtopsdk/mtop/intf/MtopBuilder;->setConnectionTimeoutMilliSecond(I)Lmtopsdk/mtop/intf/MtopBuilder;

    move-result-object p1

    check-cast p1, Lcom/taobao/tao/remotebusiness/MtopBusiness;

    return-object p1
.end method

.method public bridge synthetic setConnectionTimeoutMilliSecond(I)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->setConnectionTimeoutMilliSecond(I)Lcom/taobao/tao/remotebusiness/MtopBusiness;

    move-result-object p1

    return-object p1
.end method

.method public setCustomDomain(Ljava/lang/String;)Lcom/taobao/tao/remotebusiness/MtopBusiness;
    .locals 0

    .line 709
    invoke-super {p0, p1}, Lmtopsdk/mtop/intf/MtopBuilder;->setCustomDomain(Ljava/lang/String;)Lmtopsdk/mtop/intf/MtopBuilder;

    move-result-object p1

    check-cast p1, Lcom/taobao/tao/remotebusiness/MtopBusiness;

    return-object p1
.end method

.method public setCustomDomain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/tao/remotebusiness/MtopBusiness;
    .locals 0

    .line 722
    invoke-super {p0, p1, p2, p3}, Lmtopsdk/mtop/intf/MtopBuilder;->setCustomDomain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmtopsdk/mtop/intf/MtopBuilder;

    move-result-object p1

    check-cast p1, Lcom/taobao/tao/remotebusiness/MtopBusiness;

    return-object p1
.end method

.method public bridge synthetic setCustomDomain(Ljava/lang/String;)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->setCustomDomain(Ljava/lang/String;)Lcom/taobao/tao/remotebusiness/MtopBusiness;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setCustomDomain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 0

    .line 35
    invoke-virtual {p0, p1, p2, p3}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->setCustomDomain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/tao/remotebusiness/MtopBusiness;

    move-result-object p1

    return-object p1
.end method

.method public setErrorNotifyAfterCache(Z)Lcom/taobao/tao/remotebusiness/MtopBusiness;
    .locals 0

    .line 487
    iput-boolean p1, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->isErrorNotifyAfterCache:Z

    return-object p0
.end method

.method public setErrorNotifyNeedAfterCache(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 493
    invoke-virtual {p0, p1}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->setErrorNotifyAfterCache(Z)Lcom/taobao/tao/remotebusiness/MtopBusiness;

    return-void
.end method

.method public setJsonType(Lmtopsdk/mtop/domain/JsonTypeEnum;)Lcom/taobao/tao/remotebusiness/MtopBusiness;
    .locals 0

    .line 739
    invoke-super {p0, p1}, Lmtopsdk/mtop/intf/MtopBuilder;->setJsonType(Lmtopsdk/mtop/domain/JsonTypeEnum;)Lmtopsdk/mtop/intf/MtopBuilder;

    move-result-object p1

    check-cast p1, Lcom/taobao/tao/remotebusiness/MtopBusiness;

    return-object p1
.end method

.method public bridge synthetic setJsonType(Lmtopsdk/mtop/domain/JsonTypeEnum;)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->setJsonType(Lmtopsdk/mtop/domain/JsonTypeEnum;)Lcom/taobao/tao/remotebusiness/MtopBusiness;

    move-result-object p1

    return-object p1
.end method

.method public setNeedAuth(Ljava/lang/String;Ljava/lang/String;Z)Lcom/taobao/tao/remotebusiness/MtopBusiness;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 443
    iget-object v0, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    sget-object v1, Lmtopsdk/mtop/domain/ApiTypeEnum;->ISV_OPEN_API:Lmtopsdk/mtop/domain/ApiTypeEnum;

    iput-object v1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->apiType:Lmtopsdk/mtop/domain/ApiTypeEnum;

    .line 444
    iget-object v0, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->isInnerOpen:Z

    .line 445
    invoke-static {p1}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput-object p1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->openAppKey:Ljava/lang/String;

    .line 448
    :cond_0
    iput-object p2, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->authParam:Ljava/lang/String;

    .line 449
    iput-boolean p3, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->showAuthUI:Z

    .line 450
    iput-boolean v1, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->needAuth:Z

    .line 451
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "[setNeedAuth] openAppKey="

    .line 453
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", bizParam="

    .line 454
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", showAuthUI="

    .line 455
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", needAuth="

    .line 456
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->needAuth:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isInnerOpen=true"

    .line 457
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    iget-object p1, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->seqNo:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "mtopsdk.MtopBusiness"

    invoke-static {p3, p1, p2}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object p0
.end method

.method public setNeedAuth(Ljava/lang/String;Z)Lcom/taobao/tao/remotebusiness/MtopBusiness;
    .locals 2

    .line 421
    iput-object p1, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->authParam:Ljava/lang/String;

    .line 422
    iput-boolean p2, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->showAuthUI:Z

    const/4 v0, 0x1

    .line 423
    iput-boolean v0, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->needAuth:Z

    .line 424
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "[setNeedAuth] authParam="

    .line 426
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", showAuthUI="

    .line 427
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", needAuth="

    .line 428
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->needAuth:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 429
    iget-object p1, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->seqNo:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "mtopsdk.MtopBusiness"

    invoke-static {v0, p1, p2}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public setNetInfo(I)Lcom/taobao/tao/remotebusiness/MtopBusiness;
    .locals 0

    .line 744
    invoke-super {p0, p1}, Lmtopsdk/mtop/intf/MtopBuilder;->setNetInfo(I)Lmtopsdk/mtop/intf/MtopBuilder;

    move-result-object p1

    check-cast p1, Lcom/taobao/tao/remotebusiness/MtopBusiness;

    return-object p1
.end method

.method public bridge synthetic setNetInfo(I)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->setNetInfo(I)Lcom/taobao/tao/remotebusiness/MtopBusiness;

    move-result-object p1

    return-object p1
.end method

.method public setPageUrl(Ljava/lang/String;)Lcom/taobao/tao/remotebusiness/MtopBusiness;
    .locals 0

    .line 749
    invoke-super {p0, p1}, Lmtopsdk/mtop/intf/MtopBuilder;->setPageUrl(Ljava/lang/String;)Lmtopsdk/mtop/intf/MtopBuilder;

    move-result-object p1

    check-cast p1, Lcom/taobao/tao/remotebusiness/MtopBusiness;

    return-object p1
.end method

.method public bridge synthetic setPageUrl(Ljava/lang/String;)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->setPageUrl(Ljava/lang/String;)Lcom/taobao/tao/remotebusiness/MtopBusiness;

    move-result-object p1

    return-object p1
.end method

.method public setPriorityData(Ljava/util/Map;)Lcom/taobao/tao/remotebusiness/MtopBusiness;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/taobao/tao/remotebusiness/MtopBusiness;"
        }
    .end annotation

    .line 795
    iget-object v0, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput-object p1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->priorityData:Ljava/util/Map;

    return-object p0
.end method

.method public setPriorityFlag(Z)Lcom/taobao/tao/remotebusiness/MtopBusiness;
    .locals 1

    .line 784
    iget-object v0, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput-boolean p1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->priorityFlag:Z

    return-object p0
.end method

.method public setReqAppKey(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/tao/remotebusiness/MtopBusiness;
    .locals 0

    .line 754
    invoke-super {p0, p1, p2}, Lmtopsdk/mtop/intf/MtopBuilder;->setReqAppKey(Ljava/lang/String;Ljava/lang/String;)Lmtopsdk/mtop/intf/MtopBuilder;

    move-result-object p1

    check-cast p1, Lcom/taobao/tao/remotebusiness/MtopBusiness;

    return-object p1
.end method

.method public bridge synthetic setReqAppKey(Ljava/lang/String;Ljava/lang/String;)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 0

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->setReqAppKey(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/tao/remotebusiness/MtopBusiness;

    move-result-object p1

    return-object p1
.end method

.method public setReqBizExt(Ljava/lang/String;)Lcom/taobao/tao/remotebusiness/MtopBusiness;
    .locals 0

    .line 759
    invoke-super {p0, p1}, Lmtopsdk/mtop/intf/MtopBuilder;->setReqBizExt(Ljava/lang/String;)Lmtopsdk/mtop/intf/MtopBuilder;

    move-result-object p1

    check-cast p1, Lcom/taobao/tao/remotebusiness/MtopBusiness;

    return-object p1
.end method

.method public bridge synthetic setReqBizExt(Ljava/lang/String;)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->setReqBizExt(Ljava/lang/String;)Lcom/taobao/tao/remotebusiness/MtopBusiness;

    move-result-object p1

    return-object p1
.end method

.method public setReqSource(I)Lcom/taobao/tao/remotebusiness/MtopBusiness;
    .locals 0

    .line 764
    invoke-super {p0, p1}, Lmtopsdk/mtop/intf/MtopBuilder;->setReqSource(I)Lmtopsdk/mtop/intf/MtopBuilder;

    move-result-object p1

    check-cast p1, Lcom/taobao/tao/remotebusiness/MtopBusiness;

    return-object p1
.end method

.method public bridge synthetic setReqSource(I)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->setReqSource(I)Lcom/taobao/tao/remotebusiness/MtopBusiness;

    move-result-object p1

    return-object p1
.end method

.method public setReqUserId(Ljava/lang/String;)Lcom/taobao/tao/remotebusiness/MtopBusiness;
    .locals 0

    .line 769
    invoke-super {p0, p1}, Lmtopsdk/mtop/intf/MtopBuilder;->setReqUserId(Ljava/lang/String;)Lmtopsdk/mtop/intf/MtopBuilder;

    move-result-object p1

    check-cast p1, Lcom/taobao/tao/remotebusiness/MtopBusiness;

    return-object p1
.end method

.method public bridge synthetic setReqUserId(Ljava/lang/String;)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->setReqUserId(Ljava/lang/String;)Lcom/taobao/tao/remotebusiness/MtopBusiness;

    move-result-object p1

    return-object p1
.end method

.method public setSocketTimeoutMilliSecond(I)Lcom/taobao/tao/remotebusiness/MtopBusiness;
    .locals 0

    .line 774
    invoke-super {p0, p1}, Lmtopsdk/mtop/intf/MtopBuilder;->setSocketTimeoutMilliSecond(I)Lmtopsdk/mtop/intf/MtopBuilder;

    move-result-object p1

    check-cast p1, Lcom/taobao/tao/remotebusiness/MtopBusiness;

    return-object p1
.end method

.method public bridge synthetic setSocketTimeoutMilliSecond(I)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->setSocketTimeoutMilliSecond(I)Lcom/taobao/tao/remotebusiness/MtopBusiness;

    move-result-object p1

    return-object p1
.end method

.method public setUnitStrategy(Ljava/lang/String;)Lcom/taobao/tao/remotebusiness/MtopBusiness;
    .locals 0

    .line 734
    invoke-super {p0, p1}, Lmtopsdk/mtop/intf/MtopBuilder;->setUnitStrategy(Ljava/lang/String;)Lmtopsdk/mtop/intf/MtopBuilder;

    move-result-object p1

    check-cast p1, Lcom/taobao/tao/remotebusiness/MtopBusiness;

    return-object p1
.end method

.method public bridge synthetic setUnitStrategy(Ljava/lang/String;)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->setUnitStrategy(Ljava/lang/String;)Lcom/taobao/tao/remotebusiness/MtopBusiness;

    move-result-object p1

    return-object p1
.end method

.method public setUserInfo(Ljava/lang/String;)Lcom/taobao/tao/remotebusiness/MtopBusiness;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 807
    invoke-super {p0, p1}, Lmtopsdk/mtop/intf/MtopBuilder;->setUserInfo(Ljava/lang/String;)Lmtopsdk/mtop/intf/MtopBuilder;

    move-result-object p1

    check-cast p1, Lcom/taobao/tao/remotebusiness/MtopBusiness;

    return-object p1
.end method

.method public bridge synthetic setUserInfo(Ljava/lang/String;)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 35
    invoke-virtual {p0, p1}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->setUserInfo(Ljava/lang/String;)Lcom/taobao/tao/remotebusiness/MtopBusiness;

    move-result-object p1

    return-object p1
.end method

.method public showLoginUI(Z)Lcom/taobao/tao/remotebusiness/MtopBusiness;
    .locals 0

    .line 405
    iput-boolean p1, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->showLoginUI:Z

    return-object p0
.end method

.method public startRequest()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 232
    invoke-virtual {p0, v0, v1}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->startRequest(ILjava/lang/Class;)V

    return-void
.end method

.method public startRequest(ILjava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 251
    iget-object v0, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->request:Lmtopsdk/mtop/domain/MtopRequest;

    const-string v1, "mtopsdk.MtopBusiness"

    if-nez v0, :cond_0

    .line 252
    iget-object p1, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->seqNo:Ljava/lang/String;

    const-string p2, "MtopRequest is null!"

    invoke-static {v1, p1, p2}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 255
    :cond_0
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->seqNo:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startRequest "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->request:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->reqStartTime:J

    const/4 v0, 0x0

    .line 259
    iput-boolean v0, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->isCancelled:Z

    .line 260
    iput-boolean v0, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->isCached:Z

    .line 261
    iput-object p2, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->clazz:Ljava/lang/Class;

    .line 262
    iput p1, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->requestType:I

    .line 264
    iget-object p1, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->requestContext:Ljava/lang/Object;

    if-eqz p1, :cond_2

    .line 265
    invoke-virtual {p0, p1}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->reqContext(Ljava/lang/Object;)Lcom/taobao/tao/remotebusiness/MtopBusiness;

    .line 268
    :cond_2
    iget-object p1, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->listener:Lmtopsdk/mtop/common/MtopListener;

    if-eqz p1, :cond_3

    iget-boolean p2, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->isCancelled:Z

    if-nez p2, :cond_3

    .line 269
    invoke-static {p0, p1}, Lcom/taobao/tao/remotebusiness/listener/MtopListenerProxyFactory;->getMtopListenerProxy(Lcom/taobao/tao/remotebusiness/MtopBusiness;Lmtopsdk/mtop/common/MtopListener;)Lmtopsdk/mtop/common/MtopListener;

    move-result-object p1

    invoke-super {p0, p1}, Lmtopsdk/mtop/intf/MtopBuilder;->addListener(Lmtopsdk/mtop/common/MtopListener;)Lmtopsdk/mtop/intf/MtopBuilder;

    .line 272
    :cond_3
    invoke-virtual {p0, v0}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->mtopCommitStatData(Z)V

    .line 274
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->sendStartTime:J

    .line 275
    invoke-super {p0}, Lmtopsdk/mtop/intf/MtopBuilder;->asyncRequest()Lmtopsdk/mtop/common/ApiID;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->apiID:Lmtopsdk/mtop/common/ApiID;

    return-void
.end method

.method public startRequest(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 241
    invoke-virtual {p0, v0, p1}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->startRequest(ILjava/lang/Class;)V

    return-void
.end method

.method public syncRequest()Lmtopsdk/mtop/domain/MtopResponse;
    .locals 6

    .line 284
    iget-object v0, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->request:Lmtopsdk/mtop/domain/MtopRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->request:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopRequest;->getKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 285
    :goto_0
    invoke-static {}, Lmtopsdk/common/util/MtopUtils;->isMainThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 286
    iget-object v1, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->seqNo:Ljava/lang/String;

    const-string v2, "mtopsdk.MtopBusiness"

    const-string v3, "do syncRequest in UI main thread!"

    invoke-static {v2, v1, v3}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x1

    .line 288
    iput-boolean v1, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->syncRequestFlag:Z

    .line 289
    iget-object v1, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->listener:Lmtopsdk/mtop/common/MtopListener;

    if-nez v1, :cond_2

    .line 291
    new-instance v1, Lcom/taobao/tao/remotebusiness/MtopBusiness$1;

    invoke-direct {v1, p0}, Lcom/taobao/tao/remotebusiness/MtopBusiness$1;-><init>(Lcom/taobao/tao/remotebusiness/MtopBusiness;)V

    iput-object v1, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->listener:Lmtopsdk/mtop/common/MtopListener;

    .line 305
    :cond_2
    invoke-virtual {p0}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->startRequest()V

    .line 307
    iget-object v1, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->listener:Lmtopsdk/mtop/common/MtopListener;

    monitor-enter v1

    .line 309
    :try_start_0
    iget-object v2, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    if-nez v2, :cond_3

    .line 310
    iget-object v2, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->listener:Lmtopsdk/mtop/common/MtopListener;

    const-wide/32 v3, 0xea60

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    :try_start_1
    const-string v2, "mtopsdk.MtopBusiness"

    .line 315
    iget-object v3, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->seqNo:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "syncRequest do wait Exception. apiKey="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    const-string v2, "mtopsdk.MtopBusiness"

    .line 313
    iget-object v3, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->seqNo:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "syncRequest InterruptedException. apiKey="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    :cond_3
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 318
    iget-object v1, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    if-nez v1, :cond_5

    .line 320
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->ErrorEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 321
    iget-object v1, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->seqNo:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "syncRequest timeout. apiKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mtopsdk.MtopBusiness"

    invoke-static {v2, v1, v0}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :cond_4
    invoke-virtual {p0}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->cancelRequest()V

    .line 325
    :cond_5
    iget-object v0, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->handleAsyncTimeoutException()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v0

    :goto_2
    return-object v0

    .line 317
    :goto_3
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public ttid(Ljava/lang/String;)Lcom/taobao/tao/remotebusiness/MtopBusiness;
    .locals 0

    .line 611
    invoke-super {p0, p1}, Lmtopsdk/mtop/intf/MtopBuilder;->ttid(Ljava/lang/String;)Lmtopsdk/mtop/intf/MtopBuilder;

    move-result-object p1

    check-cast p1, Lcom/taobao/tao/remotebusiness/MtopBusiness;

    return-object p1
.end method

.method public bridge synthetic ttid(Ljava/lang/String;)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->ttid(Ljava/lang/String;)Lcom/taobao/tao/remotebusiness/MtopBusiness;

    move-result-object p1

    return-object p1
.end method

.method public useCache()Lcom/taobao/tao/remotebusiness/MtopBusiness;
    .locals 1

    .line 616
    invoke-super {p0}, Lmtopsdk/mtop/intf/MtopBuilder;->useCache()Lmtopsdk/mtop/intf/MtopBuilder;

    move-result-object v0

    check-cast v0, Lcom/taobao/tao/remotebusiness/MtopBusiness;

    return-object v0
.end method

.method public bridge synthetic useCache()Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->useCache()Lcom/taobao/tao/remotebusiness/MtopBusiness;

    move-result-object v0

    return-object v0
.end method

.method public useWua()Lcom/taobao/tao/remotebusiness/MtopBusiness;
    .locals 1

    .line 621
    invoke-super {p0}, Lmtopsdk/mtop/intf/MtopBuilder;->useWua()Lmtopsdk/mtop/intf/MtopBuilder;

    move-result-object v0

    check-cast v0, Lcom/taobao/tao/remotebusiness/MtopBusiness;

    return-object v0
.end method

.method public useWua(I)Lcom/taobao/tao/remotebusiness/MtopBusiness;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 627
    invoke-super {p0, p1}, Lmtopsdk/mtop/intf/MtopBuilder;->useWua(I)Lmtopsdk/mtop/intf/MtopBuilder;

    move-result-object p1

    check-cast p1, Lcom/taobao/tao/remotebusiness/MtopBusiness;

    return-object p1
.end method

.method public bridge synthetic useWua()Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->useWua()Lcom/taobao/tao/remotebusiness/MtopBusiness;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic useWua(I)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 35
    invoke-virtual {p0, p1}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->useWua(I)Lcom/taobao/tao/remotebusiness/MtopBusiness;

    move-result-object p1

    return-object p1
.end method
