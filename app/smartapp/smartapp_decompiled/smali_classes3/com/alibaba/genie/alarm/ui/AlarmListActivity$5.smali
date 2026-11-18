.class Lcom/alibaba/genie/alarm/ui/AlarmListActivity$5;
.super Ljava/lang/Object;
.source "AlarmListActivity.java"

# interfaces
.implements Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/genie/alarm/ui/AlarmListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/alarm/ui/AlarmListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/alarm/ui/AlarmListActivity;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity$5;->this$0:Lcom/alibaba/genie/alarm/ui/AlarmListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewClicked(ILjava/lang/Object;)V
    .locals 4
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onViewClicked:  \u7c7b\u578b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlarmListActivity:"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 239
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 241
    iget-object v0, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity$5;->this$0:Lcom/alibaba/genie/alarm/ui/AlarmListActivity;

    invoke-static {v0}, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->access$000(Lcom/alibaba/genie/alarm/ui/AlarmListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    iget-object v0, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity$5;->this$0:Lcom/alibaba/genie/alarm/ui/AlarmListActivity;

    invoke-static {v0}, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->access$300(Lcom/alibaba/genie/alarm/ui/AlarmListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 244
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 245
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/genie/alarm/bean/AlarmBean;

    .line 246
    invoke-virtual {v1}, Lcom/alibaba/genie/alarm/bean/AlarmBean;->getAlarmId()J

    move-result-wide v1

    cmp-long v3, v1, p1

    if-nez v3, :cond_0

    .line 247
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity$5;->this$0:Lcom/alibaba/genie/alarm/ui/AlarmListActivity;

    invoke-static {v0}, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->access$400(Lcom/alibaba/genie/alarm/ui/AlarmListActivity;)Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 251
    iget-object v0, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity$5;->this$0:Lcom/alibaba/genie/alarm/ui/AlarmListActivity;

    invoke-static {v0}, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->access$400(Lcom/alibaba/genie/alarm/ui/AlarmListActivity;)Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter;->notifyDataSetChanged()V

    .line 255
    :cond_2
    iget-object v0, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity$5;->this$0:Lcom/alibaba/genie/alarm/ui/AlarmListActivity;

    invoke-static {v0, p1, p2}, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->access$500(Lcom/alibaba/genie/alarm/ui/AlarmListActivity;J)V

    .line 258
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 259
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "alarmId"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "delete_clock"

    const-string p2, "alarmclock_display"

    const-string v1, "a1z3lt.12021506"

    .line 260
    invoke-static {p1, p2, v1, v0}, Lcom/alibaba/ailabs/basedomain/common/CommonUtil;->eventUT(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    .line 262
    iget-object p1, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity$5;->this$0:Lcom/alibaba/genie/alarm/ui/AlarmListActivity;

    invoke-static {p1}, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->access$200(Lcom/alibaba/genie/alarm/ui/AlarmListActivity;)Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    .line 265
    :cond_4
    check-cast p2, Lcom/alibaba/genie/alarm/bean/AlarmBean;

    .line 266
    iget-object p1, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity$5;->this$0:Lcom/alibaba/genie/alarm/ui/AlarmListActivity;

    invoke-static {p1, p2}, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->access$600(Lcom/alibaba/genie/alarm/ui/AlarmListActivity;Lcom/alibaba/genie/alarm/bean/AlarmBean;)V

    :cond_5
    :goto_1
    return-void
.end method
