.class Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "AlarmListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field bgSelectState:Landroid/widget/ImageView;

.field ivDelete:Landroid/widget/ImageView;

.field tvAlarmCycle:Landroid/widget/TextView;

.field tvAlarmRingTime:Landroid/widget/TextView;

.field tvAlarmRingType:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 125
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 126
    sget v0, Lcom/alibaba/ailabs/basedomain/R$id;->iv_delete:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter$ViewHolder;->ivDelete:Landroid/widget/ImageView;

    .line 127
    sget v0, Lcom/alibaba/ailabs/basedomain/R$id;->bg_select_state:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter$ViewHolder;->bgSelectState:Landroid/widget/ImageView;

    .line 128
    sget v0, Lcom/alibaba/ailabs/basedomain/R$id;->tv_alarm_cycle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter$ViewHolder;->tvAlarmCycle:Landroid/widget/TextView;

    .line 129
    sget v0, Lcom/alibaba/ailabs/basedomain/R$id;->tv_alarm_ring_time:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter$ViewHolder;->tvAlarmRingTime:Landroid/widget/TextView;

    .line 130
    sget v0, Lcom/alibaba/ailabs/basedomain/R$id;->tv_alarm_ring_type:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter$ViewHolder;->tvAlarmRingType:Landroid/widget/TextView;

    return-void
.end method
