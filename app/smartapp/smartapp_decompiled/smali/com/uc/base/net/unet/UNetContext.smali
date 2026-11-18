.class public Lcom/uc/base/net/unet/UNetContext;
.super Ljava/lang/Object;
.source "UNetContext.java"


# static fields
.field private static sBuilder:Lcom/alibaba/mbg/unet/UnetManager$Builder; = null

.field private static sFollowSystemProxy:Z = true

.field private static sProxyHost:Ljava/lang/String;

.field private static sProxyPort:I

.field private static sUnetManager:Lcom/alibaba/mbg/unet/UnetManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 18
    sget-boolean v0, Lcom/uc/base/net/unet/UNetContext;->sFollowSystemProxy:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 18
    sget-object v0, Lcom/uc/base/net/unet/UNetContext;->sProxyHost:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    .line 18
    sget v0, Lcom/uc/base/net/unet/UNetContext;->sProxyPort:I

    return v0
.end method

.method static synthetic access$300(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-static/range {p0 .. p5}, Lcom/uc/base/net/unet/UNetContext;->initializeUPaasManagerImpl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$400(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-static/range {p0 .. p5}, Lcom/uc/base/net/unet/UNetContext;->initializeUPaasManagerImplNoSG(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static addSoSearchPath(Ljava/lang/String;)V
    .locals 1

    .line 88
    sget-object v0, Lcom/uc/base/net/unet/UNetContext;->sBuilder:Lcom/alibaba/mbg/unet/UnetManager$Builder;

    invoke-virtual {v0, p0}, Lcom/alibaba/mbg/unet/UnetManager$Builder;->addSoSearchPath(Ljava/lang/String;)V

    return-void
.end method

.method public static checkBuildIDForLibCorrupted()V
    .locals 1

    .line 99
    sget-object v0, Lcom/uc/base/net/unet/UNetContext;->sBuilder:Lcom/alibaba/mbg/unet/UnetManager$Builder;

    invoke-virtual {v0}, Lcom/alibaba/mbg/unet/UnetManager$Builder;->checkBuildIDForLibCorrupted()V

    return-void
.end method

.method public static configDefaultProxy()V
    .locals 2

    .line 56
    invoke-static {}, Lcom/uc/base/net/unet/UNetContext;->getUNetManager()Lcom/alibaba/mbg/unet/UnetManager;

    move-result-object v0

    new-instance v1, Lcom/uc/base/net/unet/UNetContext$1;

    invoke-direct {v1}, Lcom/uc/base/net/unet/UNetContext$1;-><init>()V

    invoke-interface {v0, v1}, Lcom/alibaba/mbg/unet/UnetManager;->setProxyInfoDelegate(Lcom/alibaba/mbg/unet/IProxyDelegate;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getUNetManager()Lcom/alibaba/mbg/unet/UnetManager;
    .locals 2

    .line 114
    const-class v0, Lcom/uc/base/net/unet/UNetContext;

    monitor-enter v0

    .line 115
    :try_start_0
    sget-object v1, Lcom/uc/base/net/unet/UNetContext;->sUnetManager:Lcom/alibaba/mbg/unet/UnetManager;

    if-nez v1, :cond_0

    .line 116
    sget-object v1, Lcom/uc/base/net/unet/UNetContext;->sBuilder:Lcom/alibaba/mbg/unet/UnetManager$Builder;

    invoke-virtual {v1}, Lcom/alibaba/mbg/unet/UnetManager$Builder;->build()Lcom/alibaba/mbg/unet/UnetManager;

    move-result-object v1

    sput-object v1, Lcom/uc/base/net/unet/UNetContext;->sUnetManager:Lcom/alibaba/mbg/unet/UnetManager;

    .line 118
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    sget-object v0, Lcom/uc/base/net/unet/UNetContext;->sUnetManager:Lcom/alibaba/mbg/unet/UnetManager;

    return-object v0

    :catchall_0
    move-exception v1

    .line 118
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static initializeUNetContext(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-static {p0, v0}, Lcom/uc/base/net/unet/UNetContext;->initializeUNetContext(Landroid/content/Context;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static initializeUNetContext(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 39
    new-instance v0, Lcom/alibaba/mbg/unet/UnetManager$Builder;

    invoke-direct {v0}, Lcom/alibaba/mbg/unet/UnetManager$Builder;-><init>()V

    sput-object v0, Lcom/uc/base/net/unet/UNetContext;->sBuilder:Lcom/alibaba/mbg/unet/UnetManager$Builder;

    .line 40
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    sget-object v0, Lcom/uc/base/net/unet/UNetContext;->sBuilder:Lcom/alibaba/mbg/unet/UnetManager$Builder;

    invoke-virtual {v0, p1}, Lcom/alibaba/mbg/unet/UnetManager$Builder;->setDynamicDeploySoPath(Ljava/lang/String;)V

    .line 44
    :cond_0
    sget-object p1, Lcom/uc/base/net/unet/UNetContext;->sBuilder:Lcom/alibaba/mbg/unet/UnetManager$Builder;

    invoke-virtual {p1, p0}, Lcom/alibaba/mbg/unet/UnetManager$Builder;->setContext(Landroid/content/Context;)V

    return-void
.end method

.method public static initializeUNetContextSync(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-static {p0, v0}, Lcom/uc/base/net/unet/UNetContext;->initializeUNetContextSync(Landroid/content/Context;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static initializeUNetContextSync(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-static {p0, p1}, Lcom/uc/base/net/unet/UNetContext;->initializeUNetContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 49
    sget-object p0, Lcom/uc/base/net/unet/UNetContext;->sBuilder:Lcom/alibaba/mbg/unet/UnetManager$Builder;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/alibaba/mbg/unet/UnetManager$Builder;->setUseAsyncInit(Z)V

    return-void
.end method

.method public static initializeUPaasManager(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 125
    new-instance v7, Lcom/uc/base/net/unet/UNetContext$2;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/uc/base/net/unet/UNetContext$2;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-static {}, Lcom/uc/base/net/unet/UNetContext;->getUNetManager()Lcom/alibaba/mbg/unet/UnetManager;

    move-result-object p0

    invoke-interface {p0, v7}, Lcom/alibaba/mbg/unet/UnetManager;->callAfterInitialized(Ljava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static initializeUPaasManagerImpl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 136
    new-instance v0, Lcom/uc/base/net/unet/util/SecurityGuardWrapperImpl;

    invoke-direct {v0, p0, p4, p5}, Lcom/uc/base/net/unet/util/SecurityGuardWrapperImpl;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-static {}, Lcom/uc/base/net/unet/UNetContext;->getUNetManager()Lcom/alibaba/mbg/unet/UnetManager;

    move-result-object p0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/alibaba/mbg/upaas/UpaasManager;->init(Lcom/alibaba/mbg/unet/UnetManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mbg/upaas/SecurityGuardWrapper;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static initializeUPaasManagerImplNoSG(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 158
    invoke-static {}, Lcom/uc/base/net/unet/UNetContext;->getUNetManager()Lcom/alibaba/mbg/unet/UnetManager;

    move-result-object p0

    new-instance p4, Lcom/uc/base/net/unet/UNetContext$4;

    invoke-direct {p4}, Lcom/uc/base/net/unet/UNetContext$4;-><init>()V

    invoke-static {p0, p1, p2, p3, p4}, Lcom/alibaba/mbg/upaas/UpaasManager;->init(Lcom/alibaba/mbg/unet/UnetManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mbg/upaas/SecurityGuardWrapper;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static initializeUPaasManagerNoSG(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 147
    new-instance v7, Lcom/uc/base/net/unet/UNetContext$3;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/uc/base/net/unet/UNetContext$3;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-static {}, Lcom/uc/base/net/unet/UNetContext;->getUNetManager()Lcom/alibaba/mbg/unet/UnetManager;

    move-result-object p0

    invoke-interface {p0, v7}, Lcom/alibaba/mbg/unet/UnetManager;->callAfterInitialized(Ljava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setCheckSoSize(Z)V
    .locals 1

    .line 103
    sget-object v0, Lcom/uc/base/net/unet/UNetContext;->sBuilder:Lcom/alibaba/mbg/unet/UnetManager$Builder;

    invoke-virtual {v0, p0}, Lcom/alibaba/mbg/unet/UnetManager$Builder;->setCheckSoSize(Z)V

    return-void
.end method

.method public static setFollowSystemProxy(Z)V
    .locals 0

    .line 85
    sput-boolean p0, Lcom/uc/base/net/unet/UNetContext;->sFollowSystemProxy:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setSoSize(J)V
    .locals 1

    .line 107
    sget-object v0, Lcom/uc/base/net/unet/UNetContext;->sBuilder:Lcom/alibaba/mbg/unet/UnetManager$Builder;

    invoke-virtual {v0, p0, p1}, Lcom/alibaba/mbg/unet/UnetManager$Builder;->setSoSize(J)V

    return-void
.end method

.method public static setSystemProxy(Ljava/lang/String;I)V
    .locals 1

    .line 91
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 94
    :cond_0
    sput-object p0, Lcom/uc/base/net/unet/UNetContext;->sProxyHost:Ljava/lang/String;

    .line 95
    sput p1, Lcom/uc/base/net/unet/UNetContext;->sProxyPort:I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
