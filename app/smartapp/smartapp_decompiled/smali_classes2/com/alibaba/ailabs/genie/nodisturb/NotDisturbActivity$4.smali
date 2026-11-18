.class Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$4;
.super Ljava/lang/Object;
.source "NotDisturbActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->setOnClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)V
    .locals 0

    .line 385
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$4;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    monitor-enter p0

    .line 388
    :try_start_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$4;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$1500(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)Landroid/widget/Switch;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$4;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$1600(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)Z

    move-result p2

    if-eq p1, p2, :cond_1

    .line 389
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$4;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$1700(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 390
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$4;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$4;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$1500(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$1800(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;ZZ)V

    goto :goto_0

    .line 392
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$4;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$4;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$1500(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    invoke-static {p1, v0, p2}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$1800(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;ZZ)V

    .line 394
    :goto_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$4;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$1200(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;Z)V

    const-string p1, "NotDisturbActivity"

    .line 396
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SCOF:DNDMode 1min screen off clicked, update DND mode info to server. value="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$4;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$1600(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$4;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils;->uploadDndModeInfo(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
