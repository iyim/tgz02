.class public Lcom/alibaba/mbg/unet/UnetManager$Builder;
.super Ljava/lang/Object;
.source "UnetManager.java"


# annotations
.annotation build Lcom/alibaba/mbg/unet/Api;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/mbg/unet/UnetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCacheDirPath:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public addSoSearchPath(Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-static {p1}, Lcom/alibaba/mbg/unet/internal/ContextManager;->addSoSearchPath(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public build()Lcom/alibaba/mbg/unet/UnetManager;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/alibaba/mbg/unet/UnetManager$Builder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/mbg/unet/internal/ContextManager;->initializeContextManager(Landroid/content/Context;)V

    .line 66
    invoke-static {}, Lcom/alibaba/mbg/unet/internal/ContextManager;->getClientNetManager()Lcom/alibaba/mbg/unet/UnetManager;

    move-result-object v0

    return-object v0
.end method

.method public checkBuildIDForLibCorrupted()V
    .locals 1

    const/4 v0, 0x1

    .line 40
    invoke-static {v0}, Lcom/alibaba/mbg/unet/internal/ContextManager;->setCheckBuildIDForLibCorrupted(Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setCacheDirPath(Ljava/lang/String;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setCheckSoSize(Z)V
    .locals 0

    .line 49
    invoke-static {p1}, Lcom/alibaba/mbg/unet/internal/ContextManager;->setCheckSoSize(Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/alibaba/mbg/unet/UnetManager$Builder;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setDynamicDeploySoPath(Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-static {p1}, Lcom/alibaba/mbg/unet/internal/ContextManager;->setDynamicDeploySoPath(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setSoSize(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 58
    invoke-static {p1, p2}, Lcom/alibaba/mbg/unet/internal/ContextManager;->setSoSize(J)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setUseAsyncInit(Z)V
    .locals 0

    .line 25
    invoke-static {p1}, Lcom/alibaba/mbg/unet/internal/ContextManager;->setUseAsyncInit(Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
