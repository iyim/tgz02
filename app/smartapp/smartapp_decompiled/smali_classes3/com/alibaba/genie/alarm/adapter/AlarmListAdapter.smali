.class public Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "AlarmListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter$ViewHolder;,
        Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter$OnClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AlarmListAdapter:"

.field public static final TYPE_DELETE:I = 0x1

.field public static final TYPE_MODIFY:I = 0x2


# instance fields
.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/genie/alarm/bean/AlarmBean;",
            ">;"
        }
    .end annotation
.end field

.field private onClickListener:Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter$OnClickListener;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/genie/alarm/bean/AlarmBean;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter;->onClickListener:Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter$OnClickListener;

    .line 36
    iput-object p1, p0, Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter;->items:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter;)Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter$OnClickListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter;->onClickListener:Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter$OnClickListener;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter;->items:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 24
    check-cast p1, Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter;->onBindViewHolder(Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter$ViewHolder;I)V
    .locals 7
    .param p1    # Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 79
    iget-object v0, p0, Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter;->items:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p2, :cond_0

    goto/16 :goto_3

    .line 82
    :cond_0
    iget-object v0, p1, Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter$ViewHolder;->tvAlarmCycle:Landroid/widget/TextView;

    .line 83
    iget-object v1, p1, Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter$ViewHolder;->tvAlarmRingTime:Landroid/widget/TextView;

    .line 84
    iget-object v2, p1, Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter$ViewHolder;->tvAlarmRingType:Landroid/widget/TextView;

    .line 85
    iget-object v3, p0, Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter;->items:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alibaba/genie/alarm/bean/AlarmBean;

    .line 86
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\nRecyclerView#onBindViewHolder:\u95f9\u949f : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/alibaba/genie/alarm/bean/AlarmBean;->getAlarmId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "\n\u97f3\u4e50\u7535\u53f0 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {p2}, Lcom/alibaba/genie/alarm/bean/AlarmBean;->getMusicDTO()Lcom/alibaba/genie/alarm/bean/AlarmBean$MusicDTO;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/genie/alarm/bean/AlarmBean$MusicDTO;->getMusicTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n\u95f9\u94c3\u5468\u671f : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {p2}, Lcom/alibaba/genie/alarm/bean/AlarmBean;->getScheduleDTO()Lcom/alibaba/genie/alarm/bean/AlarmBean$ScheduleDTO;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/genie/alarm/bean/AlarmBean$ScheduleDTO;->getScheduleType()Lcom/alibaba/genie/alarm/bean/AlarmBean$ScheduleType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/genie/alarm/bean/AlarmBean$ScheduleType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n\u95f9\u94c3\u65f6\u95f4 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {p2}, Lcom/alibaba/genie/alarm/bean/AlarmBean;->getScheduleDTO()Lcom/alibaba/genie/alarm/bean/AlarmBean$ScheduleDTO;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/genie/alarm/bean/AlarmBean$ScheduleDTO;->getDateTimes()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/alibaba/genie/alarm/utils/TimeUtils;->transition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n uuid :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {p2}, Lcom/alibaba/genie/alarm/bean/AlarmBean;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AlarmListActivity:"

    .line 86
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {p2}, Lcom/alibaba/genie/alarm/bean/AlarmBean;->getScheduleDTO()Lcom/alibaba/genie/alarm/bean/AlarmBean$ScheduleDTO;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/genie/alarm/bean/AlarmBean$ScheduleDTO;->getDateTimes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 92
    invoke-static {v3}, Lcom/alibaba/genie/alarm/utils/ISODateUtils;->parseDateToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v4, "TYPE_TIME"

    .line 93
    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 94
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    :cond_1
    invoke-virtual {p2}, Lcom/alibaba/genie/alarm/bean/AlarmBean;->getMusicDTO()Lcom/alibaba/genie/alarm/bean/AlarmBean$MusicDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/genie/alarm/bean/AlarmBean$MusicDTO;->getMusicName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p2}, Lcom/alibaba/genie/alarm/bean/AlarmBean;->getMusicDTO()Lcom/alibaba/genie/alarm/bean/AlarmBean$MusicDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/genie/alarm/bean/AlarmBean$MusicDTO;->getMusicName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/alibaba/genie/alarm/bean/AlarmBean;->getMusicDTO()Lcom/alibaba/genie/alarm/bean/AlarmBean$MusicDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/genie/alarm/bean/AlarmBean$MusicDTO;->getMusicTypeName()Ljava/lang/String;

    move-result-object v1

    .line 97
    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    invoke-virtual {p2}, Lcom/alibaba/genie/alarm/bean/AlarmBean;->getScheduleDTO()Lcom/alibaba/genie/alarm/bean/AlarmBean$ScheduleDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/genie/alarm/bean/AlarmBean$ScheduleDTO;->getScheduleType()Lcom/alibaba/genie/alarm/bean/AlarmBean$ScheduleType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/genie/alarm/bean/AlarmBean$ScheduleType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/alibaba/genie/alarm/bean/AlarmBean;->getScheduleDTO()Lcom/alibaba/genie/alarm/bean/AlarmBean$ScheduleDTO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/genie/alarm/bean/AlarmBean$ScheduleDTO;->getDaysOfWeek()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2, v3}, Lcom/alibaba/genie/alarm/utils/AlarmRingType;->getTypeName(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-boolean v0, p2, Lcom/alibaba/genie/alarm/bean/AlarmBean;->isShowDelete:Z

    if-eqz v0, :cond_3

    .line 101
    iget-object v0, p1, Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter$ViewHolder;->ivDelete:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 103
    :cond_3
    iget-object v0, p1, Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter$ViewHolder;->ivDelete:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 105
    :goto_1
    iget-object v0, p1, Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter$ViewHolder;->ivDelete:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/alibaba/genie/alarm/bean/AlarmBean;->getAlarmId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 106
    iget-boolean v0, p2, Lcom/alibaba/genie/alarm/bean/AlarmBean;->isShowSelected:Z

    if-eqz v0, :cond_4

    .line 107
    iget-object v0, p1, Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter$ViewHolder;->bgSelectState:Landroid/widget/ImageView;

    sget v1, Lcom/alibaba/ailabs/basedomain/R$drawable;->bg_selected_alarm_item_detail:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 109
    :cond_4
    iget-object v0, p1, Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter$ViewHolder;->bgSelectState:Landroid/widget/ImageView;

    sget v1, Lcom/alibaba/ailabs/basedomain/R$drawable;->bg_unselected_alarm_item_detail:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 111
    :goto_2
    iget-object p1, p1, Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter$ViewHolder;->bgSelectState:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter$ViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 42
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/alibaba/ailabs/basedomain/R$layout;->item_alarm_detail:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 43
    new-instance p2, Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter$ViewHolder;

    invoke-direct {p2, p1}, Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 44
    iget-object p1, p2, Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter$ViewHolder;->ivDelete:Landroid/widget/ImageView;

    new-instance v0, Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter$1;

    invoke-direct {v0, p0}, Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter$1;-><init>(Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object p1, p2, Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter$ViewHolder;->bgSelectState:Landroid/widget/ImageView;

    new-instance v0, Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter$2;

    invoke-direct {v0, p0}, Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter$2;-><init>(Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public setOnClickListener(Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter$OnClickListener;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter;->onClickListener:Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter$OnClickListener;

    return-void
.end method
