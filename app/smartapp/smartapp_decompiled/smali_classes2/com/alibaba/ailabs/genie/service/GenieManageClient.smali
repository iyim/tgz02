.class public Lcom/alibaba/ailabs/genie/service/GenieManageClient;
.super Ljava/lang/Object;
.source "GenieManageClient.java"


# static fields
.field public static final BIND_SERVICE_CHECK_TIMEOUT:J = 0x64L

.field public static final BIND_SERVICE_TIMEOUT:J = 0x3e8L

.field private static final RETRY_TIMEOUT:[J

.field private static final TAG:Ljava/lang/String; = "GenieManageClient"

.field private static mGenieManageServerClient:Lcom/alibaba/ailabs/genie/service/GenieManageClient;


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mGenieManageImpl:Lcom/alibaba/ailabs/genie/service/IGenieManageInterface;

.field private mHandler:Landroid/os/Handler;

.field private mRetryIndex:I

.field private mRetryRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lcom/alibaba/ailabs/genie/service/GenieManageClient;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/service/GenieManageClient;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/service/GenieManageClient;->mGenieManageServerClient:Lcom/alibaba/ailabs/genie/service/GenieManageClient;

    const/4 v0, 0x3

    .line 39
    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alibaba/ailabs/genie/service/GenieManageClient;->RETRY_TIMEOUT:[J

    return-void

    :array_0
    .array-data 8
        0xbb8
        0x1f40
        0x3a98
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/alibaba/ailabs/genie/service/GenieManageClient;->mRetryIndex:I

    .line 265
    new-instance v0, Lcom/alibaba/ailabs/genie/service/GenieManageClient$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/service/GenieManageClient$1;-><init>(Lcom/alibaba/ailabs/genie/service/GenieManageClient;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/service/GenieManageClient;->mRetryRunnable:Ljava/lang/Runnable;

    .line 355
    new-instance v0, Lcom/alibaba/ailabs/genie/service/GenieManageClient$2;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/service/GenieManageClient$2;-><init>(Lcom/alibaba/ailabs/genie/service/GenieManageClient;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/service/GenieManageClient;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$008(Lcom/alibaba/ailabs/genie/service/GenieManageClient;)I
    .locals 2

    .line 23
    iget v0, p0, Lcom/alibaba/ailabs/genie/service/GenieManageClient;->mRetryIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/ailabs/genie/service/GenieManageClient;->mRetryIndex:I

    return v0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/service/GenieManageClient;Lcom/alibaba/ailabs/genie/service/IGenieManageInterface;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/service/GenieManageClient;->setGenieManageService(Lcom/alibaba/ailabs/genie/service/IGenieManageInterface;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/service/GenieManageClient;)Lcom/alibaba/ailabs/genie/service/IGenieManageInterface;
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/service/GenieManageClient;->getGenieManageInterface()Lcom/alibaba/ailabs/genie/service/IGenieManageInterface;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/service/GenieManageClient;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/service/GenieManageClient;->retryBindService()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private getBundleVersions()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    const-string v0, "."

    const-string v1, ":"

    const-string v2, "com.alibaba.ailabs.genie.smartapp.BuildConfig"

    .line 94
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const-string v4, "NAME_MAP"

    .line 96
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 98
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 102
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 103
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "smartappBundleVersions="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_1
    const-string v6, "null"

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "GenieManageClient"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_a

    .line 104
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v5

    if-nez v5, :cond_2

    goto/16 :goto_4

    .line 108
    :cond_2
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 110
    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 111
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    if-eqz v3, :cond_3

    .line 112
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 113
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 114
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 115
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 116
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "one bundle groupid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "; version="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    .line 118
    :try_start_0
    invoke-virtual {v5, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 119
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "com.alibaba.ailabs.genie"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 120
    new-instance v7, Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;

    invoke-direct {v7}, Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;-><init>()V

    const-string v8, ""

    .line 122
    invoke-virtual {v3, v0, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 124
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "one bundle groupid,ver:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 128
    invoke-virtual {v5, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;->setAppName(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v5, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;->setPackageName(Ljava/lang/String;)V

    const-string v5, "com.alibaba.ailabs.genie.smartapp_agis"

    .line 132
    invoke-virtual {v7}, Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "com.alibaba.ailabs.genie.assistant"

    .line 133
    invoke-virtual {v7, v5}, Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;->setPackageName(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v7, v8}, Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;->setVersionCode(I)V

    .line 135
    invoke-virtual {v7, v3}, Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;->setVersionName(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    const-string v5, "com.alibaba.ailabs.genie.smartapp_contacts"

    .line 136
    invoke-virtual {v7}, Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "com.alibaba.ailabs.genie.contacts"

    .line 137
    invoke-virtual {v7, v5}, Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;->setPackageName(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v7, v8}, Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;->setVersionCode(I)V

    .line 139
    invoke-virtual {v7, v3}, Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;->setVersionName(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    const-string v5, "com.alibaba.ailabs.genie.smartapp_musicplayer"

    .line 140
    invoke-virtual {v7}, Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "com.alibaba.ailabs.genie.musicplayer"

    .line 141
    invoke-virtual {v7, v5}, Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;->setPackageName(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v7, v8}, Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;->setVersionCode(I)V

    .line 143
    invoke-virtual {v7, v3}, Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;->setVersionName(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    const-string v5, "com.alibaba.ailabs.genie.smartapp_shopping"

    .line 144
    invoke-virtual {v7}, Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v3, "com.alibaba.ailabs.genie.shopping"

    .line 145
    invoke-virtual {v7, v3}, Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;->setPackageName(Ljava/lang/String;)V

    const/16 v3, 0x27d5

    .line 146
    invoke-virtual {v7, v3}, Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;->setVersionCode(I)V

    const-string v3, "1.0.1.97"

    .line 147
    invoke-virtual {v7, v3}, Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;->setVersionName(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    const-string v5, "com.alibaba.ailabs.genie.smartapp_basedomain"

    .line 148
    invoke-virtual {v7}, Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v3, "com.alibaba.ailabs.basedomain"

    .line 149
    invoke-virtual {v7, v3}, Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;->setPackageName(Ljava/lang/String;)V

    const v3, 0x9ce0

    .line 151
    invoke-virtual {v7, v3}, Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;->setVersionCode(I)V

    const-string v3, "4.0.1.60"

    .line 152
    invoke-virtual {v7, v3}, Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;->setVersionName(Ljava/lang/String;)V

    goto :goto_3

    .line 154
    :cond_8
    invoke-virtual {v7, v8}, Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;->setVersionCode(I)V

    .line 155
    invoke-virtual {v7, v3}, Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;->setVersionName(Ljava/lang/String;)V

    .line 158
    :goto_3
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v3

    .line 161
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    :cond_9
    return-object v4

    :cond_a
    :goto_4
    return-object v3
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/service/GenieManageClient;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getGenieManageInterface()Lcom/alibaba/ailabs/genie/service/IGenieManageInterface;
    .locals 2

    .line 288
    const-class v0, Lcom/alibaba/ailabs/genie/service/GenieManageClient;

    monitor-enter v0

    .line 289
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/service/GenieManageClient;->mGenieManageImpl:Lcom/alibaba/ailabs/genie/service/IGenieManageInterface;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 290
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getGenieManageService()Lcom/alibaba/ailabs/genie/service/IGenieManageInterface;
    .locals 1

    const/4 v0, 0x0

    .line 203
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/service/GenieManageClient;->getGenieManageService(Z)Lcom/alibaba/ailabs/genie/service/IGenieManageInterface;

    move-result-object v0

    return-object v0
.end method

.method private getHandler(Z)Landroid/os/Handler;
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/service/GenieManageClient;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 255
    const-class p1, Lcom/alibaba/ailabs/genie/service/GenieManageClient;

    monitor-enter p1

    .line 256
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/service/GenieManageClient;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 257
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/service/GenieManageClient;->mHandler:Landroid/os/Handler;

    .line 259
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 262
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/service/GenieManageClient;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method public static declared-synchronized getInstance()Lcom/alibaba/ailabs/genie/service/GenieManageClient;
    .locals 2

    const-class v0, Lcom/alibaba/ailabs/genie/service/GenieManageClient;

    monitor-enter v0

    .line 51
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/genie/service/GenieManageClient;->mGenieManageServerClient:Lcom/alibaba/ailabs/genie/service/GenieManageClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private retryBindService()V
    .locals 6

    .line 274
    iget v0, p0, Lcom/alibaba/ailabs/genie/service/GenieManageClient;->mRetryIndex:I

    .line 275
    sget-object v1, Lcom/alibaba/ailabs/genie/service/GenieManageClient;->RETRY_TIMEOUT:[J

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v1, 0x1

    .line 278
    invoke-direct {p0, v1}, Lcom/alibaba/ailabs/genie/service/GenieManageClient;->getHandler(Z)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 280
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 281
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/service/GenieManageClient;->mRetryRunnable:Ljava/lang/Runnable;

    sget-object v3, Lcom/alibaba/ailabs/genie/service/GenieManageClient;->RETRY_TIMEOUT:[J

    aget-wide v4, v3, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 284
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "retryBindService: retry bind service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GenieManageClient"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setGenieManageService(Lcom/alibaba/ailabs/genie/service/IGenieManageInterface;)V
    .locals 3

    .line 207
    const-class v0, Lcom/alibaba/ailabs/genie/service/GenieManageClient;

    monitor-enter v0

    .line 208
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/service/GenieManageClient;->mGenieManageImpl:Lcom/alibaba/ailabs/genie/service/IGenieManageInterface;

    if-eq p1, v1, :cond_1

    .line 209
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/service/GenieManageClient;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 211
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/service/GenieManageClient;->mGenieManageImpl:Lcom/alibaba/ailabs/genie/service/IGenieManageInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 213
    :try_start_1
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/service/GenieManageClient;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 215
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 218
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/service/GenieManageClient;->mGenieManageImpl:Lcom/alibaba/ailabs/genie/service/IGenieManageInterface;

    .line 220
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private unbind()V
    .locals 1

    const/4 v0, 0x0

    .line 235
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/service/GenieManageClient;->setGenieManageService(Lcom/alibaba/ailabs/genie/service/IGenieManageInterface;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getBundleVersion()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;",
            ">;"
        }
    .end annotation

    .line 80
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/service/GenieManageClient;->getBundleVersions()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 82
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getGenieManageService(Z)Lcom/alibaba/ailabs/genie/service/IGenieManageInterface;
    .locals 11

    .line 294
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/service/GenieManageClient;->getGenieManageInterface()Lcom/alibaba/ailabs/genie/service/IGenieManageInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 296
    invoke-interface {v0}, Lcom/alibaba/ailabs/genie/service/IGenieManageInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 299
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/service/GenieManageClient;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "GenieManageClient"

    if-nez p1, :cond_2

    const-string p1, "getGenieManageService: context is null"

    .line 302
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 308
    :try_start_0
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "com.alibaba.ailabs.genie.smartapp.manage.service.action"

    .line 309
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "com.alibaba.ailabs.genie.smartapp"

    .line 310
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bindService GenieManageService, context = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v5, p0, Lcom/alibaba/ailabs/genie/service/GenieManageClient;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v4, v5, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    .line 318
    :cond_3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-eq v4, v5, :cond_5

    const-wide/16 v4, 0x3e8

    :goto_1
    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-ltz v8, :cond_5

    const-wide/16 v6, 0x64

    .line 324
    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 325
    iget-object v8, p0, Lcom/alibaba/ailabs/genie/service/GenieManageClient;->mGenieManageImpl:Lcom/alibaba/ailabs/genie/service/IGenieManageInterface;

    if-eqz v8, :cond_4

    .line 326
    invoke-interface {v8}, Lcom/alibaba/ailabs/genie/service/IGenieManageInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-interface {v9}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 327
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bindService x, success tmp = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    return-object v8

    :catch_0
    move-exception v8

    .line 331
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    sub-long/2addr v4, v6

    goto :goto_1

    .line 339
    :cond_5
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bindService gcsService, context = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 341
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v2, 0x1

    :goto_3
    if-eqz v2, :cond_6

    .line 346
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/service/GenieManageClient;->retryBindService()V

    :cond_6
    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 195
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/service/GenieManageClient;->mContext:Ljava/lang/ref/WeakReference;

    .line 197
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "init mtop ; self = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GenieManageClient"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 199
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/service/GenieManageClient;->getGenieManageService(Z)Lcom/alibaba/ailabs/genie/service/IGenieManageInterface;

    return-void
.end method

.method public killProcess(Ljava/lang/String;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/service/GenieManageClient;->getGenieManageService()Lcom/alibaba/ailabs/genie/service/IGenieManageInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    :try_start_0
    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/service/IGenieManageInterface;->killProcess(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 61
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public release()V
    .locals 2

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "release self "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GenieManageClient"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/service/GenieManageClient;->unbind()V

    const/4 v0, 0x0

    .line 242
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/service/GenieManageClient;->getHandler(Z)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 244
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
