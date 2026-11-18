.class Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$4;
.super Ljava/lang/Object;
.source "SubSelectorDialog.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/message/network/IMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;->updateSwitch(Ljava/lang/String;Landroid/widget/Switch;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/ailabs/genie/message/network/IMessageCallback<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;

.field final synthetic val$switchView:Landroid/widget/Switch;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;Ljava/lang/String;Landroid/widget/Switch;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$4;->this$0:Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$4;->val$type:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$4;->val$switchView:Landroid/widget/Switch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILjava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    .line 156
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$4;->this$0:Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;->access$400(Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;)Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 157
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$4;->this$0:Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;->access$400(Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;)Landroid/content/Context;

    move-result-object p2

    check-cast p2, Landroid/app/Activity;

    if-nez p1, :cond_1

    if-eqz p3, :cond_0

    .line 160
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 161
    new-instance p1, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$4$1;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$4$1;-><init>(Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$4;)V

    invoke-virtual {p2, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 175
    :cond_0
    new-instance p1, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$4$2;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$4$2;-><init>(Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$4;)V

    invoke-virtual {p2, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 185
    :cond_1
    :goto_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;->access$500()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic onResult(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 153
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$4;->onResult(ILjava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method
