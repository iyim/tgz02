.class Lcom/alibaba/genie/alarm/view/TimeSelectView$9;
.super Ljava/lang/Object;
.source "TimeSelectView.java"

# interfaces
.implements Landroid/widget/TimePicker$OnTimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/genie/alarm/view/TimeSelectView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/alarm/view/TimeSelectView;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/alarm/view/TimeSelectView;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView$9;->this$0:Lcom/alibaba/genie/alarm/view/TimeSelectView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeChanged(Landroid/widget/TimePicker;II)V
    .locals 4

    .line 182
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onTimeChangedListener #onTimeChanged  :  hourOfDay  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "   : minute "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AlarmListActivity:"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x8

    if-ge p2, p1, :cond_0

    add-int/lit8 p2, p2, 0x18

    :cond_0
    sub-int/2addr p2, p1

    .line 188
    iget-object p1, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView$9;->this$0:Lcom/alibaba/genie/alarm/view/TimeSelectView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "0"

    const/16 v2, 0xa

    if-ge p2, v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge p3, v2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_2
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :goto_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ":00"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/alibaba/genie/alarm/view/TimeSelectView;->access$102(Lcom/alibaba/genie/alarm/view/TimeSelectView;Ljava/lang/String;)Ljava/lang/String;

    .line 189
    iget-object p1, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView$9;->this$0:Lcom/alibaba/genie/alarm/view/TimeSelectView;

    invoke-static {p1}, Lcom/alibaba/genie/alarm/view/TimeSelectView;->access$400(Lcom/alibaba/genie/alarm/view/TimeSelectView;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 192
    :cond_3
    iget-object p1, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView$9;->this$0:Lcom/alibaba/genie/alarm/view/TimeSelectView;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/alibaba/genie/alarm/view/TimeSelectView;->access$402(Lcom/alibaba/genie/alarm/view/TimeSelectView;Z)Z

    const/4 p1, 0x0

    const-string p2, "time_change"

    const-string p3, "alarmclock_display"

    const-string v0, "a1z3lt.12021506"

    .line 193
    invoke-static {p2, p3, v0, p1}, Lcom/alibaba/ailabs/basedomain/common/CommonUtil;->eventUT(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
