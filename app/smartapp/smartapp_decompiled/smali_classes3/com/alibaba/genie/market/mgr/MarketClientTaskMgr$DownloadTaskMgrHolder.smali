.class Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr$DownloadTaskMgrHolder;
.super Ljava/lang/Object;
.source "MarketClientTaskMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DownloadTaskMgrHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 61
    new-instance v0, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;-><init>(Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr$1;)V

    sput-object v0, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr$DownloadTaskMgrHolder;->INSTANCE:Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000()Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;
    .locals 1

    .line 60
    sget-object v0, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr$DownloadTaskMgrHolder;->INSTANCE:Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;

    return-object v0
.end method
