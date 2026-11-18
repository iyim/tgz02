.class public Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;
.super Landroid/app/Activity;
.source "NotDisturbActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$UpdateViewBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NotDisturbActivity"


# instance fields
.field private callQuiet:Z

.field private callQuietView:Landroid/widget/Switch;

.field private disturbBtnClicked:Z

.field private disturbEanbled:Z

.field private disturbEanbledView:Landroid/widget/Switch;

.field disturbStatus:Landroid/content/SharedPreferences;

.field private disturbtimed:Z

.field private disturbtimedView:Landroid/widget/Switch;

.field private dndOrTcmBtnClickedDate:Ljava/util/Date;

.field private endHours:I

.field private endMinute:I

.field private feedbackQuiet:Z

.field private mAlarmMng:Landroid/app/AlarmManager;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mCurScreenOffTimeInSec:I

.field private mImageBtnTimeSet:Landroid/widget/TextView;

.field private mPendingIntentTcmEnd:Landroid/app/PendingIntent;

.field private mPendingIntentTcmStart:Landroid/app/PendingIntent;

.field private mRetryUploadBeforeExit:Z

.field private mTimeSet:Landroid/widget/LinearLayout;

.field private mUpdateViewBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mVerticalScrollBar:Lcom/alibaba/ailabs/childmode/ui/widget/WhiteVerticalScrollBar;

.field private mViewLine:Landroid/view/View;

.field private messageQuiet:Z

.field private messageQuietView:Landroid/widget/Switch;

.field private screenOff:Z

.field private screenOffView:Landroid/widget/Switch;

.field private scroll_content:Lcom/alibaba/ailabs/childmode/ui/widget/ScrollMiniBar;

.field private sensitiveLow:Z

.field private sensitiveLowView:Landroid/widget/Switch;

.field private startHours:I

