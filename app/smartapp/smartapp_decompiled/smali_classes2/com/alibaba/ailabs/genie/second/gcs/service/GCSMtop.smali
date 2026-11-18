.class public Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop;
.super Lcom/alibaba/ailabs/ipc/remote/CommuSvr;
.source "GCSMtop.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GCSMtop"

.field private static sInstance:Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/ipc/remote/CommuSvr;-><init>(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$400(Landroid/os/IBinder;ILandroid/os/Bundle;)V
    .locals 0

    .line 34
    invoke-static {p0, p1, p2}, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop;->onResponse(Landroid/os/IBinder;ILandroid/os/Bundle;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop;
    .locals 2

    .line 49
    sget-object v0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop;->sInstance:Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop;

    if-nez v0, :cond_1

    .line 50
    const-class v0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop;

    monitor-enter v0

    .line 51
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop;->sInstance:Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop;

    if-nez v1, :cond_0

    .line 52
    new-instance v1, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop;->sInstance:Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop;

    .line 54
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 56
    :cond_1
    :goto_0
    sget-object p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop;->sInstance:Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop;

    return-object p0
.end method

.method public static getServerName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.alibaba.ailabs.genie.gcs.mtop"

    return-object v0
.end method

.method private static onResponse(Landroid/os/IBinder;ILandroid/os/Bundle;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 112
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/ailabs/ipc/ICommu$Stub;->asInterface(Landroid/os/IBinder;)Lcom/alibaba/ailabs/ipc/ICommu;

    move-result-object p0

    .line 113
    invoke-interface {p0, p1, p2}, Lcom/alibaba/ailabs/ipc/ICommu;->onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 115
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private send(Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/Bundle;
    .locals 1

    .line 74
    sget-object v0, Lmtopsdk/mtop/domain/MethodEnum;->POST:Lmtopsdk/mtop/domain/MethodEnum;

    invoke-direct {p0, p1, v0, p2}, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop;->send(Ljava/lang/String;Lmtopsdk/mtop/domain/MethodEnum;Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method private send(Ljava/lang/String;Lmtopsdk/mtop/domain/MethodEnum;Landroid/os/IBinder;)Landroid/os/Bundle;
    .locals 2

    const/4 v0, 0x1

    .line 80
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/second/gcs/service/MtopRequestUtils;->valueOf(Ljava/lang/String;)Lmtopsdk/mtop/domain/MtopRequest;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    new-instance v1, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;

    invoke-direct {v1, p1}, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;-><init>(Lmtopsdk/mtop/domain/MtopRequest;)V

    .line 93
    invoke-virtual {v1, p3}, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->ipcCallback(Landroid/os/IBinder;)Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;

    move-result-object p3

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lmtopsdk/mtop/domain/MethodEnum;->POST:Lmtopsdk/mtop/domain/MethodEnum;

    .line 94
    :goto_0
    invoke-virtual {p3, p2}, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->reqMethod(Lmtopsdk/mtop/domain/MethodEnum;)Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;

    move-result-object p2

    .line 95
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->build()Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;

    move-result-object p2

    .line 97
    invoke-static {p2}, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->access$000(Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;)Lmtopsdk/mtop/intf/MtopBuilder;

    move-result-object p3

    .line 98
    invoke-virtual {p3}, Lmtopsdk/mtop/intf/MtopBuilder;->asyncRequest()Lmtopsdk/mtop/common/ApiID;

    .line 100
    invoke-static {p2}, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->access$100(Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/second/utils/DLog;->printNormal(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/second/utils/GenieTimeMonitorUtils;->beginTimeCalculate(Ljava/lang/String;)V

    .line 104
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop;->getBundle(Z)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p2

    const-string v1, "request is illegal"

    .line 83
    invoke-static {v1}, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 82
    invoke-static {p3, v0, v1}, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop;->onResponse(Landroid/os/IBinder;ILandroid/os/Bundle;)V

    .line 84
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mtop request: ["

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] exception"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/alibaba/ailabs/genie/second/utils/DLog;->printNormal(Ljava/lang/String;)V

    .line 86
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send() called with: request = ["

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]. exception = "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {p2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GCSMtop"

    .line 86
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop;->getBundle(Z)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    if-nez p1, :cond_0

    .line 62
    invoke-static {p2}, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop;->getBinder(Landroid/os/Bundle;)Landroid/os/IBinder;

    move-result-object p1

    .line 63
    invoke-static {p2}, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop;->getString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-static {p2}, Lcom/alibaba/ailabs/genie/second/utils/MtopUtil;->getStringFromBundle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p2

    .line 66
    invoke-static {p2}, Lcom/alibaba/ailabs/genie/second/utils/MtopUtil;->valueOf(Ljava/lang/String;)Lmtopsdk/mtop/domain/MethodEnum;

    move-result-object p2

    .line 68
    invoke-direct {p0, v0, p2, p1}, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop;->send(Ljava/lang/String;Lmtopsdk/mtop/domain/MethodEnum;Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 70
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alibaba/ailabs/ipc/remote/CommuSvr;->onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method
