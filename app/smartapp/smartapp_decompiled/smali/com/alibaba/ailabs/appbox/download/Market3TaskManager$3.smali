.class Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$3;
.super Ljava/lang/Object;
.source "Market3TaskManager.java"

# interfaces
.implements Lcom/alibaba/genie/market/task/OnServerDisconnectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->setDisconnectListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$3;->this$0:Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServerDisconnect()V
    .locals 1

    .line 156
    invoke-static {}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->getInstance()Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->onServerDisconnect()V

    return-void
.end method
