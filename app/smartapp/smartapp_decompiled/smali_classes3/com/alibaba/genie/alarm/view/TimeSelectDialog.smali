.class public Lcom/alibaba/genie/alarm/view/TimeSelectDialog;
.super Landroid/app/Dialog;
.source "TimeSelectDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TimePicker$OnTimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/genie/alarm/view/TimeSelectDialog$ISelectTimeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TimeSelectDialog"


# instance fields
.field private mBeginTimePicker:Landroid/widget/TimePicker;

.field private mCurEndTime:I

.field private mCurStartTime:I

.field private mEndTimePicker:Landroid/widget/TimePicker;

.field private mISelectTimeListener:Lcom/alibaba/genie/alarm/view/TimeSelectDialog$ISelectTimeListener;

.field private mPrevEndTime:I

.field private mPrevStartTime:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    .line 35
    sget v0, Lcom/alibaba/ailabs/basedomain/R$style;->dialog_bottom_full_time:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 36
    iput p2, p0, Lcom/alibaba/genie/alarm/view/TimeSelectDialog;->mPrevStartTime:I

    .line 37
    iput p3, p0, Lcom/alibaba/genie/alarm/view/TimeSelectDialog;->mPrevEndTime:I

    .line 39
    invoke-direct {p0, p1}, Lcom/alibaba/genie/alarm/view/TimeSelectDialog;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static getHour(I)I
    .locals 1

    .line 119
    div-int/lit8 p0, p0, 0x3c

    .line 120
    div-int/lit8 p0, p0, 0x3c

    if-gez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 v0, 0x17

    if-le p0, v0, :cond_1

    const/16 p0, 0x17

    :cond_1
    return p0
.end method

.method public static getMinute(I)I
    .locals 0

    .line 129
    div-int/lit8 p0, p0, 0x3c

    .line 130
    rem-int/lit8 p0, p0, 0x3c

    if-gez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
.end method

.method private getSeconds(II)I
    .locals 0

    mul-int/lit8 p1, p1, 0x3c

    mul-int/lit8 p1, p1, 0x3c

    mul-int/lit8 p2, p2, 0x3c

    add-int/2addr p1, p2

    return p1
.end method

