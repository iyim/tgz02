.class Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledInDownloadding$1;
.super Ljava/lang/Object;
.source "DialogAppInstalledInDownloadding.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledInDownloadding;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledInDownloadding;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledInDownloadding;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledInDownloadding$1;->this$0:Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledInDownloadding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledInDownloadding$1;->this$0:Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledInDownloadding;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledInDownloadding;->dismiss()V

    return-void
.end method
