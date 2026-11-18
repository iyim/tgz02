.class Lcom/alibaba/ailabs/genie/genieui/GenieBallApplication$1;
.super Ljava/lang/Object;
.source "GenieBallApplication.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/genieui/GenieBallApplication;->init(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/genieui/GenieBallApplication;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/genieui/GenieBallApplication;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieBallApplication$1;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieBallApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 45
    new-instance p1, Landroid/content/Intent;

    invoke-static {}, Lcom/alibaba/ailabs/genie/genieui/GenieBallApplication;->access$000()Landroid/app/Application;

    move-result-object v0

    const-class v1, Lcom/alibaba/ailabs/genie/genieui/service/AccessibilityMonitorService;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieui/GenieBallApplication;->access$000()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p0, v1}, Landroid/app/Application;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method
