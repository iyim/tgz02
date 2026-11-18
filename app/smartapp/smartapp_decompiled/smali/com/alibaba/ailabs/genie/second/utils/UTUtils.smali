.class public Lcom/alibaba/ailabs/genie/second/utils/UTUtils;
.super Ljava/lang/Object;
.source "UTUtils.java"


# static fields
.field public static final PAGE_NAME_COLD_START:Ljava/lang/String; = "cold_start"

.field public static final PAGE_NAME_HOT_START:Ljava/lang/String; = "hot_start"

.field public static final PAGE_NAME_IMAGE_SIZE:Ljava/lang/String; = "img_size"

.field public static final SPM:Ljava/lang/String; = "spm"

.field public static final SPM_CNT:Ljava/lang/String; = "spm-cnt"

.field public static final TAG:Ljava/lang/String; = "UTUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000()Lcom/alibaba/ailabs/genie/second/gcs/aidl/IUTInterface;
    .locals 1

    .line 22
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->getUTInterface()Lcom/alibaba/ailabs/genie/second/gcs/aidl/IUTInterface;

    move-result-object v0

    return-object v0
.end method

.method public static addDefaultProperties(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "from"

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string/jumbo v1, "ro.product.model"

    .line 226
    invoke-static {v1}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 227
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "AILABS_S1"

    :cond_1
    const-string v2, "_"

    .line 231
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string v2, "biz_type"

    const/4 v3, 0x0

    .line 233
    aget-object v3, v1, v3

    invoke-interface {p0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "biz_group"

    const/4 v3, 0x1

    .line 234
    aget-object v1, v1, v3

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "model"

    const-string v2, "persist.sys.is.child.mode"

    .line 236
    invoke-static {v2}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "uuid"

    const-string/jumbo v2, "ro.genie.uuid"

    .line 237
    invoke-static {v2}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 240
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "touch_screen"

    .line 241
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v0, "ailabs_dataflag"

    const-string v1, "1"

    .line 244
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getAuthInfo()Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;

    move-result-object v0

    .line 247
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "user_id"

    .line 248
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/utils/ContextUtils;->get()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->getTBUserData(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/TBUserData;

    move-result-object v0

    const-string/jumbo v1, "tb_user_id"

    .line 250
    iget-object v0, v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/TBUserData;->tbUserId:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "UTUtils"

    const-string v1, "addDefaultProperties: "

    .line 252
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static controlHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 114
    new-instance p2, Lcom/alibaba/ailabs/genie/second/utils/UTUtils$3;

    invoke-direct {p2, p0, p1, v0}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils$3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/taskpool/NetworkTaskPool;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static customHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 90
    new-instance p2, Lcom/alibaba/ailabs/genie/second/utils/UTUtils$2;

    invoke-direct {p2, p0, p1, v0}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/taskpool/NetworkTaskPool;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static customPageHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 63
    new-instance p2, Lcom/alibaba/ailabs/genie/second/utils/UTUtils$1;

    invoke-direct {p2, p0, p1, v0}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/taskpool/NetworkTaskPool;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getSystemProperties(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.os.SystemProperties"

    .line 258
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    const/4 v3, 0x2

    .line 259
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 260
    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v6

    const-string p0, ""

    aput-object p0, v2, v7

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 263
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method private static getUTInterface()Lcom/alibaba/ailabs/genie/second/gcs/aidl/IUTInterface;
    .locals 2

    .line 44
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/utils/ContextUtils;->get()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/ailabs/genie/second/utils/ContextUtils;->get()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/second/gcs/GCSConst;->getDomain(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/ipc/Router;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/ailabs/ipc/Router;

    move-result-object v0

    const-string v1, "com.alibaba.ailabs.genie.gcs.ut"

    .line 45
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/ipc/Router;->getServer(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 47
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/second/gcs/aidl/IUTInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/alibaba/ailabs/genie/second/gcs/aidl/IUTInterface;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static manualExposure(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 136
    new-instance p2, Lcom/alibaba/ailabs/genie/second/utils/UTUtils$4;

    invoke-direct {p2, p0, p1, v0}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils$4;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/taskpool/NetworkTaskPool;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static manualExposureAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 162
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5, p4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 164
    new-instance p4, Lcom/alibaba/ailabs/genie/second/utils/UTUtils$5;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils$5;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {p4}, Lcom/alibaba/ailabs/genie/taskpool/NetworkTaskPool;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static originalHit(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 184
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 186
    new-instance p0, Lcom/alibaba/ailabs/genie/second/utils/UTUtils$6;

    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils$6;-><init>(Ljava/util/Map;)V

    invoke-static {p0}, Lcom/alibaba/ailabs/genie/taskpool/NetworkTaskPool;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static test(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 207
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->getUTInterface()Lcom/alibaba/ailabs/genie/second/gcs/aidl/IUTInterface;

    move-result-object v0

    .line 209
    invoke-interface {v0, p0, p1}, Lcom/alibaba/ailabs/genie/second/gcs/aidl/IUTInterface;->test(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 211
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
