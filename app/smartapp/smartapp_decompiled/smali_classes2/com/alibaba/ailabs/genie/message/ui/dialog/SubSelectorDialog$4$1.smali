.class Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$4$1;
.super Ljava/lang/Object;
.source "SubSelectorDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$4;->onResult(ILjava/lang/String;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$4;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$4;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$4$1;->this$1:Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$4$1;->this$1:Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$4;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$4;->val$type:Ljava/lang/String;

    const-string v1, "phoneSwitch"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$4$1;->this$1:Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$4;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$4;->this$0:Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;->access$100(Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;)Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$4$1;->this$1:Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$4;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$4;->this$0:Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;->access$000(Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;->setAllowAppPush(Ljava/lang/Boolean;)V

    .line 166
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$4$1;->this$1:Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$4;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$4;->val$switchView:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$4$1;->this$1:Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$4;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$4;->this$0:Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;->access$000(Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$4$1;->this$1:Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$4;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$4;->val$type:Ljava/lang/String;

    const-string v1, "soundSwitch"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$4$1;->this$1:Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$4;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$4;->this$0:Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;->access$100(Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;)Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$4$1;->this$1:Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$4;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$4;->this$0:Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;->access$300(Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;->setAllowVoicePush(Ljava/lang/Boolean;)V

    .line 169
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$4$1;->this$1:Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$4;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$4;->val$switchView:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$4$1;->this$1:Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$4;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$4;->this$0:Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;->access$300(Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_1
    :goto_0
    return-void
.end method
