.class Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledStr$2;
.super Ljava/lang/Object;
.source "DialogAppInstalledStr.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledStr;->initViewAndAction()V
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

    .line 56
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledStr$2;->this$0:Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledStr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 59
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledStr$2;->this$0:Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledStr;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledStr;->dismiss()V

    return-void
.end method
