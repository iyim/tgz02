.class public Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;
.super Landroid/app/Activity;
.source "TimeDisturbActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TimeDisturbActivity"


# instance fields
.field private beginTimePicker:Landroid/widget/TimePicker;

.field private endHours:I

.field private endMinute:I

.field private endTimePicker:Landroid/widget/TimePicker;

.field private mAlarmMng:Landroid/app/AlarmManager;

.field private mPendingIntentTcmEnd:Landroid/app/PendingIntent;

.field private mPendingIntentTcmStart:Landroid/app/PendingIntent;

.field private startHours:I

.field private startMinute:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->mAlarmMng:Landroid/app/AlarmManager;

    .line 41
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->mPendingIntentTcmStart:Landroid/app/PendingIntent;

    .line 42
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->mPendingIntentTcmEnd:Landroid/app/PendingIntent;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->updateDndModeInfoFromTimePickerToDB()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->startHours:I

    return p0
.end method

.method static synthetic access$102(Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;I)I
    .locals 0

    .line 31
    iput p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->startHours:I

    return p1
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->startMinute:I

    return p0
.end method

.method static synthetic access$202(Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;I)I
    .locals 0

    .line 31
    iput p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->startMinute:I

    return p1
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->endHours:I

    return p0
.end method

.method static synthetic access$302(Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;I)I
    .locals 0

    .line 31
    iput p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->endHours:I

    return p1
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->endMinute:I

    return p0
.end method

.method static synthetic access$402(Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;I)I
    .locals 0

    .line 31
    iput p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->endMinute:I

    return p1
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;)Landroid/app/PendingIntent;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->mPendingIntentTcmStart:Landroid/app/PendingIntent;

    return-object p0
.end method

.method static synthetic access$600(Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;)Landroid/app/AlarmManager;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->mAlarmMng:Landroid/app/AlarmManager;

    return-object p0
.end method

.method static synthetic access$700(Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;)Landroid/app/PendingIntent;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->mPendingIntentTcmEnd:Landroid/app/PendingIntent;

    return-object p0
.end method

.method private init()V
    .locals 2
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .line 64
    sget v0, Lcom/alibaba/ailabs/genie/setting/R$layout;->time_disturb:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->setContentView(I)V

    .line 65
    sget v0, Lcom/alibaba/ailabs/genie/setting/R$id;->start_time_set:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TimePicker;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->beginTimePicker:Landroid/widget/TimePicker;

    .line 66
    sget v0, Lcom/alibaba/ailabs/genie/setting/R$id;->end_time_set:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TimePicker;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->endTimePicker:Landroid/widget/TimePicker;

    .line 67
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->beginTimePicker:Landroid/widget/TimePicker;

    const/high16 v1, 0x60000

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setDescendantFocusability(I)V

    .line 68
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->endTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setDescendantFocusability(I)V

    .line 71
    sget v0, Lcom/alibaba/ailabs/genie/setting/R$id;->time_disable:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity$1;-><init>(Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    sget v0, Lcom/alibaba/ailabs/genie/setting/R$id;->time_enable:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity$2;-><init>(Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->getStartTime()V

    .line 108
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->beginTimePicker:Landroid/widget/TimePicker;

    iget v1, p0, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->startHours:I

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setHour(I)V

    .line 109
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->beginTimePicker:Landroid/widget/TimePicker;

    iget v1, p0, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->startMinute:I

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setMinute(I)V

    .line 111
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->endTimePicker:Landroid/widget/TimePicker;

    iget v1, p0, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->endHours:I

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setHour(I)V

    .line 112
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->endTimePicker:Landroid/widget/TimePicker;

    iget v1, p0, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->endMinute:I

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setMinute(I)V

    .line 114
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->beginTimePicker:Landroid/widget/TimePicker;

    new-instance v1, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity$3;-><init>(Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V

    .line 122
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->endTimePicker:Landroid/widget/TimePicker;

    new-instance v1, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity$4;-><init>(Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V

    const-string v0, "alarm"

    .line 131
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->mAlarmMng:Landroid/app/AlarmManager;

    const v0, 0x186a1

    const/16 v1, 0x65

    .line 133
    invoke-static {p0, v0, v1}, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils;->createPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->mPendingIntentTcmStart:Landroid/app/PendingIntent;

    const v0, 0x186a2

    const/16 v1, 0x66

    .line 134
    invoke-static {p0, v0, v1}, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils;->createPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->mPendingIntentTcmEnd:Landroid/app/PendingIntent;

    return-void
.end method

.method private updateDndModeInfoFromTimePickerToDB()V
    .locals 4

    .line 148
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/SharedPreferenceUtils;->setDndModeClosedByUser(Landroid/content/Context;Z)V

    const-string v0, "TimeDisturbActivity"

    const-string v2, "updateDndModeInfoFromTimePickerToDB: get old parameters from DB first"

    .line 149
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/nodisturb/DataCenterModeAPI;->getDoNoDisturbModeInfo(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;

    move-result-object v2

    .line 151
    iget v3, p0, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->startHours:I

    iput v3, v2, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mStartHour:I

    .line 152
    iget v3, p0, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->startMinute:I

    iput v3, v2, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mStartMin:I

    .line 153
    iget v3, p0, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->endHours:I

    iput v3, v2, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mEndHour:I

    .line 154
    iget v3, p0, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->endMinute:I

    iput v3, v2, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mEndMin:I

    .line 155
    iput-boolean v1, v2, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mDndManualModeBtnClick:Z

    const-string v1, "updateDndModeInfoFromTimePickerToDB: Save new parameters to DB"

    .line 156
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "updateDndModeInfoToDB Update DB by self, observer event handler would be skipped."

    .line 158
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 159
    sput-boolean v0, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils;->sUpdateDBBySelf:Z

    .line 160
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/alibaba/ailabs/genie/nodisturb/DataCenterModeAPI;->updateDoNoDisturbModeInfo(Landroid/content/Context;Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;)I

    return-void
.end method


# virtual methods
.method public getStartTime()V
    .locals 2

    .line 138
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/nodisturb/DataCenterModeAPI;->getDoNoDisturbModeInfo(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;

    move-result-object v0

    .line 139
    iget v1, v0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mStartHour:I

    iput v1, p0, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->startHours:I

    .line 140
    iget v1, v0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mStartMin:I

    iput v1, p0, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->startMinute:I

    .line 141
    iget v1, v0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mEndHour:I

    iput v1, p0, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->endHours:I

    .line 142
    iget v0, v0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mEndMin:I

    iput v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->endMinute:I

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    const/4 v0, 0x1

    .line 47
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->requestWindowFeature(I)Z

    .line 48
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x700

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/high16 v1, -0x80000000

    .line 52
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const/4 v1, 0x0

    .line 53
    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 54
    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_0

    .line 57
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->init()V

    :cond_0
    return-void
.end method