.method private init(Landroid/content/Context;)V
    .locals 4

    .line 43
    invoke-static {}, Lcom/alibaba/ailabs/genie/density/GenieDensity;->updateApplication()Z

    move-result v0

    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 45
    sget v1, Lcom/alibaba/ailabs/basedomain/R$layout;->time_disturb_dialog:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 46
    invoke-virtual {p0, p1}, Lcom/alibaba/genie/alarm/view/TimeSelectDialog;->setContentView(Landroid/view/View;)V

    .line 48
    invoke-virtual {p0}, Lcom/alibaba/genie/alarm/view/TimeSelectDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v1, 0x50

    .line 49
    invoke-virtual {p1, v1}, Landroid/view/Window;->setGravity(I)V

    .line 50
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    .line 51
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 52
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 54
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x4000000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 55
    invoke-virtual {p1, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 58
    sget p1, Lcom/alibaba/ailabs/basedomain/R$id;->start_time_set:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/alarm/view/TimeSelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TimePicker;

    iput-object p1, p0, Lcom/alibaba/genie/alarm/view/TimeSelectDialog;->mBeginTimePicker:Landroid/widget/TimePicker;

    .line 59
    iget-object p1, p0, Lcom/alibaba/genie/alarm/view/TimeSelectDialog;->mBeginTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {p1, p0}, Landroid/widget/TimePicker;->setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V

    .line 60
    iget-object p1, p0, Lcom/alibaba/genie/alarm/view/TimeSelectDialog;->mBeginTimePicker:Landroid/widget/TimePicker;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 61
    iget-object p1, p0, Lcom/alibaba/genie/alarm/view/TimeSelectDialog;->mBeginTimePicker:Landroid/widget/TimePicker;

    iget v1, p0, Lcom/alibaba/genie/alarm/view/TimeSelectDialog;->mPrevStartTime:I

    invoke-static {v1}, Lcom/alibaba/genie/alarm/view/TimeSelectDialog;->getHour(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TimePicker;->setHour(I)V

    .line 62
    iget-object p1, p0, Lcom/alibaba/genie/alarm/view/TimeSelectDialog;->mBeginTimePicker:Landroid/widget/TimePicker;

    iget v1, p0, Lcom/alibaba/genie/alarm/view/TimeSelectDialog;->mPrevStartTime:I

    invoke-static {v1}, Lcom/alibaba/genie/alarm/view/TimeSelectDialog;->getMinute(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TimePicker;->setMinute(I)V

    .line 64
    sget p1, Lcom/alibaba/ailabs/basedomain/R$id;->end_time_set:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/alarm/view/TimeSelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TimePicker;

    iput-object p1, p0, Lcom/alibaba/genie/alarm/view/TimeSelectDialog;->mEndTimePicker:Landroid/widget/TimePicker;

    .line 65
    iget-object p1, p0, Lcom/alibaba/genie/alarm/view/TimeSelectDialog;->mEndTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {p1, p0}, Landroid/widget/TimePicker;->setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V

    .line 66
    iget-object p1, p0, Lcom/alibaba/genie/alarm/view/TimeSelectDialog;->mEndTimePicker:Landroid/widget/TimePicker;

    iget v1, p0, Lcom/alibaba/genie/alarm/view/TimeSelectDialog;->mPrevEndTime:I

    invoke-static {v1}, Lcom/alibaba/genie/alarm/view/TimeSelectDialog;->getHour(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TimePicker;->setHour(I)V

    .line 67
    iget-object p1, p0, Lcom/alibaba/genie/alarm/view/TimeSelectDialog;->mEndTimePicker:Landroid/widget/TimePicker;

    iget v1, p0, Lcom/alibaba/genie/alarm/view/TimeSelectDialog;->mPrevEndTime:I

    invoke-static {v1}, Lcom/alibaba/genie/alarm/view/TimeSelectDialog;->getMinute(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TimePicker;->setMinute(I)V

    .line 69
    iget-object p1, p0, Lcom/alibaba/genie/alarm/view/TimeSelectDialog;->mBeginTimePicker:Landroid/widget/TimePicker;

    const/high16 v1, 0x60000

    invoke-virtual {p1, v1}, Landroid/widget/TimePicker;->setDescendantFocusability(I)V

    .line 70
    iget-object p1, p0, Lcom/alibaba/genie/alarm/view/TimeSelectDialog;->mEndTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {p1, v1}, Landroid/widget/TimePicker;->setDescendantFocusability(I)V

    .line 72
    sget p1, Lcom/alibaba/ailabs/basedomain/R$id;->time_disable:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/alarm/view/TimeSelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    sget p1, Lcom/alibaba/ailabs/basedomain/R$id;->time_enable:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/alarm/view/TimeSelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget p1, p0, Lcom/alibaba/genie/alarm/view/TimeSelectDialog;->mPrevStartTime:I

    iput p1, p0, Lcom/alibaba/genie/alarm/view/TimeSelectDialog;->mCurStartTime:I

    .line 76
    iget p1, p0, Lcom/alibaba/genie/alarm/view/TimeSelectDialog;->mPrevEndTime:I

    iput p1, p0, Lcom/alibaba/genie/alarm/view/TimeSelectDialog;->mCurEndTime:I

    if-eqz v0, :cond_0

    .line 79
    invoke-static {}, Lcom/alibaba/ailabs/genie/density/GenieDensity;->revertApplication()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getSelectTimeListener()Lcom/alibaba/genie/alarm/view/TimeSelectDialog$ISelectTimeListener;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/alibaba/genie/alarm/view/TimeSelectDialog;->mISelectTimeListener:Lcom/alibaba/genie/alarm/view/TimeSelectDialog$ISelectTimeListener;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 87
    sget v0, Lcom/alibaba/ailabs/basedomain/R$id;->time_enable:I

    if-ne p1, v0, :cond_1

    .line 88
    iget p1, p0, Lcom/alibaba/genie/alarm/view/TimeSelectDialog;->mCurEndTime:I

    iget v0, p0, Lcom/alibaba/genie/alarm/view/TimeSelectDialog;->mPrevEndTime:I

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/alibaba/genie/alarm/view/TimeSelectDialog;->mCurStartTime:I

    iget v0, p0, Lcom/alibaba/genie/alarm/view/TimeSelectDialog;->mPrevStartTime:I

    if-eq p1, v0, :cond_1

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/genie/alarm/view/TimeSelectDialog;->getSelectTimeListener()Lcom/alibaba/genie/alarm/view/TimeSelectDialog$ISelectTimeListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 92
    iget v0, p0, Lcom/alibaba/genie/alarm/view/TimeSelectDialog;->mCurStartTime:I

    iget v1, p0, Lcom/alibaba/genie/alarm/view/TimeSelectDialog;->mCurEndTime:I

    invoke-interface {p1, v0, v1}, Lcom/alibaba/genie/alarm/view/TimeSelectDialog$ISelectTimeListener;->onSelectTime(II)V

    .line 96
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/genie/alarm/view/TimeSelectDialog;->dismiss()V

    return-void
.end method

.method public onTimeChanged(Landroid/widget/TimePicker;II)V
    .locals 2

    .line 101
    invoke-virtual {p1}, Landroid/widget/TimePicker;->getId()I

    move-result p1

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hourOfDay =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", minute = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "qqqq"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    sget v0, Lcom/alibaba/ailabs/basedomain/R$id;->start_time_set:I

    if-ne p1, v0, :cond_0

    .line 104
    invoke-direct {p0, p2, p3}, Lcom/alibaba/genie/alarm/view/TimeSelectDialog;->getSeconds(II)I

    move-result p1

    iput p1, p0, Lcom/alibaba/genie/alarm/view/TimeSelectDialog;->mCurStartTime:I

    goto :goto_0

    .line 105
    :cond_0
    sget v0, Lcom/alibaba/ailabs/basedomain/R$id;->end_time_set:I

    if-ne p1, v0, :cond_1

    .line 106
    invoke-direct {p0, p2, p3}, Lcom/alibaba/genie/alarm/view/TimeSelectDialog;->getSeconds(II)I

    move-result p1

    iput p1, p0, Lcom/alibaba/genie/alarm/view/TimeSelectDialog;->mCurEndTime:I

    :cond_1
    :goto_0
    return-void
.end method

.method public setSelectTimeListener(Lcom/alibaba/genie/alarm/view/TimeSelectDialog$ISelectTimeListener;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/alibaba/genie/alarm/view/TimeSelectDialog;->mISelectTimeListener:Lcom/alibaba/genie/alarm/view/TimeSelectDialog$ISelectTimeListener;

    return-void
.end method
