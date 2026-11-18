.class Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment$2;
.super Ljava/lang/Object;
.source "AlarmListFragment.java"

# interfaces
.implements Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter$IScrollDeleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment$2;->this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDelete(ILandroid/view/View;J)V
    .locals 2

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlarmListFragment onDelete, position:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " view width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "AlarmListFragment"

    .line 78
    invoke-static {v0, p2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment$2;->this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;

    invoke-static {p2}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;->access$000(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;)Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;->remove(I)Lcom/alibaba/ailabs/basedomain/model/alarm/Alarm;

    move-result-object p1

    .line 81
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment$2;->this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;

    invoke-static {p2}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;->access$100(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;)V

    .line 82
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment$2;->this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;

    invoke-static {p2}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;->access$200(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;)Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;->notifyDataSetChanged()V

    .line 83
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment$2;->this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;

    invoke-static {p2}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;->access$300(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;)Landroid/widget/ListView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ListView;->invalidate()V

    .line 84
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment$2;->this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;

    invoke-static {p2, p3, p4}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;->access$400(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;J)V

    .line 85
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "delItem:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment$2;->this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;->access$000(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;)Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;->size()I

    move-result p1

    const/4 p2, 0x1

    if-ge p1, p2, :cond_0

    .line 87
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment$2;->this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;->access$500(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;)V

    :cond_0
    return-void
.end method
