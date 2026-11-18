.class public abstract Lcom/alibaba/genie/alarm/view/TimeSelectView;
.super Lcom/alibaba/genie/alarm/view/BaseRelativeView;
.source "TimeSelectView.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# static fields
.field public static final SELECTED_CUSTOM:I = 0x4

.field public static final SELECTED_EVERYDAY:I = 0x3

.field public static final SELECTED_ONCE:I = 0x1

.field public static final SELECTED_STATUTORY:I = 0x2


# instance fields
.field private alarmBean:Lcom/alibaba/genie/alarm/bean/AlarmBean;

.field private hasReportData:Z

.field private ivIconPickCustom:Landroid/widget/ImageView;

.field private ivIconPickEveryday:Landroid/widget/ImageView;

.field private ivIconPickOnce:Landroid/widget/ImageView;

.field private ivIconPickStatutory:Landroid/widget/ImageView;

.field onTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

.field private stagedSchedule:Ljava/lang/String;

.field private stagedTime:Ljava/lang/String;

.field private tpTime:Landroid/widget/TimePicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/alibaba/genie/alarm/view/BaseRelativeView;-><init>(Landroid/content/Context;)V

    const-string p1, ""

    .line 31
    iput-object p1, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView;->stagedTime:Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView;->stagedSchedule:Ljava/lang/String;

    const/4 p1, 0x0

    .line 33
    iput-boolean p1, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView;->hasReportData:Z

    .line 178
    new-instance p1, Lcom/alibaba/genie/alarm/view/TimeSelectView$9;

    invoke-direct {p1, p0}, Lcom/alibaba/genie/alarm/view/TimeSelectView$9;-><init>(Lcom/alibaba/genie/alarm/view/TimeSelectView;)V

    iput-object p1, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView;->onTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/alibaba/genie/alarm/view/BaseRelativeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, ""

    .line 31
    iput-object p1, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView;->stagedTime:Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView;->stagedSchedule:Ljava/lang/String;

    const/4 p1, 0x0

    .line 33
    iput-boolean p1, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView;->hasReportData:Z

    .line 178
    new-instance p1, Lcom/alibaba/genie/alarm/view/TimeSelectView$9;

    invoke-direct {p1, p0}, Lcom/alibaba/genie/alarm/view/TimeSelectView$9;-><init>(Lcom/alibaba/genie/alarm/view/TimeSelectView;)V

    iput-object p1, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView;->onTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/genie/alarm/view/BaseRelativeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, ""

    .line 31
    iput-object p1, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView;->stagedTime:Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView;->stagedSchedule:Ljava/lang/String;

    const/4 p1, 0x0

    .line 33
    iput-boolean p1, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView;->hasReportData:Z

    .line 178
    new-instance p1, Lcom/alibaba/genie/alarm/view/TimeSelectView$9;

    invoke-direct {p1, p0}, Lcom/alibaba/genie/alarm/view/TimeSelectView$9;-><init>(Lcom/alibaba/genie/alarm/view/TimeSelectView;)V

    iput-object p1, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView;->onTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/genie/alarm/view/BaseRelativeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-string p1, ""

    .line 31
    iput-object p1, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView;->stagedTime:Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView;->stagedSchedule:Ljava/lang/String;

    const/4 p1, 0x0

    .line 33
    iput-boolean p1, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView;->hasReportData:Z

    .line 178
    new-instance p1, Lcom/alibaba/genie/alarm/view/TimeSelectView$9;

    invoke-direct {p1, p0}, Lcom/alibaba/genie/alarm/view/TimeSelectView$9;-><init>(Lcom/alibaba/genie/alarm/view/TimeSelectView;)V

    iput-object p1, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView;->onTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/genie/alarm/view/TimeSelectView;)Lcom/alibaba/genie/alarm/bean/AlarmBean;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView;->alarmBean:Lcom/alibaba/genie/alarm/bean/AlarmBean;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/genie/alarm/view/TimeSelectView;)Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView;->stagedTime:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/alibaba/genie/alarm/view/TimeSelectView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView;->stagedTime:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/alibaba/genie/alarm/view/TimeSelectView;)Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView;->stagedSchedule:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/genie/alarm/view/TimeSelectView;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/alibaba/genie/alarm/view/TimeSelectView;->selectTap(I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$400(Lcom/alibaba/genie/alarm/view/TimeSelectView;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView;->hasReportData:Z

    return p0
.end method

.method static synthetic access$402(Lcom/alibaba/genie/alarm/view/TimeSelectView;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView;->hasReportData:Z

    return p1
.end method

.method private initData()V
    .locals 7
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView;->alarmBean:Lcom/alibaba/genie/alarm/bean/AlarmBean;

    if-nez v0, :cond_0

    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView;->ivIconPickOnce:Landroid/widget/ImageView;

    sget v1, Lcom/alibaba/ailabs/basedomain/R$drawable;->icon_single_weekly_unselected:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 215
    iget-object v0, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView;->ivIconPickCustom:Landroid/widget/ImageView;

    sget v1, Lcom/alibaba/ailabs/basedomain/R$drawable;->icon_single_weekly_unselected:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 216
    iget-object v0, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView;->ivIconPickStatutory:Landroid/widget/ImageView;

    sget v1, Lcom/alibaba/ailabs/basedomain/R$drawable;->icon_single_weekly_unselected:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v0, 0x0

    .line 217
    iput-boolean v0, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView;->hasReportData:Z

    .line 220
    iget-object v1, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView;->tpTime:Landroid/widget/TimePicker;

    iget-object v2, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView;->alarmBean:Lcom/alibaba/genie/alarm/bean/AlarmBean;

    invoke-virtual {v2}, Lcom/alibaba/genie/alarm/bean/AlarmBean;->getScheduleDTO()Lcom/alibaba/genie/alarm/bean/AlarmBean$ScheduleDTO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/genie/alarm/bean/AlarmBean$ScheduleDTO;->getDateTimes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/alibaba/genie/alarm/utils/TimeUtils;->getHourTransition(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TimePicker;->setHour(I)V

    .line 221
    iget-object v1, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView;->tpTime:Landroid/widget/TimePicker;

    iget-object v2, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView;->alarmBean:Lcom/alibaba/genie/alarm/bean/AlarmBean;

    invoke-virtual {v2}, Lcom/alibaba/genie/alarm/bean/AlarmBean;->getScheduleDTO()Lcom/alibaba/genie/alarm/bean/AlarmBean$ScheduleDTO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/genie/alarm/bean/AlarmBean$ScheduleDTO;->getDateTimes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/alibaba/genie/alarm/utils/TimeUtils;->getMinutesTransition(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TimePicker;->setMinute(I)V

    .line 222
    iget-object v1, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView;->tpTime:Landroid/widget/TimePicker;

    iget-object v2, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView;->onTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    invoke-virtual {v1, v2}, Landroid/widget/TimePicker;->setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V

    .line 223
    iget-object v1, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView;->alarmBean:Lcom/alibaba/genie/alarm/bean/AlarmBean;

    invoke-virtual {v1}, Lcom/alibaba/genie/alarm/bean/AlarmBean;->getScheduleDTO()Lcom/alibaba/genie/alarm/bean/AlarmBean$ScheduleDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/genie/alarm/bean/AlarmBean$ScheduleDTO;->getScheduleType()Lcom/alibaba/genie/alarm/bean/AlarmBean$ScheduleType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/genie/alarm/bean/AlarmBean$ScheduleType;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    .line 224
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x679d8b7f

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v3, v4, :cond_3

    const v4, 0x251681

    if-eq v3, v4, :cond_2

    const v0, 0x5978340

    if-eq v3, v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "STATUTORY_DAY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    const-string v3, "ONCE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_3
    const-string v0, "WEEKLY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_7

    if-eq v0, v6, :cond_6

    if-eq v0, v5, :cond_5

    goto :goto_2

    .line 237
    :cond_5
    iget-object v0, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView;->ivIconPickStatutory:Landroid/widget/ImageView;

    sget v1, Lcom/alibaba/ailabs/basedomain/R$drawable;->icon_single_weekly_selected:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 233
    :cond_6
    iget-object v0, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView;->ivIconPickCustom:Landroid/widget/ImageView;

    sget v1, Lcom/alibaba/ailabs/basedomain/R$drawable;->icon_single_weekly_selected:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 227
    :cond_7
    iget-object v0, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView;->ivIconPickOnce:Landroid/widget/ImageView;

    sget v1, Lcom/alibaba/ailabs/basedomain/R$drawable;->icon_single_weekly_selected:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    return-void
.end method

.method private selectTap(I)V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView;->ivIconPickCustom:Landroid/widget/ImageView;

    sget v1, Lcom/alibaba/ailabs/basedomain/R$drawable;->icon_single_weekly_unselected:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 150
    iget-object v0, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView;->ivIconPickStatutory:Landroid/widget/ImageView;

    sget v1, Lcom/alibaba/ailabs/basedomain/R$drawable;->icon_single_weekly_unselected:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 151
    iget-object v0, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView;->ivIconPickOnce:Landroid/widget/ImageView;

    sget v1, Lcom/alibaba/ailabs/basedomain/R$drawable;->icon_single_weekly_unselected:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 152
    iget-object v0, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView;->ivIconPickEveryday:Landroid/widget/ImageView;

    sget v1, Lcom/alibaba/ailabs/basedomain/R$drawable;->icon_single_weekly_unselected:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 155
    :cond_0
    iget-object p1, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView;->ivIconPickCustom:Landroid/widget/ImageView;

    sget v0, Lcom/alibaba/ailabs/basedomain/R$drawable;->icon_single_weekly_selected:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 156
    iget-object p1, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView;->alarmBean:Lcom/alibaba/genie/alarm/bean/AlarmBean;

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/alarm/view/TimeSelectView;->onCustomSelectedClicked(Lcom/alibaba/genie/alarm/bean/AlarmBean;)V

    const-string p1, "WEEKLY"

    .line 157
    iput-object p1, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView;->stagedSchedule:Ljava/lang/String;

    goto :goto_0

    .line 171
    :cond_1
    iget-object p1, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView;->ivIconPickEveryday:Landroid/widget/ImageView;

    sget v0, Lcom/alibaba/ailabs/basedomain/R$drawable;->icon_single_weekly_selected:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 166
    :cond_2
    iget-object p1, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView;->ivIconPickStatutory:Landroid/widget/ImageView;

    sget v0, Lcom/alibaba/ailabs/basedomain/R$drawable;->icon_single_weekly_selected:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string p1, "STATUTORY_DAY"

    .line 167
    iput-object p1, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView;->stagedSchedule:Ljava/lang/String;

    goto :goto_0

    .line 161
    :cond_3
    iget-object p1, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView;->ivIconPickOnce:Landroid/widget/ImageView;

    sget v0, Lcom/alibaba/ailabs/basedomain/R$drawable;->icon_single_weekly_selected:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string p1, "ONCE"

    .line 162
    iput-object p1, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView;->stagedSchedule:Ljava/lang/String;

    :goto_0
    return-void
.end method


# virtual methods
.method public dispatchData(Lcom/alibaba/genie/alarm/bean/AlarmBean;)V
    .locals 0
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .line 200
    iput-object p1, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView;->alarmBean:Lcom/alibaba/genie/alarm/bean/AlarmBean;

    .line 201
    invoke-virtual {p0}, Lcom/alibaba/genie/alarm/view/TimeSelectView;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 202
    invoke-direct {p0}, Lcom/alibaba/genie/alarm/view/TimeSelectView;->initData()V

    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 252
    invoke-super {p0, p1}, Lcom/alibaba/genie/alarm/view/BaseRelativeView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method getInflateView()I
    .locals 1

    .line 57
    sget v0, Lcom/alibaba/ailabs/basedomain/R$layout;->view_time_select:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .line 64
    invoke-super {p0}, Lcom/alibaba/genie/alarm/view/BaseRelativeView;->onAttachedToWindow()V

    .line 65
    iget-object v0, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/basedomain/R$id;->iv_icon_pick_everyday:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView;->ivIconPickEveryday:Landroid/widget/ImageView;

    .line 66
    iget-object v0, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/basedomain/R$id;->iv_icon_pick_once:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView;->ivIconPickOnce:Landroid/widget/ImageView;

    .line 67
    iget-object v0, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/basedomain/R$id;->iv_icon_pick_statutory:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView;->ivIconPickStatutory:Landroid/widget/ImageView;

    .line 68
    iget-object v0, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/basedomain/R$id;->iv_icon_pick_custom:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView;->ivIconPickCustom:Landroid/widget/ImageView;

    .line 69
    iget-object v0, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/basedomain/R$id;->tp_time:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TimePicker;

    iput-object v0, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView;->tpTime:Landroid/widget/TimePicker;

    .line 70
    iget-object v0, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/basedomain/R$id;->rl_background:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/genie/alarm/view/TimeSelectView$1;

    invoke-direct {v1, p0}, Lcom/alibaba/genie/alarm/view/TimeSelectView$1;-><init>(Lcom/alibaba/genie/alarm/view/TimeSelectView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/basedomain/R$id;->rl_main_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/genie/alarm/view/TimeSelectView$2;

    invoke-direct {v1, p0}, Lcom/alibaba/genie/alarm/view/TimeSelectView$2;-><init>(Lcom/alibaba/genie/alarm/view/TimeSelectView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v0, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/basedomain/R$id;->tv_cancel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/genie/alarm/view/TimeSelectView$3;

    invoke-direct {v1, p0}, Lcom/alibaba/genie/alarm/view/TimeSelectView$3;-><init>(Lcom/alibaba/genie/alarm/view/TimeSelectView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v0, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/basedomain/R$id;->tv_save:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/genie/alarm/view/TimeSelectView$4;

    invoke-direct {v1, p0}, Lcom/alibaba/genie/alarm/view/TimeSelectView$4;-><init>(Lcom/alibaba/genie/alarm/view/TimeSelectView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v0, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/basedomain/R$id;->rl_pick_once:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/genie/alarm/view/TimeSelectView$5;

    invoke-direct {v1, p0}, Lcom/alibaba/genie/alarm/view/TimeSelectView$5;-><init>(Lcom/alibaba/genie/alarm/view/TimeSelectView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v0, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/basedomain/R$id;->rl_pick_statutory:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/genie/alarm/view/TimeSelectView$6;

    invoke-direct {v1, p0}, Lcom/alibaba/genie/alarm/view/TimeSelectView$6;-><init>(Lcom/alibaba/genie/alarm/view/TimeSelectView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v0, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/basedomain/R$id;->rl_pick_everyday:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/genie/alarm/view/TimeSelectView$7;

    invoke-direct {v1, p0}, Lcom/alibaba/genie/alarm/view/TimeSelectView$7;-><init>(Lcom/alibaba/genie/alarm/view/TimeSelectView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v0, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/basedomain/R$id;->rl_pick_custom:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/genie/alarm/view/TimeSelectView$8;

    invoke-direct {v1, p0}, Lcom/alibaba/genie/alarm/view/TimeSelectView$8;-><init>(Lcom/alibaba/genie/alarm/view/TimeSelectView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView;->tpTime:Landroid/widget/TimePicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :catch_0
    iget-object v0, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView;->tpTime:Landroid/widget/TimePicker;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 138
    invoke-direct {p0}, Lcom/alibaba/genie/alarm/view/TimeSelectView;->initData()V

    return-void
.end method

.method public abstract onCancelClicked()V
.end method

.method public abstract onCustomSelectedClicked(Lcom/alibaba/genie/alarm/bean/AlarmBean;)V
.end method

.method public abstract onSaveClicked(Lcom/alibaba/genie/alarm/bean/AlarmBean;Ljava/lang/String;Ljava/lang/String;)V
.end method
