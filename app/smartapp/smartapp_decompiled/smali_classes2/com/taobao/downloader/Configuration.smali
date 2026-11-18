.class public Lcom/taobao/downloader/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"


# static fields
.field public static CONCURRENT_DOWNLOAD_SIZE:I = 0x2

.field public static MAX_AWAIT_TIME:I = 0xa

.field public static bizPriManager:Lcom/taobao/downloader/adpater/BizPriManager; = null

.field public static cloundConfigAdapter:Lcom/taobao/downloader/adpater/CloundConfigAdapter; = null

.field public static dlConnectionClazz:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/taobao/downloader/download/protocol/DLConnection;",
            ">;"
        }
    .end annotation
.end field

.field public static dnsService:Lcom/taobao/downloader/adpater/DnsService; = null

.field public static downloadFactory:Lcom/taobao/downloader/adpater/DownloadFactory; = null

.field public static fileCacheManager:Lcom/taobao/downloader/adpater/FileCacheManager; = null

.field public static logDebugEnabled:Z = false

.field public static logger:Lcom/taobao/downloader/adpater/Logger;

.field public static monitor:Lcom/taobao/downloader/adpater/Monitor;

.field public static networkType:I

.field public static sContext:Landroid/content/Context;

.field public static taskManager:Lcom/taobao/downloader/adpater/TaskManager;

.field public static threadExecutor:Lcom/taobao/downloader/adpater/ThreadExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
