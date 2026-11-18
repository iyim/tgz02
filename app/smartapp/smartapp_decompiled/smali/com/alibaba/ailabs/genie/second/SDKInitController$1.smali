.class Lcom/alibaba/ailabs/genie/second/SDKInitController$1;
.super Ljava/lang/Object;
.source "SDKInitController.java"

# interfaces
.implements Lanet/channel/status/NetworkStatusHelper$INetworkStatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/second/SDKInitController;->setIPv6OnlySupport()Lcom/alibaba/ailabs/genie/second/SDKInitController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/second/SDKInitController;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/second/SDKInitController;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/SDKInitController$1;->this$0:Lcom/alibaba/ailabs/genie/second/SDKInitController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkStatusChanged(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)V
    .locals 2

    .line 98
    sget-object v0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->NO:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    if-ne p1, v0, :cond_0

    return-void

    .line 104
    :cond_0
    invoke-static {}, Lanet/channel/util/Inet64Util;->getStackType()I

    move-result p1

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setIPv6OnlySupport() called. netType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SDKInitController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 109
    sget-object p1, Lcom/alibaba/ailabs/genie/second/config/IPConfig;->AMDC_IPV6_ONLY:[[Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 111
    sget-object p1, Lcom/alibaba/ailabs/genie/second/config/IPConfig;->AMDC_IPV6_ONLY:[[Ljava/lang/String;

    goto :goto_0

    .line 113
    :cond_2
    sget-object p1, Lcom/alibaba/ailabs/genie/second/config/IPConfig;->AMDC_IPV4_ONLY:[[Ljava/lang/String;

    .line 116
    :goto_0
    invoke-static {p1}, Lanet/channel/strategy/dispatch/DispatchConstants;->setAmdcServerFixIp([[Ljava/lang/String;)V

    return-void
.end method
