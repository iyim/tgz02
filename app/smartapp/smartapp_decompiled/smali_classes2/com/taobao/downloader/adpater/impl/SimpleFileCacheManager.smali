.class public Lcom/taobao/downloader/adpater/impl/SimpleFileCacheManager;
.super Ljava/lang/Object;
.source "SimpleFileCacheManager.java"

# interfaces
.implements Lcom/taobao/downloader/adpater/FileCacheManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getTmpCache()Ljava/lang/String;
    .locals 2

    .line 16
    sget-object v0, Lcom/taobao/downloader/Configuration;->sContext:Landroid/content/Context;

    const-string v1, "download-sdk/tmp"

    invoke-static {v0, v1}, Lcom/taobao/downloader/util/FileUtil;->getStorePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
