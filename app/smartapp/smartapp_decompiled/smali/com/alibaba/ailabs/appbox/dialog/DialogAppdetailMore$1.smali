.class Lcom/alibaba/ailabs/appbox/dialog/DialogAppdetailMore$1;
.super Ljava/lang/Object;
.source "DialogAppdetailMore.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/dialog/DialogAppdetailMore;->initViewAndAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/dialog/DialogAppdetailMore;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/dialog/DialogAppdetailMore;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogAppdetailMore$1;->this$0:Lcom/alibaba/ailabs/appbox/dialog/DialogAppdetailMore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 34
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogAppdetailMore$1;->this$0:Lcom/alibaba/ailabs/appbox/dialog/DialogAppdetailMore;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/dialog/DialogAppdetailMore;->dismiss()V

    return-void
.end method
