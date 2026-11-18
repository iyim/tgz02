.class Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity$2;
.super Ljava/lang/Object;
.source "TimeDisturbActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity$2;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 81
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity$2;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->access$000(Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;)V

    const-string p1, "TimeDisturbActivity"

    const-string v0, "Time Cycle mode period changes, upload info to server."

    .line 82
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity$2;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils;->uploadDndModeInfo(Landroid/content/Context;)V

    .line 84
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity$2;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/SharedPreferenceUtils;->getTimeCycleModeStatus(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Time Cycle mode ENABLED, set alarm for it."

    .line 86
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User select alarm time. startHour="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity$2;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->access$100(Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; startMin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity$2;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->access$200(Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; endHour="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity$2;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;

    .line 88
    invoke-static {v1}, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->access$300(Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; endMin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity$2;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->access$400(Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity$2;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->access$100(Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;)I

    move-result p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity$2;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->access$200(Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity$2;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->access$300(Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity$2;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->access$400(Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;)I

    move-result v2

    invoke-static {p1, v0, v1, v2}, Lcom/alibaba/ailabs/genie/utils/TimeUtils;->isLastToNextDay(IIII)Z

    move-result p1

    .line 92
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity$2;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->access$100(Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity$2;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->access$200(Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;)I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "TimeDisturbActivity Set TCM start time,"

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils;->createGivenCalendar(IIILjava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity$2;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->access$300(Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;)I

    move-result v1

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity$2;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->access$400(Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;)I

    move-result v3

    const-string v4, "TimeDisturbActivity Set TCM end time,"

    invoke-static {v1, v3, p1, v4}, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils;->createGivenCalendar(IIILjava/lang/String;)Ljava/util/Calendar;

    move-result-object p1

    .line 94
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity$2;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->access$600(Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;)Landroid/app/AlarmManager;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity$2;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->access$500(Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 95
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity$2;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->access$600(Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;)Landroid/app/AlarmManager;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity$2;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->access$700(Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {v0, v2, v3, v4, p1}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    :cond_0
    const-string v0, "Time Cycle mode DISABLED, skip setting alarm."

    .line 97
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :goto_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity$2;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->finish()V

    return-void
.end method
