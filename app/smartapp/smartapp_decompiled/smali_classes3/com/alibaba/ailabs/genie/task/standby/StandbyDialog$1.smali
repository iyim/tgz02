.class Lcom/alibaba/ailabs/genie/task/standby/StandbyDialog$1;
.super Ljava/lang/Object;
.source "StandbyDialog.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$NoticationBarOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/task/standby/StandbyDialog;->initWidgetBar()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/task/standby/StandbyDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/task/standby/StandbyDialog;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/task/standby/StandbyDialog$1;->this$0:Lcom/alibaba/ailabs/genie/task/standby/StandbyDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeftOpenrationClick()V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/standby/StandbyDialog$1;->this$0:Lcom/alibaba/ailabs/genie/task/standby/StandbyDialog;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/task/standby/StandbyDialog;->access$000(Lcom/alibaba/ailabs/genie/task/standby/StandbyDialog;)Lcom/alibaba/ailabs/genie/task/standby/StandbyDialog$DlgBtnNClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/standby/StandbyDialog$1;->this$0:Lcom/alibaba/ailabs/genie/task/standby/StandbyDialog;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/task/standby/StandbyDialog;->access$000(Lcom/alibaba/ailabs/genie/task/standby/StandbyDialog;)Lcom/alibaba/ailabs/genie/task/standby/StandbyDialog$DlgBtnNClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/ailabs/genie/task/standby/StandbyDialog$DlgBtnNClickListener;->onKnownClick()V

    :cond_0
    return-void
.end method

.method public onRightOpenrationClick()V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/standby/StandbyDialog$1;->this$0:Lcom/alibaba/ailabs/genie/task/standby/StandbyDialog;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/task/standby/StandbyDialog;->access$000(Lcom/alibaba/ailabs/genie/task/standby/StandbyDialog;)Lcom/alibaba/ailabs/genie/task/standby/StandbyDialog$DlgBtnNClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/standby/StandbyDialog$1;->this$0:Lcom/alibaba/ailabs/genie/task/standby/StandbyDialog;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/task/standby/StandbyDialog;->access$000(Lcom/alibaba/ailabs/genie/task/standby/StandbyDialog;)Lcom/alibaba/ailabs/genie/task/standby/StandbyDialog$DlgBtnNClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/ailabs/genie/task/standby/StandbyDialog$DlgBtnNClickListener;->onCancelClick()V

    :cond_0
    return-void
.end method
