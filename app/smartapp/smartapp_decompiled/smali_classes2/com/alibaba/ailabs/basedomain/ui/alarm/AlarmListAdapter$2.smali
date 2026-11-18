.class Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter$2;
.super Ljava/lang/Object;
.source "AlarmListAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;

.field final synthetic val$alarm:Lcom/alibaba/ailabs/basedomain/model/alarm/Alarm;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;ILcom/alibaba/ailabs/basedomain/model/alarm/Alarm;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter$2;->this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;

    iput p2, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter$2;->val$position:I

    iput-object p3, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter$2;->val$alarm:Lcom/alibaba/ailabs/basedomain/model/alarm/Alarm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlarmListAdapter onTouch event:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlarmListAdapter"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    .line 126
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    .line 127
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "viewWidth:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " scrollX:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter$2;->this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;

    invoke-static {v4}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;->access$000(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v3, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter$2;->this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;

    invoke-static {v3}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;->access$000(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;)I

    move-result v3

    div-int/lit8 p2, p2, 0x3

    if-le v3, p2, :cond_0

    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter$2;->this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;

    invoke-static {p2}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;->access$100(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;)Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter$IScrollDeleteListener;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 129
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "holder.isDeleted position:"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter$2;->val$position:I

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " alarm:"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter$2;->val$alarm:Lcom/alibaba/ailabs/basedomain/model/alarm/Alarm;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " view:"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter$2;->this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;

    invoke-static {p2}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;->access$100(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;)Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter$IScrollDeleteListener;

    move-result-object p2

    iget v3, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter$2;->val$position:I

    iget-object v4, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter$2;->val$alarm:Lcom/alibaba/ailabs/basedomain/model/alarm/Alarm;

    invoke-virtual {v4}, Lcom/alibaba/ailabs/basedomain/model/alarm/Alarm;->getMemoId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {p2, v3, p1, v4, v5}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter$IScrollDeleteListener;->onDelete(ILandroid/view/View;J)V

    .line 131
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete position:"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter$2;->val$position:I

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p2, "\u6ed1\u52a8\u8ddd\u79bb\u4e0d\u8db3\uff0c\u4e0d\u5220\u9664, \u6062\u590d"

    .line 133
    invoke-static {v1, p2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :goto_0
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter$2;->this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;

    invoke-static {p2}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;->access$000(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;)I

    move-result p2

    neg-int p2, p2

    invoke-virtual {p1, p2, v0}, Landroid/view/View;->scrollBy(II)V

    return v2

    :cond_1
    return v0
.end method
