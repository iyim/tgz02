.class Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter$4;
.super Lcom/alibaba/ailabs/genie/message/ui/UnLineClickableSpan;
.source "MessageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter;->spannerStyle(Landroid/widget/TextView;Lcom/alibaba/ailabs/genie/message/network/bean/NotificationBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter;Ljava/lang/String;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter$4;->this$0:Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter$4;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/message/ui/UnLineClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 194
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter$4;->this$0:Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter;->access$000(Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter$4;->val$url:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/message/utils/JumpUtils;->gotoAction(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
