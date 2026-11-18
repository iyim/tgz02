.class Lcom/alibaba/ailabs/genie/datacenter/DataCenterReceiver$1;
.super Ljava/lang/Object;
.source "DataCenterReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/datacenter/DataCenterReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/datacenter/DataCenterReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/datacenter/DataCenterReceiver;Landroid/content/Context;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterReceiver$1;->this$0:Lcom/alibaba/ailabs/genie/datacenter/DataCenterReceiver;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils;->startTcmAlarm(Landroid/content/Context;)V

    return-void
.end method
