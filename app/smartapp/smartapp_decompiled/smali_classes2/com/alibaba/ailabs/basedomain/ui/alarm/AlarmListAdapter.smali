.class public Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AlarmListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter$IScrollDeleteListener;,
        Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter$Holder;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AlarmListAdapter"


# instance fields
.field private holder:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter$Holder;

.field private mAddedAlarmId:J

.field private mAlrmData:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;

.field private mContext:Landroid/content/Context;

.field private mLastScrollX:I

.field private mListener:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter$IScrollDeleteListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;)V
    .locals 2

    .line 35
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 36
    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;->mAlrmData:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;

    .line 37
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;->mContext:Landroid/content/Context;

    .line 38
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;->mAlrmData:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;->getAddedAlarm()Lcom/alibaba/ailabs/basedomain/model/alarm/Alarm;

    move-result-object p1

    const-string p2, "AlarmListAdapter"

    if-eqz p1, :cond_0

    .line 39
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mAlrmData.getAddedAlarm(): "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;->mAlrmData:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;->getAddedAlarm()Lcom/alibaba/ailabs/basedomain/model/alarm/Alarm;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;->mAlrmData:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;->getAddedAlarm()Lcom/alibaba/ailabs/basedomain/model/alarm/Alarm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/model/alarm/Alarm;->getMemoId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;->mAddedAlarmId:J

    .line 42
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "init AlarmListAdapter, data:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;->mAlrmData:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;->mLastScrollX:I

    return p0
.end method

.method static synthetic access$002(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;I)I
    .locals 0

    .line 26
    iput p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;->mLastScrollX:I

    return p1
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;)Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter$IScrollDeleteListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;->mListener:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter$IScrollDeleteListener;

    return-object p0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;->mAlrmData:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;->mAlrmData:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;->get(I)Lcom/alibaba/ailabs/basedomain/model/alarm/Alarm;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 74
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getView, position:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " convertView:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "AlarmListAdapter"

    invoke-static {v0, p3}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 76
    new-instance p2, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter$Holder;

    invoke-direct {p2, p0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter$Holder;-><init>(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;)V

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;->holder:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter$Holder;

    .line 77
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/alibaba/ailabs/basedomain/GenieLayoutInflater;->from(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/GenieLayoutInflater;

    move-result-object p2

    const/4 p3, 0x1

    .line 78
    sput-boolean p3, Lcom/alibaba/ailabs/basedomain/HDUtils;->adaptiveIfNeed:Z

    const/4 p3, 0x0

    const-string v1, "base_domain_alarm_domain_alarm_list_item"

    .line 79
    invoke-virtual {p2, v1, p3}, Lcom/alibaba/ailabs/basedomain/GenieLayoutInflater;->inflate(Ljava/lang/String;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const/4 p3, 0x0

    .line 80
    sput-boolean p3, Lcom/alibaba/ailabs/basedomain/HDUtils;->adaptiveIfNeed:Z

    .line 81
    iget-object p3, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;->holder:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter$Holder;

    sget v1, Lcom/alibaba/ailabs/basedomain/R$id;->index:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter$Holder;->indexView:Landroid/widget/TextView;

    .line 82
    iget-object p3, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;->holder:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter$Holder;

    sget v1, Lcom/alibaba/ailabs/basedomain/R$id;->repeat:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter$Holder;->repeatView:Landroid/widget/TextView;

    .line 83
    iget-object p3, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;->holder:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter$Holder;

    sget v1, Lcom/alibaba/ailabs/basedomain/R$id;->time:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter$Holder;->timeView:Landroid/widget/TextView;

    .line 84
    iget-object p3, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;->holder:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter$Holder;

    sget v1, Lcom/alibaba/ailabs/basedomain/R$id;->ring:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter$Holder;->ringView:Landroid/widget/TextView;

    .line 85
    iget-object p3, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;->holder:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter$Holder;

    sget v1, Lcom/alibaba/ailabs/basedomain/R$id;->item_bg:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p3, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter$Holder;->item:Landroid/widget/RelativeLayout;

    .line 86
    iget-object p3, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;->holder:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter$Holder;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 87
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "origin, convertView:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " rotationx:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/View;->getRotationX()F

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " alpha:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 87
    invoke-static {v0, p3}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter$Holder;

    iput-object p3, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;->holder:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter$Holder;

    .line 92
    :goto_0
    iget-object p3, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;->mAlrmData:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;

    invoke-virtual {p3, p1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;->get(I)Lcom/alibaba/ailabs/basedomain/model/alarm/Alarm;

    move-result-object p3

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getView alarm:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;->holder:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter$Holder;

    iget-object v1, v1, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter$Holder;->indexView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/alibaba/ailabs/basedomain/model/alarm/Alarm;->getIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;->holder:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter$Holder;

    iget-object v1, v1, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter$Holder;->repeatView:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/alibaba/ailabs/basedomain/model/alarm/Alarm;->getRepeatType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;->holder:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter$Holder;

    iget-object v1, v1, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter$Holder;->timeView:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/alibaba/ailabs/basedomain/model/alarm/Alarm;->getViewTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;->holder:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter$Holder;

    iget-object v1, v1, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter$Holder;->ringView:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/alibaba/ailabs/basedomain/model/alarm/Alarm;->getRingType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-wide v1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;->mAddedAlarmId:J

    invoke-virtual {p3}, Lcom/alibaba/ailabs/basedomain/model/alarm/Alarm;->getMemoId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getView mAddedAlarmId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;->mAddedAlarmId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " position:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " alarm:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;->holder:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter$Holder;

    iget-object v0, v0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter$Holder;->item:Landroid/widget/RelativeLayout;

    const-string v1, "#282C2D"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 101
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;->holder:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter$Holder;

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter$Holder;->bg:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_1
    const-string v1, "restore convert view bg"

    .line 103
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;->holder:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter$Holder;

    iget-object v0, v0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter$Holder;->item:Landroid/widget/RelativeLayout;

    const-string v1, "#00000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 107
    :goto_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 108
    new-instance v0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter$1;-><init>(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 121
    :cond_2
    new-instance v0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter$2;

    invoke-direct {v0, p0, p1, p3}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter$2;-><init>(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;ILcom/alibaba/ailabs/basedomain/model/alarm/Alarm;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-object p2
.end method

.method public setDeleteListener(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter$IScrollDeleteListener;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;->mListener:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter$IScrollDeleteListener;

    return-void
.end method

.method public updateData(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;)V
    .locals 3

    .line 46
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;->mAlrmData:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;

    .line 47
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;->mAlrmData:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;->getAddedAlarm()Lcom/alibaba/ailabs/basedomain/model/alarm/Alarm;

    move-result-object p1

    const-string v0, "AlarmListAdapter"

    if-eqz p1, :cond_0

    .line 48
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateData mAlrmData.getAddedAlarm(): "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;->mAlrmData:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;->getAddedAlarm()Lcom/alibaba/ailabs/basedomain/model/alarm/Alarm;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;->mAlrmData:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;->getAddedAlarm()Lcom/alibaba/ailabs/basedomain/model/alarm/Alarm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/model/alarm/Alarm;->getMemoId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;->mAddedAlarmId:J

    .line 51
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateData AlarmListAdapter, data:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;->mAlrmData:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
