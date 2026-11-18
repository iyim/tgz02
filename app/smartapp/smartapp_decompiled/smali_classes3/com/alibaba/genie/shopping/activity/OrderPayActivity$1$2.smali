.class Lcom/alibaba/genie/shopping/activity/OrderPayActivity$1$2;
.super Ljava/lang/Object;
.source "OrderPayActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/shopping/activity/OrderPayActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/genie/shopping/activity/OrderPayActivity$1;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/shopping/activity/OrderPayActivity$1;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$1$2;->this$1:Lcom/alibaba/genie/shopping/activity/OrderPayActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 166
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 167
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$1$2;->this$1:Lcom/alibaba/genie/shopping/activity/OrderPayActivity$1;

    iget-object p1, p1, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$1;->this$0:Lcom/alibaba/genie/shopping/activity/OrderPayActivity;

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->finish()V

    return-void
.end method