.field private startMinute:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->disturbBtnClicked:Z

    const/4 v1, 0x0

    .line 59
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->dndOrTcmBtnClickedDate:Ljava/util/Date;

    .line 60
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->disturbEanbled:Z

    const/4 v2, 0x1

    .line 61
    iput-boolean v2, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->disturbtimed:Z

    .line 62
    iput-boolean v2, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->screenOff:Z

    .line 63
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->messageQuiet:Z

    .line 64
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->callQuiet:Z

    .line 65
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->feedbackQuiet:Z

    .line 66
    iput-boolean v2, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->sensitiveLow:Z

    const/4 v2, -0x1

    .line 80
    iput v2, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->mCurScreenOffTimeInSec:I

    .line 83
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->mAlarmMng:Landroid/app/AlarmManager;

    .line 84
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->mPendingIntentTcmStart:Landroid/app/PendingIntent;

    .line 85
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->mPendingIntentTcmEnd:Landroid/app/PendingIntent;

    .line 87
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->mRetryUploadBeforeExit:Z

    .line 89
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->mVerticalScrollBar:Lcom/alibaba/ailabs/childmode/ui/widget/WhiteVerticalScrollBar;

    .line 90
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->scroll_content:Lcom/alibaba/ailabs/childmode/ui/widget/ScrollMiniBar;

    .line 665
    new-instance v0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$9;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$9;-><init>(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)Landroid/widget/Switch;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->disturbEanbledView:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->disturbEanbled:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;ZI)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->enableTcmAlarm(ZI)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$1100(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;Z)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->updateAllSettings(Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$1200(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;Z)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->updateDndModeInfoToDB(Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$1300(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)Landroid/widget/Switch;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->disturbtimedView:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->updateTimeSetViewSize()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$1500(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)Landroid/widget/Switch;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->screenOffView:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->screenOff:Z

    return p0
.end method

.method static synthetic access$1700(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)Z
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->shouldEnableSettings()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;ZZ)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->screenOffSetup(ZZ)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$1900(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)Landroid/widget/Switch;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->messageQuietView:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->messageQuiet:Z

    return p0
.end method

.method static synthetic access$2002(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->messageQuiet:Z

    return p1
.end method

.method static synthetic access$202(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->disturbBtnClicked:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)Landroid/widget/Switch;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->callQuietView:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->callQuiet:Z

    return p0
.end method

.method static synthetic access$2202(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->callQuiet:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)Landroid/widget/Switch;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->sensitiveLowView:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->sensitiveLow:Z

    return p0
.end method

.method static synthetic access$2402(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->sensitiveLow:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;I)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->updateView(I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;ZZ)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->enableDNDMode(ZZ)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$402(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->dndOrTcmBtnClickedDate:Ljava/util/Date;

    return-object p1
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->disturbtimed:Z

    return p0
.end method

.method static synthetic access$502(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->disturbtimed:Z

    return p1
.end method

.method static synthetic access$600(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)I
    .locals 0

    .line 54
    iget p0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->startHours:I

    return p0
.end method

.method static synthetic access$700(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)I
    .locals 0

    .line 54
    iget p0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->startMinute:I

    return p0
.end method

.method static synthetic access$800(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)I
    .locals 0

    .line 54
    iget p0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->endHours:I

    return p0
.end method

.method static synthetic access$900(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)I
    .locals 0

    .line 54
    iget p0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->endMinute:I

    return p0
.end method

.method private enableDNDMode(ZZ)V
    .locals 2

    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "try to change dnd mode to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; update to system="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotDisturbActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->disturbEanbled:Z

    if-eq v0, p1, :cond_0

    .line 645
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->disturbEanbled:Z

    .line 646
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->disturbEanbledView:Landroid/widget/Switch;

    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->disturbEanbled:Z

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 648
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->disturbEanbled:Z

    invoke-static {p1}, Lcom/alibaba/ailabs/childmode/Global;->setDNDEnable(Z)V

    .line 649
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->disturbEanbled:Z

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/utils/SharedPreferenceUtils;->setDisturbEnable(Landroid/content/Context;Z)V

    if-eqz p2, :cond_0

    .line 652
    new-instance p1, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$8;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$8;-><init>(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)V

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/utils/taskpool/FileTaskPool;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method

.method private enableTcmAlarm(ZI)V
    .locals 4

    const-string v0, "NotDisturbActivity"

    if-eqz p1, :cond_1

    .line 625
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enable alarm for Time Cycle mode. startHour="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->startHours:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; startMin="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->startMinute:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; endHour="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->endHours:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; endMin="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->endMinute:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    iget p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->startHours:I

    iget v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->startMinute:I

    iget v1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->endHours:I

    iget v2, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->endMinute:I

    invoke-static {p1, v0, v1, v2}, Lcom/alibaba/ailabs/genie/utils/TimeUtils;->isLastToNextDay(IIII)Z

    move-result p1

    if-eqz p1, :cond_0

    add-int/lit8 p1, p2, 0x1

    goto :goto_0

    :cond_0
    move p1, p2

    .line 630
    :goto_0
    iget v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->startHours:I

    iget v1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->startMinute:I

    const-string v2, "NotDisturbActivity Set TCM start alarm,"

    invoke-static {v0, v1, p2, v2}, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils;->createGivenCalendar(IIILjava/lang/String;)Ljava/util/Calendar;

    move-result-object p2

    .line 631
    iget v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->endHours:I

    iget v1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->endMinute:I

    const-string v2, "NotDisturbActivity Set TCM end alarm,"

    invoke-static {v0, v1, p1, v2}, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils;->createGivenCalendar(IIILjava/lang/String;)Ljava/util/Calendar;

    move-result-object p1

    .line 632
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->mAlarmMng:Landroid/app/AlarmManager;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->mPendingIntentTcmStart:Landroid/app/PendingIntent;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2, p2}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 633
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->mAlarmMng:Landroid/app/AlarmManager;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->mPendingIntentTcmEnd:Landroid/app/PendingIntent;

    invoke-virtual {p2, v3, v0, v1, p1}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto :goto_1

    :cond_1
    const-string p1, "Disable alarm for Time Cycle mode."

    .line 635
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->mAlarmMng:Landroid/app/AlarmManager;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->mPendingIntentTcmStart:Landroid/app/PendingIntent;

    invoke-virtual {p1, p2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 637
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->mAlarmMng:Landroid/app/AlarmManager;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->mPendingIntentTcmEnd:Landroid/app/PendingIntent;

    invoke-virtual {p1, p2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :goto_1
    return-void
.end method

.method private getInitData()V
    .locals 4

    .line 482
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/SharedPreferenceUtils;->getDisturbModelSharePreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->disturbStatus:Landroid/content/SharedPreferences;

    .line 484
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/nodisturb/DataCenterModeAPI;->getDoNoDisturbModeInfo(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;

    move-result-object v0

    .line 485
    iget v1, v0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mStartHour:I

    iput v1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->startHours:I

    .line 486
    iget v1, v0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mStartMin:I

    iput v1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->startMinute:I

    .line 487
    iget v1, v0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mEndHour:I

    iput v1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->endHours:I

    .line 488
    iget v1, v0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mEndMin:I

    iput v1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->endMinute:I

    .line 490
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/nodisturb/DataCenterModeAPI;->getDoNotDisturbModeStatus(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->disturbEanbled:Z

    .line 491
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->disturbStatus:Landroid/content/SharedPreferences;

    const-string v2, "disturb_timed"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->disturbtimed:Z

    .line 492
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInitData disturbEanbled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->disturbEanbled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " disturbtimed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->disturbtimed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NotDisturbActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    iget-boolean v1, v0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mScreenOff1Min:Z

    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->screenOff:Z

    .line 495
    iget-boolean v1, v0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mMsgQuiet:Z

    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->messageQuiet:Z

    .line 496
    iget-boolean v1, v0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mPhoneCallQuiet:Z

    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->callQuiet:Z

    .line 497
    iget-boolean v0, v0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mLowWakeupSensitivity:Z

    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->sensitiveLow:Z

    return-void
.end method

.method private init()V
    .locals 3

    .line 102
    sget v0, Lcom/alibaba/ailabs/genie/setting/R$layout;->disturb:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->setContentView(I)V

    .line 104
    sget v0, Lcom/alibaba/ailabs/genie/setting/R$id;->home_nav_bar:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;

    .line 105
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/setting/R$string;->aframe_DND_mode_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;->setTitle(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;->setHostActivity(Landroid/app/Activity;)V

    const-string v0, "alarm"

    .line 109
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->mAlarmMng:Landroid/app/AlarmManager;

    const v0, 0x186a1

    const/16 v1, 0x65

    .line 110
    invoke-static {p0, v0, v1}, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils;->createPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->mPendingIntentTcmStart:Landroid/app/PendingIntent;

    const v0, 0x186a2

    const/16 v1, 0x66

    .line 111
    invoke-static {p0, v0, v1}, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils;->createPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->mPendingIntentTcmEnd:Landroid/app/PendingIntent;

    .line 113
    sget v0, Lcom/alibaba/ailabs/genie/setting/R$id;->end_time_setup:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->mImageBtnTimeSet:Landroid/widget/TextView;

    .line 114
    sget v0, Lcom/alibaba/ailabs/genie/setting/R$id;->rly_time_begin:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->mTimeSet:Landroid/widget/LinearLayout;

    .line 115
    sget v0, Lcom/alibaba/ailabs/genie/setting/R$id;->view_line:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->mViewLine:Landroid/view/View;

    .line 117
    sget v0, Lcom/alibaba/ailabs/genie/setting/R$id;->disturb_enable_switch:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->disturbEanbledView:Landroid/widget/Switch;

    .line 118
    sget v0, Lcom/alibaba/ailabs/genie/setting/R$id;->disturb_timed:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->disturbtimedView:Landroid/widget/Switch;

    .line 119
    sget v0, Lcom/alibaba/ailabs/genie/setting/R$id;->screen_off:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->screenOffView:Landroid/widget/Switch;

    .line 120
    sget v0, Lcom/alibaba/ailabs/genie/setting/R$id;->message_quiet:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->messageQuietView:Landroid/widget/Switch;

    .line 121
    sget v0, Lcom/alibaba/ailabs/genie/setting/R$id;->call_quiet:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->callQuietView:Landroid/widget/Switch;

    .line 122
    sget v0, Lcom/alibaba/ailabs/genie/setting/R$id;->sensitive_low:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->sensitiveLowView:Landroid/widget/Switch;

    .line 123
    sget v0, Lcom/alibaba/ailabs/genie/setting/R$id;->scroll_content:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/childmode/ui/widget/ScrollMiniBar;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->scroll_content:Lcom/alibaba/ailabs/childmode/ui/widget/ScrollMiniBar;

    .line 124
    sget v0, Lcom/alibaba/ailabs/genie/setting/R$id;->vertical_scroll_bar:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/childmode/ui/widget/WhiteVerticalScrollBar;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->mVerticalScrollBar:Lcom/alibaba/ailabs/childmode/ui/widget/WhiteVerticalScrollBar;

    .line 125
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->scroll_content:Lcom/alibaba/ailabs/childmode/ui/widget/ScrollMiniBar;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->mVerticalScrollBar:Lcom/alibaba/ailabs/childmode/ui/widget/WhiteVerticalScrollBar;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/childmode/ui/widget/ScrollMiniBar;->setOnRecycleViewScrollListener(Lcom/alibaba/ailabs/childmode/ui/widget/OnRecycleViewScrollListener;)V

    .line 127
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->mImageBtnTimeSet:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$1;-><init>(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->getInitData()V

    .line 148
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->setData()V

    .line 149
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->setOnClick()V

    const v0, 0xea60

    .line 151
    invoke-static {v0}, Lcom/alibaba/ailabs/childmode/Global;->getCacheScreenOffTimeout(I)I

    move-result v1

    const-string v2, "NotDisturbActivity"

    if-le v1, v0, :cond_0

    .line 156
    iput v1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->mCurScreenOffTimeInSec:I

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Init original screen off time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->mCurScreenOffTimeInSec:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 160
    :cond_0
    invoke-static {v0}, Lcom/alibaba/ailabs/childmode/Global;->getCacheScreenOffTimeout(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->mCurScreenOffTimeInSec:I

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Original screen off time is 1 minute, load original time from prop, value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->mCurScreenOffTimeInSec:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils;->getLatestDndModeVersionInfoFromServer(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 167
    :try_start_0
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/systemui/StatusNavManager;->setTranslucentStatus(Landroid/app/Activity;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 169
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 172
    :goto_1
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->reportLog()V

    return-void
.end method

.method private registerReceiver()V
    .locals 3

    .line 708
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->mUpdateViewBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 709
    new-instance v0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$UpdateViewBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$UpdateViewBroadcastReceiver;-><init>(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$1;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->mUpdateViewBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 710
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.alibaba.ailabs.genie.message.UPDATE_UI"

    .line 711
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 712
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->mUpdateViewBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "NotDisturbActivity"

    const-string/jumbo v2, "registerReceiver fail"

    .line 715
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private reportLog()V
    .locals 4

    .line 176
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 177
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/nodisturb/DataCenterModeAPI;->getDoNotDisturbModeStatus(Landroid/content/Context;)Z

    move-result v1

    .line 178
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "dnd_enabled"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "dnd"

    .line 179
    invoke-static {v2, v2, v0}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->customHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BroadCast  ACTION_BURIED_POINT: dnd_enabled= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotDisturbActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private screenOffSetup(ZZ)V
    .locals 2

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "set screen off to value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotDisturbActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->screenOff:Z

    if-eq v0, p1, :cond_0

    .line 469
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/nodisturb/DataCenterModeAPI;->getDoNoDisturbModeInfo(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;

    move-result-object v0

    .line 470
    iput-boolean p1, v0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mScreenOff1Min:Z

    .line 471
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/nodisturb/DataCenterModeAPI;->updateDoNoDisturbModeInfo(Landroid/content/Context;Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;)I

    .line 472
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->screenOff:Z

    .line 473
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->screenOffView:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_0
    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    const p1, 0xea60

    goto :goto_0

    .line 476
    :cond_1
    iget p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->mCurScreenOffTimeInSec:I

    .line 477
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->screenOff:Z

    invoke-static {p2, p1, v0}, Lcom/alibaba/ailabs/childmode/Global;->updateScreenOffSettingToSystem(Landroid/content/Context;IZ)V

    :cond_2
    return-void
.end method

.method private setData()V
    .locals 2

    const/4 v0, 0x0

    .line 184
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->updateTimeTextView(Z)V

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u521d\u59cb\u5316 setData disturbEanbled\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->disturbEanbled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " disturbtimed\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->disturbtimed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotDisturbActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->disturbEanbledView:Landroid/widget/Switch;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->disturbEanbled:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 187
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->disturbtimedView:Landroid/widget/Switch;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->disturbtimed:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 188
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->updateTimeSetViewSize()V

    .line 189
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->screenOffView:Landroid/widget/Switch;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->screenOff:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 190
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->messageQuietView:Landroid/widget/Switch;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->messageQuiet:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 191
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->callQuietView:Landroid/widget/Switch;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->callQuiet:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 192
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->sensitiveLowView:Landroid/widget/Switch;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->sensitiveLow:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method

.method private setOnClick()V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->disturbEanbledView:Landroid/widget/Switch;

    new-instance v1, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$2;-><init>(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 300
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->disturbtimedView:Landroid/widget/Switch;

    new-instance v1, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$3;-><init>(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 385
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->screenOffView:Landroid/widget/Switch;

    new-instance v1, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$4;-><init>(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 402
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->messageQuietView:Landroid/widget/Switch;

    new-instance v1, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$5;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$5;-><init>(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 419
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->callQuietView:Landroid/widget/Switch;

    new-instance v1, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$6;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$6;-><init>(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 436
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->sensitiveLowView:Landroid/widget/Switch;

    new-instance v1, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$7;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$7;-><init>(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private shouldEnableSettings()Z
    .locals 6

    .line 611
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->disturbEanbled:Z

    const/4 v1, 0x1

    const-string v2, "NotDisturbActivity"

    if-eqz v0, :cond_0

    const-string/jumbo v0, "shouldEnableSettings: true, DND mode enabled"

    .line 612
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 615
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->disturbtimed:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->startHours:I

    iget v3, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->startMinute:I

    iget v4, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->endHours:I

    iget v5, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->endMinute:I

    invoke-static {v0, v3, v4, v5}, Lcom/alibaba/ailabs/genie/utils/TimeUtils;->isInTimeCycleModePeriod(IIII)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "shouldEnableSettings: true, TCM enabled and current time is in it"

    .line 616
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const-string/jumbo v0, "shouldEnableSettings: false"

    .line 619
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method private unregisterReceiver()V
    .locals 1

    .line 724
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->mUpdateViewBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 725
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->mUpdateViewBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 726
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->mUpdateViewBroadcastReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 729
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private updateAllPropertySettings()V
    .locals 4

    .line 581
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->messageQuiet:Z

    const-string v1, "1"

    const-string v2, "0"

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    const-string v3, "persist.sys.message_mute"

    .line 582
    invoke-static {v3, v0}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 583
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->callQuiet:Z

    if-eqz v0, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    const-string v3, "persist.sys.call_mute"

    .line 584
    invoke-static {v3, v0}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 585
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->feedbackQuiet:Z

    if-eqz v0, :cond_2

    move-object v0, v1

    goto :goto_2

    :cond_2
    move-object v0, v2

    :goto_2
    const-string v3, "persist.sys.wake_feedback"

    .line 586
    invoke-static {v3, v0}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 587
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->sensitiveLow:Z

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move-object v1, v2

    :goto_3
    const-string v0, "persist.sys.is.low_sensitive"

    .line 588
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method private updateAllSettings(Z)V
    .locals 4

    const-string v0, "NotDisturbActivity"

    if-nez p1, :cond_1

    .line 592
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->shouldEnableSettings()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 594
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->screenOff:Z

    if-eqz p1, :cond_0

    const p1, 0xea60

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->mCurScreenOffTimeInSec:I

    .line 595
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->screenOff:Z

    invoke-static {v1, p1, v2}, Lcom/alibaba/ailabs/childmode/Global;->updateScreenOffSettingToSystem(Landroid/content/Context;IZ)V

    .line 597
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateAllSettings: dnd global enable=true, screen_off_time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 598
    invoke-static {p1}, Lcom/alibaba/ailabs/childmode/Global;->setDNDGlableEnable(Z)V

    goto :goto_1

    .line 600
    :cond_1
    iget p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->mCurScreenOffTimeInSec:I

    .line 601
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/alibaba/ailabs/childmode/Global;->updateScreenOffSettingToSystem(Landroid/content/Context;IZ)V

    .line 602
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateAllSettings: dnd global enable=false, screen_off_time="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    invoke-static {v2}, Lcom/alibaba/ailabs/childmode/Global;->setDNDGlableEnable(Z)V

    .line 605
    :goto_1
    invoke-static {}, Lcom/alibaba/ailabs/childmode/Global;->getDNDGlableEnable()I

    move-result p1

    .line 606
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateAllSettings: After set, DND_GLOBAL_ENABLE="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->updateAllPropertySettings()V

    return-void
.end method

.method private updateDndModeInfoToDB(Z)V
    .locals 3

    .line 682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateDndModeInfoToDB: get old parameters from DB first, is_dnd_or_tcm_btn_clicked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotDisturbActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/nodisturb/DataCenterModeAPI;->getDoNoDisturbModeInfo(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;

    move-result-object v0

    .line 684
    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->disturbEanbled:Z

    iput-boolean v2, v0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mDndModeManualEnable:Z

    .line 685
    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->disturbtimed:Z

    iput-boolean v2, v0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mTimeCycleModeEnable:Z

    .line 686
    iget v2, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->startHours:I

    iput v2, v0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mStartHour:I

    .line 687
    iget v2, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->startMinute:I

    iput v2, v0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mStartMin:I

    .line 688
    iget v2, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->endHours:I

    iput v2, v0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mEndHour:I

    .line 689
    iget v2, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->endMinute:I

    iput v2, v0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mEndMin:I

    .line 690
    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->screenOff:Z

    iput-boolean v2, v0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mScreenOff1Min:Z

    .line 691
    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->messageQuiet:Z

    iput-boolean v2, v0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mMsgQuiet:Z

    .line 692
    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->callQuiet:Z

    iput-boolean v2, v0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mPhoneCallQuiet:Z

    .line 693
    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->sensitiveLow:Z

    iput-boolean v2, v0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mLowWakeupSensitivity:Z

    if-eqz p1, :cond_0

    .line 695
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->disturbBtnClicked:Z

    iput-boolean p1, v0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mDndManualModeBtnClick:Z

    .line 696
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->dndOrTcmBtnClickedDate:Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mDndOrTcmBtnClickDate:Ljava/lang/String;

    :cond_0
    const-string/jumbo p1, "updateDndModeInfoToDB Update DB by self, observer event handler would be skipped."

    .line 700
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 701
    sput-boolean p1, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils;->sUpdateDBBySelf:Z

    .line 703
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/nodisturb/DataCenterModeAPI;->updateDoNoDisturbModeInfo(Landroid/content/Context;Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;)I

    return-void
.end method

.method private updateTimeSetViewSize()V
    .locals 2

    .line 456
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->disturbtimed:Z

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->mTimeSet:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 458
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->mViewLine:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->mTimeSet:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 461
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->mViewLine:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateTimeTextView(Z)V
    .locals 7

    .line 511
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/nodisturb/DataCenterModeAPI;->getDoNoDisturbModeInfo(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;

    move-result-object v0

    .line 512
    iget v1, v0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mStartHour:I

    .line 513
    iget v2, v0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mStartMin:I

    .line 514
    iget v3, v0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mEndHour:I

    .line 515
    iget v0, v0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mEndMin:I

    .line 517
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TCM: Time changes, old value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->startHours:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->startMinute:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->endHours:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->endMinute:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "; new value="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NotDisturbActivity"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iget v4, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->startHours:I

    if-ne v1, v4, :cond_0

    iget v4, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->startMinute:I

    if-ne v2, v4, :cond_0

    iget v4, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->endHours:I

    if-ne v3, v4, :cond_0

    iget v4, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->endMinute:I

    if-eq v0, v4, :cond_1

    .line 520
    :cond_0
    iput v1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->startHours:I

    .line 521
    iput v2, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->startMinute:I

    .line 522
    iput v3, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->endHours:I

    .line 523
    iput v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->endMinute:I

    if-eqz p1, :cond_1

    const-string p1, "TCM: user select time changes, update DB"

    .line 525
    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 526
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->updateDndModeInfoToDB(Z)V

    :cond_1
    const-string/jumbo p1, "\u4e0a\u5348 "

    const-string/jumbo v0, "\u4e0b\u5348 "

    const/16 v2, 0xc

    if-le v1, v2, :cond_2

    add-int/lit8 v1, v1, -0xc

    :goto_0
    move v4, v1

    move-object v1, v0

    goto :goto_1

    :cond_2
    if-ne v1, v2, :cond_3

    goto :goto_0

    :cond_3
    move v4, v1

    move-object v1, p1

    :goto_1
    if-le v3, v2, :cond_4

    add-int/lit8 v3, v3, -0xc

    goto :goto_2

    :cond_4
    if-ne v3, v2, :cond_5

    goto :goto_2

    :cond_5
    move-object v0, p1

    .line 543
    :goto_2
    sget p1, Lcom/alibaba/ailabs/genie/setting/R$id;->start_time_input:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 544
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->startMinute:I

    invoke-static {v4, v1}, Lcom/alibaba/ailabs/genie/utils/TimeUtils;->timeFormat(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 546
    sget p1, Lcom/alibaba/ailabs/genie/setting/R$id;->end_time_input:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 547
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->endMinute:I

    invoke-static {v3, v0}, Lcom/alibaba/ailabs/genie/utils/TimeUtils;->timeFormat(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateView(I)V
    .locals 4

    .line 753
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Get msg: MSG_ENABLE_DND_MODE, update index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotDisturbActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->getInitData()V

    and-int/lit8 v0, p1, 0x1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 758
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->disturbEanbledView:Landroid/widget/Switch;

    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->disturbEanbled:Z

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 759
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update DND Manual mode switch status to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->disturbEanbled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    and-int/lit8 v0, p1, 0x2

    const-string v2, "Update TCM switch status to "

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 762
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->disturbtimedView:Landroid/widget/Switch;

    iget-boolean v3, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->disturbtimed:Z

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 763
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->disturbtimed:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    and-int/lit8 v0, p1, 0x4

    const/4 v3, 0x4

    if-ne v0, v3, :cond_2

    const/4 v0, 0x0

    .line 767
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->updateTimeTextView(Z)V

    .line 768
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->disturbtimed:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    and-int/lit8 v0, p1, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 771
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->screenOffView:Landroid/widget/Switch;

    iget-boolean v3, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->screenOff:Z

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_3
    if-ne v0, v1, :cond_4

    .line 774
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->screenOffView:Landroid/widget/Switch;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->screenOff:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_4
    and-int/lit8 v0, p1, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_5

    .line 777
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->messageQuietView:Landroid/widget/Switch;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->messageQuiet:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_5
    and-int/lit8 v0, p1, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_6

    .line 780
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->callQuietView:Landroid/widget/Switch;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->callQuiet:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_6
    const/16 v0, 0x40

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_7

    .line 783
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->sensitiveLowView:Landroid/widget/Switch;

    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->sensitiveLow:Z

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_7
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 95
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->init()V

    .line 97
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->registerReceiver()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onDestroy()V
    .locals 2

    .line 569
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->mRetryUploadBeforeExit:Z

    if-eqz v0, :cond_0

    const-string v0, "NotDisturbActivity"

    const-string v1, "Failed to upload DND info to server last time, retry it before onDestroy"

    .line 570
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils;->uploadDndModeInfo(Landroid/content/Context;)V

    .line 573
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->unregisterReceiver()V

    .line 574
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 552
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onResume()V
    .locals 2

    .line 502
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 504
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/nodisturb/DataCenterModeAPI;->getDoNotDisturbModeStatus(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->disturbEanbled:Z

    .line 505
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->disturbEanbledView:Landroid/widget/Switch;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->disturbEanbled:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    const/4 v0, 0x1

    .line 506
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->updateTimeTextView(Z)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 558
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 559
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils;->getLatestDndModeVersionInfoFromServer(Landroid/content/Context;)V

    return-void
.end method
