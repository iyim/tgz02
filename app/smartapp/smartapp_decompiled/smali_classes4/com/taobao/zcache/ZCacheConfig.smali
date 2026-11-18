.class public Lcom/taobao/zcache/ZCacheConfig;
.super Ljava/lang/Object;
.source "ZCacheConfig.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# instance fields
.field public configPrefixRelease:Ljava/lang/String;

.field public configUpdateInterval:D

.field public manualStartUpdateQueue:Z

.field public zipPrefixRelease:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 31
    iput-wide v0, p0, Lcom/taobao/zcache/ZCacheConfig;->configUpdateInterval:D

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/taobao/zcache/ZCacheConfig;->manualStartUpdateQueue:Z

    return-void
.end method
