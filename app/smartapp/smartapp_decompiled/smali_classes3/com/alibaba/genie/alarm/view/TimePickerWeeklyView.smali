.class public abstract Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView;
.super Lcom/alibaba/genie/alarm/view/BaseRelativeView;
.source "TimePickerWeeklyView.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TimePickerWeeklyView:"


# instance fields
.field private alarmBean:Lcom/alibaba/genie/alarm/bean/AlarmBean;

.field private swvFive:Lcom/alibaba/genie/alarm/view/SingleWeeklyView;

.field private swvFour:Lcom/alibaba/genie/alarm/view/SingleWeeklyView;

.field private swvOne:Lcom/alibaba/genie/alarm/view/SingleWeeklyView;

.field private swvSeven:Lcom/alibaba/genie/alarm/view/SingleWeeklyView;

.field private swvSix:Lcom/alibaba/genie/alarm/view/SingleWeeklyView;

.field private swvThree:Lcom/alibaba/genie/alarm/view/SingleWeeklyView;

.field private swvTwo:Lcom/alibaba/genie/alarm/view/SingleWeeklyView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/alibaba/genie/alarm/view/BaseRelativeView;-><init>(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/alibaba/genie/alarm/view/BaseRelativeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/genie/alarm/view/BaseRelativeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/genie/alarm/view/BaseRelativeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000(Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView;)Ljava/util/List;
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView;->getWeeklyResult()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private getWeeklyResult()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 88
    iget-object v1, p0, Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView;->swvOne:Lcom/alibaba/genie/alarm/view/SingleWeeklyView;

    invoke-virtual {v1}, Lcom/alibaba/genie/alarm/view/SingleWeeklyView;->isTabSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 89
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView;->swvTwo:Lcom/alibaba/genie/alarm/view/SingleWeeklyView;

    invoke-virtual {v1}, Lcom/alibaba/genie/alarm/view/SingleWeeklyView;->isTabSelected()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    .line 92
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_1
    iget-object v1, p0, Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView;->swvThree:Lcom/alibaba/genie/alarm/view/SingleWeeklyView;

    invoke-virtual {v1}, Lcom/alibaba/genie/alarm/view/SingleWeeklyView;->isTabSelected()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    .line 95
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_2
    iget-object v1, p0, Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView;->swvFour:Lcom/alibaba/genie/alarm/view/SingleWeeklyView;

    invoke-virtual {v1}, Lcom/alibaba/genie/alarm/view/SingleWeeklyView;->isTabSelected()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    .line 98
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_3
    iget-object v1, p0, Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView;->swvFive:Lcom/alibaba/genie/alarm/view/SingleWeeklyView;

    invoke-virtual {v1}, Lcom/alibaba/genie/alarm/view/SingleWeeklyView;->isTabSelected()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    .line 101
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_4
    iget-object v1, p0, Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView;->swvSix:Lcom/alibaba/genie/alarm/view/SingleWeeklyView;

    invoke-virtual {v1}, Lcom/alibaba/genie/alarm/view/SingleWeeklyView;->isTabSelected()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x6

    .line 104
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_5
    iget-object v1, p0, Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView;->swvSeven:Lcom/alibaba/genie/alarm/view/SingleWeeklyView;

    invoke-virtual {v1}, Lcom/alibaba/genie/alarm/view/SingleWeeklyView;->isTabSelected()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x7

    .line 107
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object v0
.end method

.method private initData()V
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView;->alarmBean:Lcom/alibaba/genie/alarm/bean/AlarmBean;

    if-nez v0, :cond_0

    return-void

    .line 131
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/genie/alarm/bean/AlarmBean;->getScheduleDTO()Lcom/alibaba/genie/alarm/bean/AlarmBean$ScheduleDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/genie/alarm/bean/AlarmBean$ScheduleDTO;->getScheduleType()Lcom/alibaba/genie/alarm/bean/AlarmBean$ScheduleType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/genie/alarm/bean/AlarmBean$ScheduleType;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WEEKLY"

    .line 132
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView;->swvOne:Lcom/alibaba/genie/alarm/view/SingleWeeklyView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/genie/alarm/view/SingleWeeklyView;->setTabSelected(Z)V

    .line 134
    iget-object v0, p0, Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView;->swvTwo:Lcom/alibaba/genie/alarm/view/SingleWeeklyView;

    invoke-virtual {v0, v1}, Lcom/alibaba/genie/alarm/view/SingleWeeklyView;->setTabSelected(Z)V

    .line 135
    iget-object v0, p0, Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView;->swvThree:Lcom/alibaba/genie/alarm/view/SingleWeeklyView;

    invoke-virtual {v0, v1}, Lcom/alibaba/genie/alarm/view/SingleWeeklyView;->setTabSelected(Z)V

    .line 136
    iget-object v0, p0, Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView;->swvFour:Lcom/alibaba/genie/alarm/view/SingleWeeklyView;

    invoke-virtual {v0, v1}, Lcom/alibaba/genie/alarm/view/SingleWeeklyView;->setTabSelected(Z)V

    .line 137
    iget-object v0, p0, Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView;->swvFive:Lcom/alibaba/genie/alarm/view/SingleWeeklyView;

    invoke-virtual {v0, v1}, Lcom/alibaba/genie/alarm/view/SingleWeeklyView;->setTabSelected(Z)V

    .line 138
    iget-object v0, p0, Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView;->swvSix:Lcom/alibaba/genie/alarm/view/SingleWeeklyView;

    invoke-virtual {v0, v1}, Lcom/alibaba/genie/alarm/view/SingleWeeklyView;->setTabSelected(Z)V

    .line 139
    iget-object v0, p0, Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView;->swvSeven:Lcom/alibaba/genie/alarm/view/SingleWeeklyView;

    invoke-virtual {v0, v1}, Lcom/alibaba/genie/alarm/view/SingleWeeklyView;->setTabSelected(Z)V

    return-void

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView;->alarmBean:Lcom/alibaba/genie/alarm/bean/AlarmBean;

    invoke-virtual {v0}, Lcom/alibaba/genie/alarm/bean/AlarmBean;->getScheduleDTO()Lcom/alibaba/genie/alarm/bean/AlarmBean$ScheduleDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/genie/alarm/bean/AlarmBean$ScheduleDTO;->getDaysOfWeek()Ljava/util/List;

    move-result-object v0

    .line 143
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 144
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 170
    :pswitch_0
    iget-object v1, p0, Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView;->swvSeven:Lcom/alibaba/genie/alarm/view/SingleWeeklyView;

    invoke-virtual {v1, v2}, Lcom/alibaba/genie/alarm/view/SingleWeeklyView;->setTabSelected(Z)V

    goto :goto_0

    .line 166
    :pswitch_1
    iget-object v1, p0, Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView;->swvSix:Lcom/alibaba/genie/alarm/view/SingleWeeklyView;

    invoke-virtual {v1, v2}, Lcom/alibaba/genie/alarm/view/SingleWeeklyView;->setTabSelected(Z)V

    goto :goto_0

    .line 162
    :pswitch_2
    iget-object v1, p0, Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView;->swvFive:Lcom/alibaba/genie/alarm/view/SingleWeeklyView;

    invoke-virtual {v1, v2}, Lcom/alibaba/genie/alarm/view/SingleWeeklyView;->setTabSelected(Z)V

    goto :goto_0

    .line 158
    :pswitch_3
    iget-object v1, p0, Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView;->swvFour:Lcom/alibaba/genie/alarm/view/SingleWeeklyView;

    invoke-virtual {v1, v2}, Lcom/alibaba/genie/alarm/view/SingleWeeklyView;->setTabSelected(Z)V

    goto :goto_0

    .line 154
    :pswitch_4
    iget-object v1, p0, Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView;->swvThree:Lcom/alibaba/genie/alarm/view/SingleWeeklyView;

    invoke-virtual {v1, v2}, Lcom/alibaba/genie/alarm/view/SingleWeeklyView;->setTabSelected(Z)V

    goto :goto_0

    .line 150
    :pswitch_5
    iget-object v1, p0, Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView;->swvTwo:Lcom/alibaba/genie/alarm/view/SingleWeeklyView;

    invoke-virtual {v1, v2}, Lcom/alibaba/genie/alarm/view/SingleWeeklyView;->setTabSelected(Z)V

    goto :goto_0

    .line 146
    :pswitch_6
    iget-object v1, p0, Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView;->swvOne:Lcom/alibaba/genie/alarm/view/SingleWeeklyView;

    invoke-virtual {v1, v2}, Lcom/alibaba/genie/alarm/view/SingleWeeklyView;->setTabSelected(Z)V

    goto :goto_0

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public dispatchData(Lcom/alibaba/genie/alarm/bean/AlarmBean;)V
    .locals 0
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .line 120
    iput-object p1, p0, Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView;->alarmBean:Lcom/alibaba/genie/alarm/bean/AlarmBean;

    .line 121
    invoke-virtual {p0}, Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 122
    invoke-direct {p0}, Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView;->initData()V

    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 182
    invoke-super {p0, p1}, Lcom/alibaba/genie/alarm/view/BaseRelativeView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchTouchEvent:  \u5f53\u524d\u4e8b\u4ef6\u662f\u5426\u6d88\u8d39\u6389"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TimePickerWeeklyView:"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method getInflateView()I
    .locals 1

    .line 46
    sget v0, Lcom/alibaba/ailabs/basedomain/R$layout;->view_weekly_picker:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 52
    invoke-super {p0}, Lcom/alibaba/genie/alarm/view/BaseRelativeView;->onAttachedToWindow()V

    .line 53
    iget-object v0, p0, Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/basedomain/R$id;->rl_background:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView$1;

    invoke-direct {v1, p0}, Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView$1;-><init>(Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v0, p0, Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/basedomain/R$id;->rl_main_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView$2;

    invoke-direct {v1, p0}, Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView$2;-><init>(Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v0, p0, Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/basedomain/R$id;->tv_cancel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView$3;

    invoke-direct {v1, p0}, Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView$3;-><init>(Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/basedomain/R$id;->tv_save:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView$4;

    invoke-direct {v1, p0}, Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView$4;-><init>(Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/basedomain/R$id;->swv_one:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/genie/alarm/view/SingleWeeklyView;

    iput-object v0, p0, Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView;->swvOne:Lcom/alibaba/genie/alarm/view/SingleWeeklyView;

    .line 77
    iget-object v0, p0, Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/basedomain/R$id;->swv_two:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/genie/alarm/view/SingleWeeklyView;

    iput-object v0, p0, Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView;->swvTwo:Lcom/alibaba/genie/alarm/view/SingleWeeklyView;

    .line 78
    iget-object v0, p0, Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/basedomain/R$id;->swv_three:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/genie/alarm/view/SingleWeeklyView;

    iput-object v0, p0, Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView;->swvThree:Lcom/alibaba/genie/alarm/view/SingleWeeklyView;

    .line 79
    iget-object v0, p0, Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/basedomain/R$id;->swv_four:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/genie/alarm/view/SingleWeeklyView;

    iput-object v0, p0, Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView;->swvFour:Lcom/alibaba/genie/alarm/view/SingleWeeklyView;

    .line 80
    iget-object v0, p0, Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/basedomain/R$id;->swv_five:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/genie/alarm/view/SingleWeeklyView;

    iput-object v0, p0, Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView;->swvFive:Lcom/alibaba/genie/alarm/view/SingleWeeklyView;

    .line 81
    iget-object v0, p0, Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/basedomain/R$id;->swv_six:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/genie/alarm/view/SingleWeeklyView;

    iput-object v0, p0, Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView;->swvSix:Lcom/alibaba/genie/alarm/view/SingleWeeklyView;

    .line 82
    iget-object v0, p0, Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/basedomain/R$id;->swv_seven:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/genie/alarm/view/SingleWeeklyView;

    iput-object v0, p0, Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView;->swvSeven:Lcom/alibaba/genie/alarm/view/SingleWeeklyView;

    .line 83
    invoke-direct {p0}, Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView;->initData()V

    return-void
.end method

.method public abstract onCancelClicked()V
.end method

.method public abstract onSaveClicked(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method
