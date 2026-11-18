.class Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledStr$4;
.super Ljava/lang/Object;
.source "DialogAppInstalledStr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledStr;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledStr;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledStr;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledStr$4;->this$0:Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledStr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledStr$4;->this$0:Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledStr;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledStr;->dismiss()V

    return-void
.end method
