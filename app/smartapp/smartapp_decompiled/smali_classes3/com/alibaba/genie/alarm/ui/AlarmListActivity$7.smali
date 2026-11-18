.class Lcom/alibaba/genie/alarm/ui/AlarmListActivity$7;
.super Lcom/alibaba/genie/alarm/view/TimeSelectView;
.source "AlarmListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->showTimeSelectView(Lcom/alibaba/genie/alarm/bean/AlarmBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/alarm/ui/AlarmListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/alarm/ui/AlarmListActivity;Landroid/content/Context;)V
    .locals 0

    .line 401
    iput-object p1, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity$7;->this$0:Lcom/alibaba/genie/alarm/ui/AlarmListActivity;

    invoke-direct {p0, p2}, Lcom/alibaba/genie/alarm/view/TimeSelectView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onCancelClicked()V
    .locals 2

    .line 430
    iget-object v0, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity$7;->this$0:Lcom/alibaba/genie/alarm/ui/AlarmListActivity;

    invoke-virtual {v0}, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 431
    iget-object v1, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity$7;->this$0:Lcom/alibaba/genie/alarm/ui/AlarmListActivity;

    invoke-static {v1}, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->access$900(Lcom/alibaba/genie/alarm/ui/AlarmListActivity;)Lcom/alibaba/genie/alarm/view/TimeSelectView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public onCustomSelectedClicked(Lcom/alibaba/genie/alarm/bean/AlarmBean;)V
    .locals 1

    .line 436
    iget-object v0, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity$7;->this$0:Lcom/alibaba/genie/alarm/ui/AlarmListActivity;

    invoke-static {v0, p1}, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->access$1000(Lcom/alibaba/genie/alarm/ui/AlarmListActivity;Lcom/alibaba/genie/alarm/bean/AlarmBean;)V

    return-void
.end method

.method public onSaveClicked(Lcom/alibaba/genie/alarm/bean/AlarmBean;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "WEEKLY"

    .line 404
    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity$7;->this$0:Lcom/alibaba/genie/alarm/ui/AlarmListActivity;

    invoke-static {v0}, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->access$800(Lcom/alibaba/genie/alarm/ui/AlarmListActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity$7;->this$0:Lcom/alibaba/genie/alarm/ui/AlarmListActivity;

    invoke-static {v0}, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->access$800(Lcom/alibaba/genie/alarm/ui/AlarmListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 405
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/MainApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    const-string p3, "\u8bf7\u9009\u62e9\u95f9\u949f\u65f6\u95f4"

    invoke-static {p1, p3, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 408
    :cond_1
    iget-object v0, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity$7;->this$0:Lcom/alibaba/genie/alarm/ui/AlarmListActivity;

    invoke-virtual {v0}, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 409
    iget-object v1, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity$7;->this$0:Lcom/alibaba/genie/alarm/ui/AlarmListActivity;

    invoke-static {v1}, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->access$900(Lcom/alibaba/genie/alarm/ui/AlarmListActivity;)Lcom/alibaba/genie/alarm/view/TimeSelectView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 410
    iget-object v2, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity$7;->this$0:Lcom/alibaba/genie/alarm/ui/AlarmListActivity;

    invoke-static {v2}, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->access$800(Lcom/alibaba/genie/alarm/ui/AlarmListActivity;)Ljava/util/List;

    move-result-object v5

    new-instance v7, Lcom/alibaba/genie/alarm/ui/AlarmListActivity$7$1;

    invoke-direct {v7, p0}, Lcom/alibaba/genie/alarm/ui/AlarmListActivity$7$1;-><init>(Lcom/alibaba/genie/alarm/ui/AlarmListActivity$7;)V

    move-object v3, p1

    move-object v4, p3

    move-object v6, p2

    invoke-static/range {v2 .. v7}, Lcom/alibaba/genie/alarm/request/UpdateAlarmRequest;->beginRequest(Landroid/content/Context;Lcom/alibaba/genie/alarm/bean/AlarmBean;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)V

    const/4 p1, 0x0

    const-string p2, "change_save"

    const-string p3, "alarmclock_display"

    const-string v0, "a1z3lt.12021506"

    .line 424
    invoke-static {p2, p3, v0, p1}, Lcom/alibaba/ailabs/basedomain/common/CommonUtil;->eventUT(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
