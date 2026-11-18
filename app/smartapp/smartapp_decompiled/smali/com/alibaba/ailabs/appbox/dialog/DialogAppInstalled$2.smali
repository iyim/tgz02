.class Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalled$2;
.super Ljava/lang/Object;
.source "DialogAppInstalled.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalled;->initViewAndAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalled;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalled;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalled$2;->this$0:Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalled;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 50
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalled$2;->this$0:Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalled;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalled;->dismiss()V

    return-void
.end method
