.class Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$2;
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

.field final synthetic val$phoneSwitch:Landroid/widget/Switch;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;Landroid/widget/Switch;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$2;->val$phoneSwitch:Landroid/widget/Switch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 117
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;->access$002(Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;Z)Z

    .line 118
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;->access$100(Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;)Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;

    move-result-object p1

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;->access$000(Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;->setAllowAppPush(Ljava/lang/Boolean;)V

    const-string p1, "phoneSwitch"

    const-string p2, "\u624b\u673a\u63a8\u9001\u901a\u77e5\u5f00\u542f"

    .line 119
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$2;->val$phoneSwitch:Landroid/widget/Switch;

    invoke-static {p2, p1, v0}, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;->access$200(Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;Ljava/lang/String;Landroid/widget/Switch;)V

    return-void
.end method
