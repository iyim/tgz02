.class Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$6;
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

    .line 419
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$6;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    monitor-enter p0

    .line 422
    :try_start_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$6;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$2100(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)Landroid/widget/Switch;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$6;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$2200(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)Z

    move-result p2

    if-eq p1, p2, :cond_2

    .line 423
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$6;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$6;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$2200(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$2202(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;Z)Z

    .line 424
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$6;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$2100(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)Landroid/widget/Switch;

    move-result-object p1

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$6;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$2200(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 425
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$6;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "call_quiet"

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$6;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$2200(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)Z

    move-result v1

    invoke-static {p1, p2, v1}, Lcom/alibaba/ailabs/genie/utils/SharedPreferenceUtils;->putBooleanToDisturbModel(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 426
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$6;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$1200(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;Z)V

    const-string p1, "NotDisturbActivity"

    .line 428
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DNDMode phone call quiet clicked, update DND mode info to server. value="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$6;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$2200(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$6;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$2200(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "1"

    goto :goto_1

    :cond_1
    const-string p1, "0"

    :goto_1
    const-string p2, "persist.sys.call_mute"

    .line 430
    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 431
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$6;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils;->uploadDndModeInfo(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
