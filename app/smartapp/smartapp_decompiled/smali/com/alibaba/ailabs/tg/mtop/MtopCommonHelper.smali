.class public Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper;
.super Ljava/lang/Object;
.source "MtopCommonHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$OnComResponseListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MtopCommonHelper"


# instance fields
.field private mIsAddFilter:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected mtop:Lmtopsdk/mtop/intf/Mtop;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper;->mIsAddFilter:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private addApiNameChecker()V
    .locals 4

    .line 50
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper;->mtop:Lmtopsdk/mtop/intf/Mtop;

    invoke-virtual {v0}, Lmtopsdk/mtop/intf/Mtop;->getMtopConfig()Lmtopsdk/mtop/global/MtopConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v1, v0, Lmtopsdk/mtop/global/MtopConfig;->filterManager:Lmtopsdk/framework/manager/FilterManager;

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper;->mIsAddFilter:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    iget-object v0, v0, Lmtopsdk/mtop/global/MtopConfig;->filterManager:Lmtopsdk/framework/manager/FilterManager;

    new-instance v1, Lcom/alibaba/ailabs/tg/mtop/CheckRequestApiName;

    invoke-direct {v1}, Lcom/alibaba/ailabs/tg/mtop/CheckRequestApiName;-><init>()V

    invoke-interface {v0, v1}, Lmtopsdk/framework/manager/FilterManager;->addBefore(Lmtopsdk/framework/filter/IBeforeFilter;)V

    goto :goto_0

    :cond_0
    const-string v0, "MtopConfig or filterManager is null"

    .line 56
    invoke-static {v0}, Lcom/alibaba/ailabs/tg/utils/LogUtils;->e(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static send(Lmtopsdk/mtop/domain/IMTOPDataObject;Lcom/alibaba/ailabs/genie/second/gcs/service/GCSBaseCallback;)V
    .locals 4

    const-string v0, "get server fail"

    const/4 v1, 0x1

    .line 64
    :try_start_0
    sget-object v2, Lcom/alibaba/ailabs/genie/second/utils/GsonUtils;->ourGSON:Lcom/google/gson/Gson;

    invoke-virtual {v2, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 66
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/utils/ContextUtils;->get()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/alibaba/ailabs/genie/second/utils/ContextUtils;->get()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/second/gcs/GCSConst;->getDomain(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/ailabs/ipc/Router;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/ailabs/ipc/Router;

    move-result-object v2

    const-string v3, "com.alibaba.ailabs.genie.gcs.mtop"

    .line 67
    invoke-virtual {v2, v3}, Lcom/alibaba/ailabs/ipc/Router;->getServer(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    .line 68
    invoke-static {v2}, Lcom/alibaba/ailabs/ipc/ICommu$Stub;->asInterface(Landroid/os/IBinder;)Lcom/alibaba/ailabs/ipc/ICommu;

    move-result-object v2

    const/4 v3, 0x0

    .line 69
    invoke-static {v3, p0, p1}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->getBundle(Landroid/os/Parcelable;Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object p0

    const/4 v3, 0x0

    .line 71
    invoke-interface {v2, v3, p0}, Lcom/alibaba/ailabs/ipc/ICommu;->onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    .line 73
    invoke-static {p0}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->getBoolean(Landroid/os/Bundle;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 75
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    :goto_0
    invoke-static {v0}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSBaseCallback;->onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;

    :cond_0
    return-void

    :goto_1
    invoke-static {v0}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSBaseCallback;->onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;

    throw p0
.end method


# virtual methods
.method public asyncComRequest(Lmtopsdk/mtop/domain/MtopRequest;Ljava/lang/String;Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$OnComResponseListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 163
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/DefaultGlobalMtopSetting;->getMtopConfig()Lcom/alibaba/ailabs/genie/second/config/MtopConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/config/MtopConfig;->getTtid()Ljava/lang/String;

    move-result-object v0

    .line 162
    invoke-static {p1, v0}, Lcom/taobao/tao/remotebusiness/RemoteBusiness;->build(Lmtopsdk/mtop/domain/MtopRequest;Ljava/lang/String;)Lcom/taobao/tao/remotebusiness/RemoteBusiness;

    move-result-object p1

    .line 164
    sget-object v0, Lmtopsdk/mtop/domain/ProtocolEnum;->HTTPSECURE:Lmtopsdk/mtop/domain/ProtocolEnum;

    invoke-virtual {p1, v0}, Lcom/taobao/tao/remotebusiness/RemoteBusiness;->protocol(Lmtopsdk/mtop/domain/ProtocolEnum;)Lcom/taobao/tao/remotebusiness/MtopBusiness;

    const-string v0, "post"

    .line 165
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 166
    sget-object p2, Lmtopsdk/mtop/domain/MethodEnum;->POST:Lmtopsdk/mtop/domain/MethodEnum;

    invoke-virtual {p1, p2}, Lcom/taobao/tao/remotebusiness/RemoteBusiness;->reqMethod(Lmtopsdk/mtop/domain/MethodEnum;)Lcom/taobao/tao/remotebusiness/MtopBusiness;

    goto :goto_0

    .line 168
    :cond_0
    sget-object p2, Lmtopsdk/mtop/domain/MethodEnum;->GET:Lmtopsdk/mtop/domain/MethodEnum;

    invoke-virtual {p1, p2}, Lcom/taobao/tao/remotebusiness/RemoteBusiness;->reqMethod(Lmtopsdk/mtop/domain/MethodEnum;)Lcom/taobao/tao/remotebusiness/MtopBusiness;

    .line 170
    :goto_0
    new-instance p2, Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$2;

    invoke-direct {p2, p0, p3}, Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$2;-><init>(Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper;Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$OnComResponseListener;)V

    invoke-virtual {p1, p2}, Lcom/taobao/tao/remotebusiness/RemoteBusiness;->registerListener(Lcom/taobao/tao/remotebusiness/IRemoteListener;)Lcom/taobao/tao/remotebusiness/MtopBusiness;

    .line 220
    invoke-virtual {p1}, Lcom/taobao/tao/remotebusiness/RemoteBusiness;->startRequest()V

    return-void
.end method

.method public asyncRequestApi(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;ILjava/lang/Object;)V
    .locals 7
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
            "I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 96
    invoke-static {}, Lcom/alibaba/ailabs/tg/utils/LogUtils;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Async Request] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/alibaba/ailabs/tg/utils/ObjectOutputFormatUtils;->getString(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/tg/utils/LogUtils;->i(Ljava/lang/String;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 103
    new-instance v0, Lcom/alibaba/ailabs/tg/mtop/OnResponseListenerProxy;

    invoke-direct {v0, p3}, Lcom/alibaba/ailabs/tg/mtop/OnResponseListenerProxy;-><init>(Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 106
    :goto_0
    invoke-static {}, Lcom/alibaba/ailabs/tg/mtop/MtopProcessorManager;->getInstance()Lcom/alibaba/ailabs/tg/mtop/MtopProcessorManager;

    move-result-object v1

    .line 107
    invoke-virtual {v1, p1, p2, v0, p4}, Lcom/alibaba/ailabs/tg/mtop/MtopProcessorManager;->handleBeforeRequestProcessors(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;I)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 113
    :cond_2
    new-instance v4, Lcom/alibaba/ailabs/tg/mtop/MtopCommonListener;

    invoke-direct {v4, p1, p2, p3}, Lcom/alibaba/ailabs/tg/mtop/MtopCommonListener;-><init>(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;)V

    .line 115
    new-instance p3, Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$1;

    move-object v1, p3

    move-object v2, p0

    move-object v3, p2

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$1;-><init>(Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper;Ljava/lang/Class;Lcom/alibaba/ailabs/tg/mtop/MtopCommonListener;ILjava/lang/Object;)V

    .line 150
    invoke-static {p1, p3}, Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper;->send(Lmtopsdk/mtop/domain/IMTOPDataObject;Lcom/alibaba/ailabs/genie/second/gcs/service/GCSBaseCallback;)V

    return-void

    :cond_3
    const-string p1, "[asyncRequestApi] request or outClass or listener is null, throw Exception !!!"

    .line 93
    invoke-static {p1}, Lcom/alibaba/ailabs/tg/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 94
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "request or outClass or listener can not be null !!!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
