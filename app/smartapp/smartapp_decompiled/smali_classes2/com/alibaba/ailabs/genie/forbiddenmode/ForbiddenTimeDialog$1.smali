.class Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenTimeDialog$1;
.super Ljava/lang/Object;
.source "ForbiddenTimeDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenTimeDialog;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenTimeDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenTimeDialog;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenTimeDialog$1;->this$0:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenTimeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string p1, "ForbiddenTimeDialog"

    const-string v0, "onClick"

    .line 65
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenTimeDialog$1;->this$0:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenTimeDialog;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenTimeDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "genie://com.alibaba.ailabs.genie.datacenter/childModeSettingPage"

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/utils/RouterUtils;->openActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 67
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenTimeDialog$1;->this$0:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenTimeDialog;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenTimeDialog;->dismiss()V

    return-void
.end method
