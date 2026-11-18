.class public Lcom/taobao/zcache/ZCacheParams;
.super Ljava/lang/Object;
.source "ZCacheParams.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public appKey:Ljava/lang/String;

.field public appVersion:Ljava/lang/String;

.field public configPrefix:Ljava/lang/String;

.field public context:Landroid/content/Context;

.field public env:I

.field public locale:Ljava/lang/String;

.field public updateInterval:D

.field public useOldPlatform:Z

.field public zipPrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 33
    iput-wide v0, p0, Lcom/taobao/zcache/ZCacheParams;->updateInterval:D

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/taobao/zcache/ZCacheParams;->useOldPlatform:Z

    return-void
.end method

.method public static getEnvironment(I)Lcom/taobao/zcache/Environment;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 51
    sget-object p0, Lcom/taobao/zcache/Environment;->Release:Lcom/taobao/zcache/Environment;

    return-object p0

    .line 47
    :cond_0
    sget-object p0, Lcom/taobao/zcache/Environment;->Daily:Lcom/taobao/zcache/Environment;

    return-object p0

    .line 49
    :cond_1
    sget-object p0, Lcom/taobao/zcache/Environment;->Debug:Lcom/taobao/zcache/Environment;

    return-object p0
.end method
