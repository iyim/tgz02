.class Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter$3;
.super Ljava/lang/Object;
.source "MessageListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter;->bind(Lcom/alibaba/ailabs/genie/message/ui/adapter/BaseViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter;

.field final synthetic val$actionUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter;Ljava/lang/String;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter$3;->this$0:Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter$3;->val$actionUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 141
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter$3;->val$actionUrl:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 142
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter$3;->this$0:Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter;->access$000(Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter$3;->val$actionUrl:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/message/utils/JumpUtils;->gotoAction(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
