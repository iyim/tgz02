.class Lanet/channel/status/NetworkStatusMonitor$2$1;
.super Ljava/lang/Object;
.source "NetworkStatusMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanet/channel/status/NetworkStatusMonitor$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lanet/channel/status/NetworkStatusMonitor$2;


# direct methods
.method constructor <init>(Lanet/channel/status/NetworkStatusMonitor$2;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lanet/channel/status/NetworkStatusMonitor$2$1;->this$0:Lanet/channel/status/NetworkStatusMonitor$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 120
    invoke-static {}, Lanet/channel/status/NetworkStatusMonitor;->checkNetworkStatus()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
