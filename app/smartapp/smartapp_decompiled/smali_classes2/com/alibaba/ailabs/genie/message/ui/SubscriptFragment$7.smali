.class Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$7;
.super Ljava/lang/Object;
.source "SubscriptFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->subDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;)V
    .locals 0

    .line 334
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$7;->this$0:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 337
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$7;->this$0:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->access$1500(Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;)Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;->cancel()V

    .line 338
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$7;->this$0:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->access$1502(Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;)Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;

    return-void
.end method
