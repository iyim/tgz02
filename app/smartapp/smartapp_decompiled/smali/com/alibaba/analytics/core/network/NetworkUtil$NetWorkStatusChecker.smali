.class Lcom/alibaba/analytics/core/network/NetworkUtil$NetWorkStatusChecker;
.super Ljava/lang/Object;
.source "NetworkUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/analytics/core/network/NetworkUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetWorkStatusChecker"
.end annotation


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method synthetic constructor <init>(Lcom/alibaba/analytics/core/network/NetworkUtil$1;)V
    .locals 0

    .line 300
    invoke-direct {p0}, Lcom/alibaba/analytics/core/network/NetworkUtil$NetWorkStatusChecker;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/alibaba/analytics/core/network/NetworkUtil$NetWorkStatusChecker;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 313
    :cond_0
    invoke-static {v0}, Lcom/alibaba/analytics/core/network/NetworkUtil;->access$300(Landroid/content/Context;)V

    .line 314
    iget-object v0, p0, Lcom/alibaba/analytics/core/network/NetworkUtil$NetWorkStatusChecker;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/analytics/core/network/NetworkOperatorUtil;->updateNetworkOperatorName(Landroid/content/Context;)V

    .line 316
    iget-object v0, p0, Lcom/alibaba/analytics/core/network/NetworkUtil$NetWorkStatusChecker;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/analytics/utils/UTMCDevice;->updateUTMCDeviceNetworkStatus(Landroid/content/Context;)V

    return-void
.end method

.method public setContext(Landroid/content/Context;)Lcom/alibaba/analytics/core/network/NetworkUtil$NetWorkStatusChecker;
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/alibaba/analytics/core/network/NetworkUtil$NetWorkStatusChecker;->context:Landroid/content/Context;

    return-object p0
.end method
