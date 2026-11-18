.class public final Lcom/alibaba/ailabs/genie/second/MtopClient;
.super Ljava/lang/Object;
.source "MtopClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;,
        Lcom/alibaba/ailabs/genie/second/MtopClient$RawCallback;,
        Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "mtop"


# instance fields
.field private mBuilder:Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;


# direct methods
.method private constructor <init>(Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/MtopClient;->mBuilder:Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;Lcom/alibaba/ailabs/genie/second/MtopClient$1;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/second/MtopClient;-><init>(Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/second/MtopClient;Lmtopsdk/mtop/common/MtopFinishEvent;)Z
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/second/MtopClient;->handleRawResponse(Lmtopsdk/mtop/common/MtopFinishEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lmtopsdk/mtop/common/MtopFinishEvent;)Z
    .locals 0

    .line 46
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/second/MtopClient;->isResponseNull(Lmtopsdk/mtop/common/MtopFinishEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/second/MtopClient;)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/second/MtopClient;->mBuilder:Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    return-object p0
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/genie/second/MtopClient;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/second/MtopClient;->onError(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private handleRawResponse(Lmtopsdk/mtop/common/MtopFinishEvent;)Z
    .locals 6

    const-string v0, "EC00000"

    .line 143
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/second/MtopClient;->mBuilder:Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    if-eqz v1, :cond_9

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->rawCallback:Lcom/alibaba/ailabs/genie/second/MtopClient$RawCallback;

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v1, 0x1

    .line 146
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/second/MtopClient;->isResponseNull(Lmtopsdk/mtop/common/MtopFinishEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 147
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/second/MtopClient;->mBuilder:Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->rawCallback:Lcom/alibaba/ailabs/genie/second/MtopClient$RawCallback;

    const-string v2, "MtopFinishEvent is null"

    invoke-interface {p1, v0, v2}, Lcom/alibaba/ailabs/genie/second/MtopClient$RawCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 151
    :cond_1
    invoke-virtual {p1}, Lmtopsdk/mtop/common/MtopFinishEvent;->getMtopResponse()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v2

    .line 152
    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->isApiSuccess()Z

    move-result v3

    if-nez v3, :cond_2

    .line 153
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/second/MtopClient;->mBuilder:Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->rawCallback:Lcom/alibaba/ailabs/genie/second/MtopClient$RawCallback;

    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->getMappingCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->getRetMsg()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v2}, Lcom/alibaba/ailabs/genie/second/MtopClient$RawCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 157
    :cond_2
    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->getBytedata()[B

    move-result-object v2

    .line 158
    array-length v3, v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "byte data is null"

    if-gtz v3, :cond_3

    .line 159
    :try_start_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/second/MtopClient;->mBuilder:Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->rawCallback:Lcom/alibaba/ailabs/genie/second/MtopClient$RawCallback;

    invoke-interface {p1, v0, v4}, Lcom/alibaba/ailabs/genie/second/MtopClient$RawCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 163
    :cond_3
    new-instance v3, Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v2, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 164
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 165
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/second/MtopClient;->mBuilder:Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->rawCallback:Lcom/alibaba/ailabs/genie/second/MtopClient$RawCallback;

    invoke-interface {p1, v0, v4}, Lcom/alibaba/ailabs/genie/second/MtopClient$RawCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 169
    :cond_4
    const-class v2, Lcom/alibaba/ailabs/genie/second/mtop/response/RawResponse;

    invoke-static {v3, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/genie/second/mtop/response/RawResponse;

    .line 171
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/second/MtopClient;->mBuilder:Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    invoke-static {v4}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->access$600(Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 172
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/alibaba/ailabs/genie/second/mtop/response/RawResponse;->setDataHash(I)Lcom/alibaba/ailabs/genie/second/mtop/response/RawResponse;

    .line 174
    :cond_5
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/second/MtopClient;->mBuilder:Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    invoke-static {v4}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->access$700(Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 175
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/analytics/utils/MD5Utils;->getMd5Hex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/ailabs/genie/second/mtop/response/RawResponse;->setDataMd5(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/second/mtop/response/RawResponse;

    .line 178
    :cond_6
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/second/MtopClient;->mBuilder:Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->access$800(Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 179
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/second/utils/MtopUtil;->getTraceId(Lmtopsdk/mtop/common/MtopFinishEvent;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/RawResponse;->setTraceId(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/second/mtop/response/RawResponse;

    .line 182
    :cond_7
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/second/MtopClient;->mBuilder:Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->access$900(Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 183
    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/second/mtop/response/RawResponse;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 184
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/second/MtopClient;->mBuilder:Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->rawCallback:Lcom/alibaba/ailabs/genie/second/MtopClient$RawCallback;

    const-string/jumbo v2, "response data is null"

    invoke-interface {p1, v0, v2}, Lcom/alibaba/ailabs/genie/second/MtopClient$RawCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 189
    :cond_8
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/second/MtopClient;->mBuilder:Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->rawCallback:Lcom/alibaba/ailabs/genie/second/MtopClient$RawCallback;

    invoke-interface {p1, v2}, Lcom/alibaba/ailabs/genie/second/MtopClient$RawCallback;->onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/RawResponse;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 191
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/second/MtopClient;->mBuilder:Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->rawCallback:Lcom/alibaba/ailabs/genie/second/MtopClient$RawCallback;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, v0, p1}, Lcom/alibaba/ailabs/genie/second/MtopClient$RawCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_9
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method private static isResponseNull(Lmtopsdk/mtop/common/MtopFinishEvent;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 461
    invoke-virtual {p0}, Lmtopsdk/mtop/common/MtopFinishEvent;->getMtopResponse()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private onError(Ljava/lang/String;)V
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/MtopClient;->mBuilder:Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    if-nez v0, :cond_0

    return-void

    .line 200
    :cond_0
    iget-object v0, v0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->rawCallback:Lcom/alibaba/ailabs/genie/second/MtopClient$RawCallback;

    const-string v1, "EC00000"

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/MtopClient;->mBuilder:Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->rawCallback:Lcom/alibaba/ailabs/genie/second/MtopClient$RawCallback;

    invoke-interface {v0, v1, p1}, Lcom/alibaba/ailabs/genie/second/MtopClient$RawCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/MtopClient;->mBuilder:Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->callback:Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;

    if-eqz v0, :cond_2

    .line 206
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/MtopClient;->mBuilder:Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->callback:Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;

    invoke-interface {v0, v1, p1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private static send(Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;Lcom/alibaba/ailabs/genie/second/gcs/service/GCSBaseCallback;)V
    .locals 5

    const-string v0, "get server fail"

    const/4 v1, 0x1

    .line 71
    :try_start_0
    sget-object v2, Lcom/alibaba/ailabs/genie/second/utils/GsonUtils;->ourGSON:Lcom/google/gson/Gson;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->request:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 73
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/utils/ContextUtils;->get()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/alibaba/ailabs/genie/second/utils/ContextUtils;->get()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/ailabs/genie/second/gcs/GCSConst;->getDomain(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/ailabs/ipc/Router;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/ailabs/ipc/Router;

    move-result-object v3

    const-string v4, "com.alibaba.ailabs.genie.gcs.mtop"

    .line 74
    invoke-virtual {v3, v4}, Lcom/alibaba/ailabs/ipc/Router;->getServer(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    .line 75
    invoke-static {v3}, Lcom/alibaba/ailabs/ipc/ICommu$Stub;->asInterface(Landroid/os/IBinder;)Lcom/alibaba/ailabs/ipc/ICommu;

    move-result-object v3

    const/4 v4, 0x0

    .line 76
    invoke-static {v4, v2, p1}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->getBundle(Landroid/os/Parcelable;Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object v2

    .line 78
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->access$000(Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;)Lmtopsdk/mtop/domain/MethodEnum;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v4, "KEY_BUNDLE_MTOP_METHOD"

    .line 80
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MethodEnum;->getMethod()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, v4, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    .line 83
    invoke-interface {v3, p0, v2}, Lcom/alibaba/ailabs/ipc/ICommu;->onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    .line 85
    invoke-static {p0}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->getBoolean(Landroid/os/Bundle;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 87
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    :goto_0
    invoke-static {v0}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSBaseCallback;->onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;

    :cond_1
    return-void

    :goto_1
    invoke-static {v0}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSBaseCallback;->onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;

    throw p0
.end method


# virtual methods
.method public send()Lmtopsdk/mtop/common/ApiID;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/MtopClient;->mBuilder:Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    if-eqz v0, :cond_0

    .line 101
    new-instance v0, Lcom/alibaba/ailabs/genie/second/MtopClient$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/second/MtopClient$1;-><init>(Lcom/alibaba/ailabs/genie/second/MtopClient;)V

    .line 136
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/second/MtopClient;->mBuilder:Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->access$500(Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSBaseCallback;->setIsUiThread(Z)V

    .line 137
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/second/MtopClient;->mBuilder:Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient;->send(Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;Lcom/alibaba/ailabs/genie/second/gcs/service/GCSBaseCallback;)V

    const/4 v0, 0x0

    return-object v0

    .line 99
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "build is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
