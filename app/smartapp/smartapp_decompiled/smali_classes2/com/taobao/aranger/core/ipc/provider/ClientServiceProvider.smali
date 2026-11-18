.class public Lcom/taobao/aranger/core/ipc/provider/ClientServiceProvider;
.super Landroid/os/Binder;
.source "ClientServiceProvider.java"

# interfaces
.implements Lcom/taobao/aranger/intf/IClientService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/aranger/core/ipc/provider/ClientServiceProvider$CallbackRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ClientServiceProvider"

.field private static volatile sInstance:Lcom/taobao/aranger/core/ipc/provider/ClientServiceProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 56
    sget-object v0, Lcom/taobao/aranger/constant/Constants;->CLIENT_SERVICE_DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lcom/taobao/aranger/core/ipc/provider/ClientServiceProvider;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 38
    sget-object v0, Lcom/taobao/aranger/core/ipc/provider/ClientServiceProvider;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getClientService()Lcom/taobao/aranger/core/ipc/provider/ClientServiceProvider;
    .locals 2

    .line 45
    sget-object v0, Lcom/taobao/aranger/core/ipc/provider/ClientServiceProvider;->sInstance:Lcom/taobao/aranger/core/ipc/provider/ClientServiceProvider;

    if-nez v0, :cond_1

    .line 46
    const-class v0, Lcom/taobao/aranger/core/ipc/provider/ClientServiceProvider;

    monitor-enter v0

    .line 47
    :try_start_0
    sget-object v1, Lcom/taobao/aranger/core/ipc/provider/ClientServiceProvider;->sInstance:Lcom/taobao/aranger/core/ipc/provider/ClientServiceProvider;

    if-nez v1, :cond_0

    .line 48
    new-instance v1, Lcom/taobao/aranger/core/ipc/provider/ClientServiceProvider;

    invoke-direct {v1}, Lcom/taobao/aranger/core/ipc/provider/ClientServiceProvider;-><init>()V

    sput-object v1, Lcom/taobao/aranger/core/ipc/provider/ClientServiceProvider;->sInstance:Lcom/taobao/aranger/core/ipc/provider/ClientServiceProvider;

    .line 50
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 52
    :cond_1
    :goto_0
    sget-object v0, Lcom/taobao/aranger/core/ipc/provider/ClientServiceProvider;->sInstance:Lcom/taobao/aranger/core/ipc/provider/ClientServiceProvider;

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .param p2    # Landroid/os/Parcel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const/4 p3, 0x4

    if-eq p1, p3, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 88
    new-instance p2, Lcom/taobao/aranger/core/ipc/provider/ClientServiceProvider$2;

    invoke-direct {p2, p0, p1}, Lcom/taobao/aranger/core/ipc/provider/ClientServiceProvider$2;-><init>(Lcom/taobao/aranger/core/ipc/provider/ClientServiceProvider;Ljava/util/List;)V

    invoke-static {p2}, Lcom/taobao/aranger/utils/IPCThreadCaller;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return v1

    .line 63
    :cond_1
    sget-object p1, Lcom/taobao/aranger/core/entity/Callback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/aranger/core/entity/Callback;

    if-ne p4, v1, :cond_2

    .line 65
    new-instance p2, Lcom/taobao/aranger/core/ipc/provider/ClientServiceProvider$1;

    invoke-direct {p2, p0, p1}, Lcom/taobao/aranger/core/ipc/provider/ClientServiceProvider$1;-><init>(Lcom/taobao/aranger/core/ipc/provider/ClientServiceProvider;Lcom/taobao/aranger/core/entity/Callback;)V

    invoke-static {p2}, Lcom/taobao/aranger/utils/IPCThreadCaller;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 73
    :cond_2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/taobao/aranger/core/ipc/provider/ClientServiceProvider;->sendCallback(Lcom/taobao/aranger/core/entity/Callback;)Lcom/taobao/aranger/core/entity/Reply;

    move-result-object p2

    .line 74
    invoke-virtual {p1}, Lcom/taobao/aranger/core/entity/Callback;->getMethodWrapper()Lcom/taobao/aranger/core/wrapper/MethodWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/aranger/core/wrapper/MethodWrapper;->getReturnType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 75
    invoke-virtual {p2}, Lcom/taobao/aranger/core/entity/Reply;->isError()Z

    move-result p1

    if-nez p1, :cond_3

    .line 76
    invoke-virtual {p2}, Lcom/taobao/aranger/core/entity/Reply;->getFlowParameterWrappers()[Lcom/taobao/aranger/core/wrapper/ParameterWrapper;

    move-result-object p1

    if-eqz p1, :cond_4

    :cond_3
    const/4 p1, 0x0

    .line 77
    invoke-virtual {p2, p3, p1}, Lcom/taobao/aranger/core/entity/Reply;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 80
    invoke-static {}, Lcom/taobao/aranger/core/entity/Reply;->obtain()Lcom/taobao/aranger/core/entity/Reply;

    move-result-object p2

    const/16 v0, 0x8

    .line 81
    invoke-virtual {p2, v0}, Lcom/taobao/aranger/core/entity/Reply;->setErrorCode(I)Lcom/taobao/aranger/core/entity/Reply;

    move-result-object p2

    .line 82
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/taobao/aranger/core/entity/Reply;->setErrorMessage(Ljava/lang/String;)Lcom/taobao/aranger/core/entity/Reply;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Lcom/taobao/aranger/core/entity/Reply;->writeToParcel(Landroid/os/Parcel;I)V

    :cond_4
    :goto_1
    return v1
.end method

.method public recycle(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 204
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 205
    invoke-static {}, Lcom/taobao/aranger/utils/CallbackManager;->getInstance()Lcom/taobao/aranger/utils/CallbackManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/taobao/aranger/utils/CallbackManager;->removeCallback(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public sendCallback(Lcom/taobao/aranger/core/entity/Callback;)Lcom/taobao/aranger/core/entity/Reply;
    .locals 12

    .line 115
    invoke-static {}, Lcom/taobao/aranger/utils/CallbackManager;->getInstance()Lcom/taobao/aranger/utils/CallbackManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/taobao/aranger/core/entity/Callback;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/aranger/utils/CallbackManager;->getCallback(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 117
    invoke-static {}, Lcom/taobao/aranger/core/entity/Reply;->obtain()Lcom/taobao/aranger/core/entity/Reply;

    move-result-object p1

    const/4 v0, 0x6

    .line 118
    invoke-virtual {p1, v0}, Lcom/taobao/aranger/core/entity/Reply;->setErrorCode(I)Lcom/taobao/aranger/core/entity/Reply;

    move-result-object p1

    const-string v0, "can\'t find callback in current process"

    .line 119
    invoke-virtual {p1, v0}, Lcom/taobao/aranger/core/entity/Reply;->setErrorMessage(Ljava/lang/String;)Lcom/taobao/aranger/core/entity/Reply;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v1, 0x0

    .line 123
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 124
    invoke-static {}, Lcom/taobao/aranger/utils/TypeCenter;->getInstance()Lcom/taobao/aranger/utils/TypeCenter;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1}, Lcom/taobao/aranger/core/entity/Callback;->getMethodWrapper()Lcom/taobao/aranger/core/wrapper/MethodWrapper;

    move-result-object v5

    invoke-virtual {p1}, Lcom/taobao/aranger/core/entity/Callback;->getParameterWrappers()[Lcom/taobao/aranger/core/wrapper/ParameterWrapper;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/taobao/aranger/utils/TypeCenter;->getMethod(Ljava/lang/Class;Lcom/taobao/aranger/core/wrapper/MethodWrapper;[Lcom/taobao/aranger/core/wrapper/ParameterWrapper;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 125
    invoke-virtual {p1}, Lcom/taobao/aranger/core/entity/Callback;->getParameterWrappers()[Lcom/taobao/aranger/core/wrapper/ParameterWrapper;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/taobao/aranger/utils/ParameterTransformer;->unWrapperParameters([Lcom/taobao/aranger/core/wrapper/ParameterWrapper;Ljava/util/List;)[Ljava/lang/Object;

    move-result-object v4

    .line 126
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v5

    .line 128
    array-length v6, v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v7, v6, :cond_2

    aget-object v9, v5, v7

    .line 129
    invoke-virtual {v9}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v10

    const-class v11, Lcom/taobao/aranger/annotation/type/Callback;

    invoke-static {v10, v11}, Lcom/taobao/aranger/utils/TypeUtils;->arrayContainsAnnotation([Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 130
    invoke-static {}, Lcom/taobao/aranger/utils/TypeCenter;->getInstance()Lcom/taobao/aranger/utils/TypeCenter;

    move-result-object v8

    invoke-virtual {p1}, Lcom/taobao/aranger/core/entity/Callback;->getMethodWrapper()Lcom/taobao/aranger/core/wrapper/MethodWrapper;

    move-result-object v10

    invoke-virtual {p1}, Lcom/taobao/aranger/core/entity/Callback;->getParameterWrappers()[Lcom/taobao/aranger/core/wrapper/ParameterWrapper;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Lcom/taobao/aranger/utils/TypeCenter;->getMethod(Ljava/lang/Class;Lcom/taobao/aranger/core/wrapper/MethodWrapper;[Lcom/taobao/aranger/core/wrapper/ParameterWrapper;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 131
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v8

    const-class v9, Lcom/taobao/aranger/annotation/method/UIThread;

    invoke-static {v8, v9}, Lcom/taobao/aranger/utils/TypeUtils;->arrayContainsAnnotation([Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Z

    move-result v8

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 137
    :cond_2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5
    :try_end_0
    .catch Lcom/taobao/aranger/exception/IPCException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v6, 0x1

    if-ne p1, v5, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    xor-int v5, p1, v8

    const/4 v7, 0x4

    const/4 v8, 0x0

    if-eqz v5, :cond_7

    .line 142
    :try_start_1
    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v5, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 143
    new-instance v9, Lcom/taobao/aranger/core/ipc/provider/ClientServiceProvider$CallbackRunnable;

    invoke-direct {v9, v5, v3, v0, v4}, Lcom/taobao/aranger/core/ipc/provider/ClientServiceProvider$CallbackRunnable;-><init>(Ljava/util/concurrent/CountDownLatch;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V

    if-eqz p1, :cond_4

    .line 146
    invoke-static {v9}, Lcom/taobao/aranger/utils/IPCThreadCaller;->execute(Ljava/lang/Runnable;)V

    const-wide/16 v10, 0x1

    .line 147
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v10, v11, p1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    goto :goto_2

    .line 149
    :cond_4
    invoke-static {v6, v9}, Lcom/taobao/aranger/utils/IPCThreadCaller;->post(ZLjava/lang/Runnable;)V

    .line 150
    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 152
    :goto_2
    invoke-virtual {v9}, Lcom/taobao/aranger/core/ipc/provider/ClientServiceProvider$CallbackRunnable;->getException()Ljava/lang/Exception;

    move-result-object p1

    if-nez p1, :cond_6

    .line 153
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 154
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    new-array v8, p1, [Lcom/taobao/aranger/core/wrapper/ParameterWrapper;

    .line 155
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 156
    invoke-static {}, Lcom/taobao/aranger/core/wrapper/ParameterWrapper;->obtain()Lcom/taobao/aranger/core/wrapper/ParameterWrapper;

    move-result-object v3

    .line 157
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v5, v4, v5

    invoke-virtual {v3, v5}, Lcom/taobao/aranger/core/wrapper/ParameterWrapper;->setData(Ljava/lang/Object;)Lcom/taobao/aranger/core/wrapper/ParameterWrapper;

    move-result-object v3

    aput-object v3, v8, v0

    goto :goto_3

    .line 160
    :cond_5
    invoke-static {}, Lcom/taobao/aranger/core/entity/Reply;->obtain()Lcom/taobao/aranger/core/entity/Reply;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcom/taobao/aranger/core/entity/Reply;->setFlowParameterWrappers([Lcom/taobao/aranger/core/wrapper/ParameterWrapper;)Lcom/taobao/aranger/core/entity/Reply;

    move-result-object p1

    invoke-virtual {v9}, Lcom/taobao/aranger/core/ipc/provider/ClientServiceProvider$CallbackRunnable;->getResult()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/taobao/aranger/core/entity/Reply;->setResult(Ljava/lang/Object;)Lcom/taobao/aranger/core/entity/Reply;

    move-result-object p1

    return-object p1

    .line 162
    :cond_6
    invoke-static {}, Lcom/taobao/aranger/core/entity/Reply;->obtain()Lcom/taobao/aranger/core/entity/Reply;

    move-result-object p1

    .line 163
    invoke-virtual {p1, v7}, Lcom/taobao/aranger/core/entity/Reply;->setErrorCode(I)Lcom/taobao/aranger/core/entity/Reply;

    move-result-object p1

    .line 164
    invoke-virtual {v9}, Lcom/taobao/aranger/core/ipc/provider/ClientServiceProvider$CallbackRunnable;->getException()Ljava/lang/Exception;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/taobao/aranger/core/entity/Reply;->setErrorMessage(Ljava/lang/String;)Lcom/taobao/aranger/core/entity/Reply;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/taobao/aranger/exception/IPCException; {:try_start_1 .. :try_end_1} :catch_2

    return-object p1

    :catch_0
    move-exception p1

    .line 167
    :try_start_2
    invoke-static {}, Lcom/taobao/aranger/core/entity/Reply;->obtain()Lcom/taobao/aranger/core/entity/Reply;

    move-result-object v0

    const/4 v2, 0x7

    .line 168
    invoke-virtual {v0, v2}, Lcom/taobao/aranger/core/entity/Reply;->setErrorCode(I)Lcom/taobao/aranger/core/entity/Reply;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callback invoke error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/taobao/aranger/core/entity/Reply;->setErrorMessage(Ljava/lang/String;)Lcom/taobao/aranger/core/entity/Reply;

    move-result-object p1
    :try_end_2
    .catch Lcom/taobao/aranger/exception/IPCException; {:try_start_2 .. :try_end_2} :catch_2

    return-object p1

    .line 173
    :cond_7
    :try_start_3
    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/taobao/aranger/exception/IPCException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v0, p1

    move-object p1, v8

    goto :goto_4

    :catch_1
    move-exception p1

    move-object v0, v8

    :goto_4
    if-nez p1, :cond_9

    .line 182
    :try_start_4
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8

    .line 183
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    new-array v8, p1, [Lcom/taobao/aranger/core/wrapper/ParameterWrapper;

    .line 184
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 185
    invoke-static {}, Lcom/taobao/aranger/core/wrapper/ParameterWrapper;->obtain()Lcom/taobao/aranger/core/wrapper/ParameterWrapper;

    move-result-object v5

    .line 186
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v6, v4, v6

    invoke-virtual {v5, v6}, Lcom/taobao/aranger/core/wrapper/ParameterWrapper;->setData(Ljava/lang/Object;)Lcom/taobao/aranger/core/wrapper/ParameterWrapper;

    move-result-object v5

    aput-object v5, v8, v3

    goto :goto_5

    .line 189
    :cond_8
    invoke-static {}, Lcom/taobao/aranger/core/entity/Reply;->obtain()Lcom/taobao/aranger/core/entity/Reply;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcom/taobao/aranger/core/entity/Reply;->setFlowParameterWrappers([Lcom/taobao/aranger/core/wrapper/ParameterWrapper;)Lcom/taobao/aranger/core/entity/Reply;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/taobao/aranger/core/entity/Reply;->setResult(Ljava/lang/Object;)Lcom/taobao/aranger/core/entity/Reply;

    move-result-object p1

    return-object p1

    .line 179
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 180
    new-instance v0, Lcom/taobao/aranger/exception/IPCException;

    invoke-direct {v0, v7, p1}, Lcom/taobao/aranger/exception/IPCException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catch Lcom/taobao/aranger/exception/IPCException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception p1

    .line 191
    sget-object v0, Lcom/taobao/aranger/core/ipc/provider/ClientServiceProvider;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "[sendCallback]"

    invoke-static {v0, v2, p1, v1}, Lcom/taobao/aranger/logs/IPCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 192
    invoke-static {}, Lcom/taobao/aranger/core/entity/Reply;->obtain()Lcom/taobao/aranger/core/entity/Reply;

    move-result-object v0

    .line 193
    invoke-virtual {p1}, Lcom/taobao/aranger/exception/IPCException;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/taobao/aranger/core/entity/Reply;->setErrorCode(I)Lcom/taobao/aranger/core/entity/Reply;

    move-result-object v0

    .line 194
    invoke-virtual {p1}, Lcom/taobao/aranger/exception/IPCException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/taobao/aranger/core/entity/Reply;->setErrorMessage(Ljava/lang/String;)Lcom/taobao/aranger/core/entity/Reply;

    move-result-object p1

    return-object p1
.end method
