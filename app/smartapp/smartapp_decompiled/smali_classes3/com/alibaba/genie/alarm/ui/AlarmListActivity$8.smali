.class Lcom/alibaba/genie/alarm/ui/AlarmListActivity$8;
.super Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView;
.source "AlarmListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->showWeeklyPickView(Lcom/alibaba/genie/alarm/bean/AlarmBean;)V
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

    .line 457
    iput-object p1, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity$8;->this$0:Lcom/alibaba/genie/alarm/ui/AlarmListActivity;

    invoke-direct {p0, p2}, Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onCancelClicked()V
    .locals 2

    .line 467
    iget-object v0, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity$8;->this$0:Lcom/alibaba/genie/alarm/ui/AlarmListActivity;

    invoke-virtual {v0}, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 468
    iget-object v1, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity$8;->this$0:Lcom/alibaba/genie/alarm/ui/AlarmListActivity;

    invoke-static {v1}, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->access$1100(Lcom/alibaba/genie/alarm/ui/AlarmListActivity;)Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public onSaveClicked(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 460
    iget-object v0, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity$8;->this$0:Lcom/alibaba/genie/alarm/ui/AlarmListActivity;

    invoke-virtual {v0}, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 461
    iget-object v1, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity$8;->this$0:Lcom/alibaba/genie/alarm/ui/AlarmListActivity;

    invoke-static {v1}, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->access$1100(Lcom/alibaba/genie/alarm/ui/AlarmListActivity;)Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 462
    iget-object v0, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity$8;->this$0:Lcom/alibaba/genie/alarm/ui/AlarmListActivity;

    invoke-static {v0, p1}, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->access$802(Lcom/alibaba/genie/alarm/ui/AlarmListActivity;Ljava/util/List;)Ljava/util/List;

    return-void
.end method
