.class Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity$4;
.super Ljava/lang/Object;
.source "MessageCenterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity$4;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 182
    invoke-static {}, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->access$400()Ljava/lang/String;

    move-result-object p1

    const-string v0, "You click home"

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity$4;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->access$500(Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;)V

    return-void
.end method
