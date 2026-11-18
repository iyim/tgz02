.class public Lcom/taobao/android/AliConfigImp;
.super Ljava/lang/Object;
.source "AliConfigImp.java"

# interfaces
.implements Lcom/taobao/android/AliConfigInterface;


# static fields
.field private static final sInstance:Lcom/taobao/android/AliConfigImp;


# instance fields
.field private final mAliConfigListenerAdaptersMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/taobao/android/AliConfigListener;",
            "Lcom/taobao/android/AliConfigListenerAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final mOrangeConfig:Lcom/taobao/orange/OrangeConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Lcom/taobao/android/AliConfigImp;

    invoke-static {}, Lcom/taobao/orange/OrangeConfig;->getInstance()Lcom/taobao/orange/OrangeConfig;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/taobao/android/AliConfigImp;-><init>(Lcom/taobao/orange/OrangeConfig;)V

    sput-object v0, Lcom/taobao/android/AliConfigImp;->sInstance:Lcom/taobao/android/AliConfigImp;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Lcom/taobao/orange/OrangeConfig;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/AliConfigImp;->mAliConfigListenerAdaptersMap:Ljava/util/HashMap;

    .line 27
    iput-object p1, p0, Lcom/taobao/android/AliConfigImp;->mOrangeConfig:Lcom/taobao/orange/OrangeConfig;

    return-void
.end method

.method public static getInstance()Lcom/taobao/android/AliConfigImp;
    .locals 1

    .line 20
    sget-object v0, Lcom/taobao/android/AliConfigImp;->sInstance:Lcom/taobao/android/AliConfigImp;

    return-object v0
.end method


# virtual methods
.method public getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 35
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iget-object p2, p0, Lcom/taobao/android/AliConfigImp;->mOrangeConfig:Lcom/taobao/orange/OrangeConfig;

    invoke-virtual {p2, p1, p3}, Lcom/taobao/orange/OrangeConfig;->getCustomConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/AliConfigImp;->mOrangeConfig:Lcom/taobao/orange/OrangeConfig;

    invoke-virtual {v0, p1, p2, p3}, Lcom/taobao/orange/OrangeConfig;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getConfigs(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/taobao/android/AliConfigImp;->mOrangeConfig:Lcom/taobao/orange/OrangeConfig;

    invoke-virtual {v0, p1}, Lcom/taobao/orange/OrangeConfig;->getConfigs(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public registerListener([Ljava/lang/String;Lcom/taobao/android/AliConfigListener;)V
    .locals 3
    .param p1    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/taobao/android/AliConfigListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 52
    iget-object v0, p0, Lcom/taobao/android/AliConfigImp;->mAliConfigListenerAdaptersMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 54
    :try_start_0
    iget-object v1, p0, Lcom/taobao/android/AliConfigImp;->mAliConfigListenerAdaptersMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/android/AliConfigListenerAdapter;

    if-nez v1, :cond_0

    .line 57
    new-instance v1, Lcom/taobao/android/AliConfigListenerAdapter;

    invoke-direct {v1, p2}, Lcom/taobao/android/AliConfigListenerAdapter;-><init>(Lcom/taobao/android/AliConfigListener;)V

    .line 58
    iget-object v2, p0, Lcom/taobao/android/AliConfigImp;->mAliConfigListenerAdaptersMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :cond_0
    iget-object p2, p0, Lcom/taobao/android/AliConfigImp;->mOrangeConfig:Lcom/taobao/orange/OrangeConfig;

    const/4 v2, 0x0

    invoke-virtual {p2, p1, v1, v2}, Lcom/taobao/orange/OrangeConfig;->registerListener([Ljava/lang/String;Lcom/taobao/orange/OConfigListener;Z)V

    .line 62
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public unregisterListener([Ljava/lang/String;Lcom/taobao/android/AliConfigListener;)V
    .locals 3
    .param p1    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/taobao/android/AliConfigListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 67
    iget-object v0, p0, Lcom/taobao/android/AliConfigImp;->mAliConfigListenerAdaptersMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 69
    :try_start_0
    iget-object v1, p0, Lcom/taobao/android/AliConfigImp;->mAliConfigListenerAdaptersMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/android/AliConfigListenerAdapter;

    if-eqz v1, :cond_0

    .line 72
    iget-object v2, p0, Lcom/taobao/android/AliConfigImp;->mOrangeConfig:Lcom/taobao/orange/OrangeConfig;

    invoke-virtual {v2, p1, v1}, Lcom/taobao/orange/OrangeConfig;->unregisterListener([Ljava/lang/String;Lcom/taobao/orange/OConfigListener;)V

    .line 73
    iget-object p1, p0, Lcom/taobao/android/AliConfigImp;->mAliConfigListenerAdaptersMap:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
