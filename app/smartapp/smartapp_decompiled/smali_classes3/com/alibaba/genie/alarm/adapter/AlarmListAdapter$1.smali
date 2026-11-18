.class Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter$1;
.super Ljava/lang/Object;
.source "AlarmListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter$1;->this$0:Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick: \u5f53\u524d\u70b9\u51fb\u4e86\u5220\u9664"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlarmListAdapter:"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v0, p0, Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter$1;->this$0:Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter;

    invoke-static {v0}, Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter;->access$000(Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter;)Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter$OnClickListener;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "onClick: \u5f53\u524d\u70b9\u51fb\u4e86\u5220\u9664 \u63a5\u53e3\u4e3a\u7a7a"

    .line 52
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter$1;->this$0:Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter;

    invoke-static {v0}, Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter;->access$000(Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter;)Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter$OnClickListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter$OnClickListener;->onViewClicked(ILjava/lang/Object;)V

    return-void
.end method
