.class Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$3;
.super Ljava/lang/Object;
.source "SubSelectorDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;

.field final synthetic val$soundSwitch:Landroid/widget/Switch;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;Landroid/widget/Switch;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$3;->this$0:Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$3;->val$soundSwitch:Landroid/widget/Switch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 127
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$3;->this$0:Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;->access$302(Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;Z)Z

    .line 128
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$3;->this$0:Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;->access$100(Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;)Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;

    move-result-object p1

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$3;->this$0:Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;->access$300(Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;->setAllowVoicePush(Ljava/lang/Boolean;)V

    const-string p1, "soundSwitch"

    const-string p2, "\u97f3\u54cd\u4e3b\u52a8\u63d0\u9192\u5f00\u542f"

    .line 129
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$3;->this$0:Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$3;->val$soundSwitch:Landroid/widget/Switch;

    invoke-static {p2, p1, v0}, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;->access$200(Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;Ljava/lang/String;Landroid/widget/Switch;)V

    return-void
.end method
