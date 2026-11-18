.class public Lcom/alibaba/analytics/core/logbuilder/GoogleAdvertisingIdClient;
.super Ljava/lang/Object;
.source "GoogleAdvertisingIdClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/analytics/core/logbuilder/GoogleAdvertisingIdClient$AdvertisingInterface;,
        Lcom/alibaba/analytics/core/logbuilder/GoogleAdvertisingIdClient$AdvertisingConnection;,
        Lcom/alibaba/analytics/core/logbuilder/GoogleAdvertisingIdClient$AdInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GoogleAdvertisingIdClient"

.field private static mAdInfo:Lcom/alibaba/analytics/core/logbuilder/GoogleAdvertisingIdClient$AdInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static getAdInfo()Lcom/alibaba/analytics/core/logbuilder/GoogleAdvertisingIdClient$AdInfo;
    .locals 1

    .line 24
    sget-object v0, Lcom/alibaba/analytics/core/logbuilder/GoogleAdvertisingIdClient;->mAdInfo:Lcom/alibaba/analytics/core/logbuilder/GoogleAdvertisingIdClient$AdInfo;

    return-object v0
.end method

.method public static declared-synchronized initAdvertisingIdInfo(Landroid/content/Context;)V
    .locals 6

    const-class v0, Lcom/alibaba/analytics/core/logbuilder/GoogleAdvertisingIdClient;

    monitor-enter v0

    .line 46
    :try_start_0
    sget-object v1, Lcom/alibaba/analytics/core/logbuilder/GoogleAdvertisingIdClient;->mAdInfo:Lcom/alibaba/analytics/core/logbuilder/GoogleAdvertisingIdClient$AdInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 47
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 51
    :try_start_1
    new-instance v2, Lcom/alibaba/analytics/core/logbuilder/GoogleAdvertisingIdClient$AdvertisingConnection;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/alibaba/analytics/core/logbuilder/GoogleAdvertisingIdClient$AdvertisingConnection;-><init>(Lcom/alibaba/analytics/core/logbuilder/GoogleAdvertisingIdClient$1;)V

    .line 52
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "com.google.android.gms"

    .line 53
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    invoke-virtual {p0, v3, v2, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_2

    .line 57
    :try_start_2
    invoke-virtual {v2}, Lcom/alibaba/analytics/core/logbuilder/GoogleAdvertisingIdClient$AdvertisingConnection;->getBinder()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 59
    new-instance v4, Lcom/alibaba/analytics/core/logbuilder/GoogleAdvertisingIdClient$AdvertisingInterface;

    invoke-direct {v4, v3}, Lcom/alibaba/analytics/core/logbuilder/GoogleAdvertisingIdClient$AdvertisingInterface;-><init>(Landroid/os/IBinder;)V

    .line 60
    new-instance v3, Lcom/alibaba/analytics/core/logbuilder/GoogleAdvertisingIdClient$AdInfo;

    invoke-virtual {v4}, Lcom/alibaba/analytics/core/logbuilder/GoogleAdvertisingIdClient$AdvertisingInterface;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1}, Lcom/alibaba/analytics/core/logbuilder/GoogleAdvertisingIdClient$AdvertisingInterface;->isLimitAdTrackingEnabled(Z)Z

    move-result v4

    invoke-direct {v3, v5, v4}, Lcom/alibaba/analytics/core/logbuilder/GoogleAdvertisingIdClient$AdInfo;-><init>(Ljava/lang/String;Z)V

    sput-object v3, Lcom/alibaba/analytics/core/logbuilder/GoogleAdvertisingIdClient;->mAdInfo:Lcom/alibaba/analytics/core/logbuilder/GoogleAdvertisingIdClient$AdInfo;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    :cond_1
    :goto_0
    :try_start_3
    invoke-virtual {p0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception v3

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_4
    const-string v4, "GoogleAdvertisingIdClient"

    const/4 v5, 0x0

    .line 63
    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v3, v5}, Lcom/alibaba/analytics/utils/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 65
    :goto_1
    :try_start_5
    invoke-virtual {p0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v3
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 72
    :catch_1
    :cond_2
    :goto_2
    :try_start_6
    sget-object p0, Lcom/alibaba/analytics/core/logbuilder/GoogleAdvertisingIdClient;->mAdInfo:Lcom/alibaba/analytics/core/logbuilder/GoogleAdvertisingIdClient$AdInfo;

    if-nez p0, :cond_3

    .line 73
    new-instance p0, Lcom/alibaba/analytics/core/logbuilder/GoogleAdvertisingIdClient$AdInfo;

    const-string v2, ""

    invoke-direct {p0, v2, v1}, Lcom/alibaba/analytics/core/logbuilder/GoogleAdvertisingIdClient$AdInfo;-><init>(Ljava/lang/String;Z)V

    sput-object p0, Lcom/alibaba/analytics/core/logbuilder/GoogleAdvertisingIdClient;->mAdInfo:Lcom/alibaba/analytics/core/logbuilder/GoogleAdvertisingIdClient$AdInfo;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 75
    :cond_3
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0

    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method
