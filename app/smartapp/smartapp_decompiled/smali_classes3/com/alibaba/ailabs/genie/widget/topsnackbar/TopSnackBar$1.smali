.class Lcom/alibaba/ailabs/genie/widget/topsnackbar/TopSnackBar$1;
.super Ljava/lang/Object;
.source "TopSnackBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/widget/topsnackbar/TopSnackBar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/alibaba/ailabs/genie/widget/topsnackbar/TopSnackBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/widget/topsnackbar/TopSnackBar;

.field final synthetic val$listener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/widget/topsnackbar/TopSnackBar;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/TopSnackBar$1;->this$0:Lcom/alibaba/ailabs/genie/widget/topsnackbar/TopSnackBar;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/TopSnackBar$1;->val$listener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/TopSnackBar$1;->val$listener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 304
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/TopSnackBar$1;->this$0:Lcom/alibaba/ailabs/genie/widget/topsnackbar/TopSnackBar;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/TopSnackBar;->dispatchDismiss(I)V

    return-void
.end method
