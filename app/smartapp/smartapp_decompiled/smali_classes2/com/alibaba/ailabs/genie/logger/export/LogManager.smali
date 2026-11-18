.class public Lcom/alibaba/ailabs/genie/logger/export/LogManager;
.super Ljava/lang/Object;
.source "LogManager.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/logger/export/ILogCollector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/logger/export/LogManager$InstanceHolder;
    }
.end annotation


# static fields
.field public static final DEFFAULT_PRECONNECT_SOURCE:I = 0x3e8

.field public static final TAG:Ljava/lang/String; = "LogManager"


# instance fields
.field private mProxyInfo:Ljava/lang/String;

.field private mUTdid:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 174
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/logger/export/LogManager;->mUTdid:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/ailabs/genie/logger/export/LogManager$1;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/logger/export/LogManager;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private commit(Lcom/alibaba/ailabs/genie/logger/data/CommonLog;Z)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private inituPaas()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static instance()Lcom/alibaba/ailabs/genie/logger/export/LogManager;
    .locals 1

    .line 34
    invoke-static {}, Lcom/alibaba/ailabs/genie/logger/export/LogManager$InstanceHolder;->access$100()Lcom/alibaba/ailabs/genie/logger/export/LogManager;

    move-result-object v0

    return-object v0
.end method

.method private push(Lcom/alibaba/ailabs/genie/logger/data/CommonLog;Z)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public cache(IIIILjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public exit()V
    .locals 1

    .line 262
    invoke-static {}, Lcom/uc/sdk/ulog/ULogSetup;->with()Lcom/uc/sdk/ulog/ULogSetup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/sdk/ulog/ULogSetup;->flushToDisk()V

    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    .line 44
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/logger/utils/AppContextHelper;->init(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public stat(IIIILjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
