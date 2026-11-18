.class public Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;
.super Landroid/app/Dialog;
.source "AlarmRingDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog$HomeWatcherReceiver;,
        Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog$MyOnCommandListener;
    }
.end annotation


# static fields
.field private static final BROADCAST_ACTION_RTC_START:Ljava/lang/String; = "com.alibaba.ailabs.genie.rtc.START_RTC"

.field private static final BROADCAST_ACTION_RTC_STOP:Ljava/lang/String; = "com.alibaba.ailabs.genie.rtc.FINISH_RTC"

.field private static final MSG_EXIT_ALARM:I = 0x64

.field public static final MSG_UPDATE_TYPE_NAME:I = 0x65

.field private static final TAG:Ljava/lang/String; = "AlarmRingDialog"

.field private static volatile mIsMock:Z = false

.field private static mMuteCount:I


# instance fields
.field private isShow:Z

.field private mAlarmId:Ljava/lang/String;

.field private mAlarmTypeTV:Landroid/widget/TextView;

.field private mCommandList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHomeKeyReceiver:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog$HomeWatcherReceiver;

.field private mIsTmpDisappearUI:Z

.field private mMainHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnCommandListener:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog$MyOnCommandListener;

.field private mRoot:Landroid/widget/RelativeLayout;

.field private mTimeTV:Landroid/widget/TextView;

.field private mUpdateTimeRunnable:Ljava/lang/Runnable;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 134
    sget v0, Lcom/alibaba/ailabs/basedomain/R$style;->dialog_bottom_full:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mIsTmpDisappearUI:Z

    .line 73
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mCommandList:Ljava/util/ArrayList;

    .line 80
    new-instance v1, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog$1;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog$1;-><init>(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;)V

    iput-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mMainHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    .line 117
    new-instance v1, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog$2;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog$2;-><init>(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;)V

    iput-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mUpdateTimeRunnable:Ljava/lang/Runnable;

    .line 230
    new-instance v1, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog$3;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog$3;-><init>(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;)V

    iput-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mContext:Landroid/content/Context;

    .line 136
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 140
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    const/16 v3, 0x700

    .line 143
    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    if-eqz v1, :cond_3

    const/high16 v2, -0x80000000

    .line 149
    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 150
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_2

    .line 151
    invoke-virtual {v1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 152
    invoke-virtual {v1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    :cond_2
    const/16 v2, 0x50

    .line 154
    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 155
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const/4 v3, -0x1

    .line 156
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 157
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 158
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_3
    const/4 v1, 0x1

    .line 161
    sput-boolean v1, Lcom/alibaba/ailabs/basedomain/HDUtils;->adaptiveIfNeed:Z

    .line 162
    invoke-static {}, Lcom/alibaba/ailabs/genie/density/GenieDensity;->updateApplication()Z

    move-result v1

    .line 163
    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/GenieLayoutInflater;->from(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/GenieLayoutInflater;

    move-result-object p1

    const-string v2, "alarm_domain_alarm_ring_new_layout"

    invoke-virtual {p1, v2}, Lcom/alibaba/ailabs/basedomain/GenieLayoutInflater;->inflate(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    .line 164
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->setContentView(Landroid/view/View;)V

    .line 165
    sput-boolean v0, Lcom/alibaba/ailabs/basedomain/HDUtils;->adaptiveIfNeed:Z

    .line 167
    new-instance p1, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog$MyOnCommandListener;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p1, v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog$MyOnCommandListener;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mOnCommandListener:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog$MyOnCommandListener;

    const-string p1, "AlarmRingDialog"

    const-string v0, "AlarmRingDialog init"

    .line 169
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mAlarmId:Ljava/lang/String;

    .line 172
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->root_layout:I

    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mRoot:Landroid/widget/RelativeLayout;

    .line 173
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->close_alarm:I

    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 174
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->current_time:I

    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mTimeTV:Landroid/widget/TextView;

    .line 176
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p2

    const-string v0, "ALIBABAFont-Regular.ttf"

    invoke-static {p2, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2

    .line 177
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mTimeTV:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 178
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "update time tv, in Thread:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string v0, "HH:mm"

    invoke-direct {p2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 180
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    .line 181
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mTimeTV:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->alarm_type:I

    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mAlarmTypeTV:Landroid/widget/TextView;

    .line 183
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/common/ASRManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->hideGenieBar()V

    .line 184
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->acquireWakeLock()V

    .line 185
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/alibaba/ailabs/basedomain/common/CommonUtil;->collapsingNotification(Landroid/content/Context;)V

    .line 186
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->updateUI()V

    .line 187
    new-instance p2, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {p2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "com.alibaba.ailabs.genie.rtc.START_RTC"

    .line 188
    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 189
    new-instance v0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog$HomeWatcherReceiver;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v2}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog$HomeWatcherReceiver;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mHomeKeyReceiver:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog$HomeWatcherReceiver;

    .line 190
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mHomeKeyReceiver:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog$HomeWatcherReceiver;

    invoke-virtual {v0, v2, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 192
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->updateTime()V

    .line 193
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AlarmRingActivity onCreate alarmID:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mAlarmId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_4

    .line 196
    invoke-static {}, Lcom/alibaba/ailabs/genie/density/GenieDensity;->revertApplication()V

    :cond_4
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->onExitQuickWord()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;)Landroid/widget/TextView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mAlarmTypeTV:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;)I
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->getCurrentVolume()I

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->onAdjustUpVolumeQuickWord()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$1200(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->onAdjustDownVolumeQuickWord()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$1300(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->onPauseQuickWord()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$1400(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;)Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mMainHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;)Landroid/widget/TextView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mTimeTV:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->updateTime()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;)Ljava/lang/String;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mAlarmId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;Ljava/lang/String;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->stopRing(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$600(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->handleOnAsrWakeup()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$700(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->releaseWakeLock()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$808()I
    .locals 2

    .line 55
    sget v0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mMuteCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mMuteCount:I

    return v0
.end method

.method static synthetic access$900()Z
    .locals 1

    .line 55
    sget-boolean v0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mIsMock:Z

    return v0
.end method

.method static synthetic access$902(Z)Z
    .locals 0

    .line 55
    sput-boolean p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mIsMock:Z

    return p0
.end method

.method private declared-synchronized acquireWakeLock()V
    .locals 4

    monitor-enter p0

    .line 563
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_1

    .line 564
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 565
    monitor-exit p0

    return-void

    :cond_0
    const v1, 0x1000001a

    .line 567
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mContext:Landroid/content/Context;

    .line 568
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":alarm_ring"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 567
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 569
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 571
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_2

    .line 572
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v1, 0x1b7740

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "AlarmRingDialog"

    const-string v2, "acquireWakeLock"

    .line 575
    invoke-static {v1, v2, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 578
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method private getCurrentVolume()I
    .locals 6

    .line 416
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v1, 0x4

    .line 419
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    .line 420
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 421
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurrentVolume STREAM_ALARM current volume:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " max volume:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AlarmRingDialog"

    invoke-static {v4, v3}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x3

    .line 422
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 423
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCurrentVolume STREAM_MUSIC current volume:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private handleOnAsrWakeup()V
    .locals 2

    const-string v0, "AlarmRingDialog"

    const-string v1, "handleOnAsrWakeup REASON_STOP_BY_WAKE_UP"

    .line 369
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mAlarmId:Ljava/lang/String;

    const-string v1, "REASON_STOP_BY_WAKE_UP"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmUt;->alarmFinishReason(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    invoke-direct {p0, v1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->stopRing(Ljava/lang/String;)V

    return-void
.end method

.method private onAdjustDownVolumeQuickWord()V
    .locals 2

    const-string v0, "AlarmRingDialog"

    const-string v1, "onAdjustDownVolume"

    .line 533
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->getInstance()Lcom/alibaba/ailabs/basedomain/common/MediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->stopAutoBigVolume()V

    return-void
.end method

.method private onAdjustUpVolumeQuickWord()V
    .locals 2

    const-string v0, "AlarmRingDialog"

    const-string v1, "onAdjustUpVolume"

    .line 528
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->getInstance()Lcom/alibaba/ailabs/basedomain/common/MediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->stopAutoBigVolume()V

    return-void
.end method

.method private onExitQuickWord()V
    .locals 2

    const-string v0, "onExitQuickWord"

    const-string v1, "AlarmRingDialog"

    .line 544
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mAlarmId:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmUt;->alarmFinishReason(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "user_touch"

    .line 546
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->stopRing(Ljava/lang/String;)V

    return-void
.end method

.method private onPauseQuickWord()V
    .locals 2

    const-string v0, "onPauseQuickWord"

    const-string v1, "AlarmRingDialog"

    .line 538
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mAlarmId:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmUt;->alarmFinishReason(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "user_touch"

    .line 540
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->stopRing(Ljava/lang/String;)V

    return-void
.end method

.method private release()V
    .locals 2

    .line 614
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mRoot:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 615
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    const/4 v0, 0x0

    .line 616
    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mRoot:Landroid/widget/RelativeLayout;

    :cond_0
    return-void
.end method

.method private declared-synchronized releaseWakeLock()V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "AlarmRingDialog"

    const-string v1, "releaseWakeLock"

    .line 581
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 585
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    .line 587
    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "AlarmRingDialog"

    .line 590
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseWakeLock, e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 592
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private sendUnknownKey()V
    .locals 1

    .line 375
    new-instance v0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog$6;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog$6;-><init>(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;)V

    .line 386
    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog$6;->start()V

    return-void
.end method

.method public static sendUnmuteKey(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 392
    sput-boolean v0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mIsMock:Z

    .line 393
    new-instance v0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog$7;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog$7;-><init>(Ljava/lang/String;)V

    .line 412
    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog$7;->start()V

    return-void
.end method

.method private setAnimAndBg()V
    .locals 5

    .line 595
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mAlarmId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->getAlarmInfoByAlarmIdWithCurrentTime(Ljava/lang/String;)Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 598
    :cond_0
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->getWeatherCode()Ljava/lang/String;

    move-result-object v1

    .line 599
    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getAlarmCategory()I

    move-result v2

    .line 600
    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getAlarmSubcategory()I

    move-result v3

    .line 599
    invoke-static {v2, v3, v1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmType;->getAlarmImageInfo(IILjava/lang/String;)Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmType$AlarmImageInfo;

    move-result-object v2

    const-string v3, "AlarmRingDialog"

    if-nez v2, :cond_1

    .line 602
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No found image info, weatherCode:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " alarmInfo:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 605
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mRoot:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_2

    .line 606
    sget v0, Lcom/alibaba/ailabs/basedomain/R$id;->root_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mRoot:Landroid/widget/RelativeLayout;

    .line 609
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAnimAndBg set bg id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmType$AlarmImageInfo;->resBgId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mRoot:Landroid/widget/RelativeLayout;

    iget v1, v2, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmType$AlarmImageInfo;->resBgId:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    return-void
.end method

.method public static showScreenDistanceTipDialog(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;
    .locals 4

    const-string v0, "showScreenDistanceTipDialog"

    const-string v1, "AlarmRingDialog"

    .line 201
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    new-instance v2, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 203
    invoke-virtual {v2}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 205
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt p1, v3, :cond_0

    const/16 p1, 0x7f6

    .line 206
    invoke-virtual {p0, p1}, Landroid/view/Window;->setType(I)V

    .line 210
    :cond_0
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/high16 v3, 0x10000

    invoke-virtual {p1, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 211
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const v3, 0x10700

    invoke-virtual {p1, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 216
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt p1, v3, :cond_1

    const/high16 p1, -0x80000000

    .line 217
    invoke-virtual {p0, p1}, Landroid/view/Window;->addFlags(I)V

    .line 219
    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v3, :cond_2

    const/4 p1, 0x0

    .line 220
    invoke-virtual {p0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 221
    invoke-virtual {p0, p1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 225
    :cond_2
    invoke-virtual {v2}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->show()V

    .line 226
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private stopRing(Ljava/lang/String;)V
    .locals 4

    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopRing alarmId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mAlarmId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " reason = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlarmRingDialog"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x7530

    .line 552
    iput v1, v0, Landroid/os/Message;->what:I

    .line 553
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 554
    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mAlarmId:Ljava/lang/String;

    const-string v3, "alarmId"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "reason"

    .line 555
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 557
    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/BaseService;->postBgMessage(Landroid/os/Message;)V

    .line 558
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->dismiss()V

    return-void
.end method

.method private updateTime()V
    .locals 6

    .line 361
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    .line 362
    rem-long v4, v0, v2

    sub-long/2addr v2, v4

    .line 363
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateTime nextUpdateMills:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " currentTime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlarmRingDialog"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mMainHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->handler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mUpdateTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 365
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mMainHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->handler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mUpdateTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private updateUI()V
    .locals 4

    .line 622
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mAlarmId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mAlarmId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->getAlarmInfoByAlarmIdWithCurrentTime(Ljava/lang/String;)Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 626
    :goto_0
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mMainHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->setExternalHandler(Ljava/lang/ref/WeakReference;)Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    .line 628
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateUI mAlarmId\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mAlarmId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " alarmInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AlarmRingDialog"

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mAlarmTypeTV:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 630
    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getAlarmName()Ljava/lang/String;

    move-result-object v0

    .line 631
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 632
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mAlarmTypeTV:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 634
    :cond_1
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mAlarmTypeTV:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 635
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mAlarmTypeTV:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 638
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->setAnimAndBg()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 261
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 262
    iput-boolean v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->isShow:Z

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchKeyEvent event:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlarmRingDialog"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 326
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public finish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Step#7 finish origin alarm id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mAlarmId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " alarmId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlarmRingDialog"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mAlarmId:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    invoke-static {p1, p2}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmUt;->alarmFinishReason(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "focus_loss"

    .line 348
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "Step#7 finish to dismiss"

    .line 349
    invoke-static {v1, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    invoke-direct {p0, p2}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->stopRing(Ljava/lang/String;)V

    goto :goto_0

    .line 353
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 354
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->dismiss()V

    goto :goto_0

    :cond_1
    const-string p1, "Step#7 finish with unmatched id, reject"

    .line 356
    invoke-static {v1, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public finishHoursReport()V
    .locals 2

    .line 336
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mAlarmTypeTV:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mAlarmTypeTV:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "\u6574\u70b9\u62a5\u65f6"

    .line 338
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->finishTmp()V

    :cond_0
    return-void
.end method

.method public finishTmp()V
    .locals 2

    const-string v0, "AlarmRingDialog"

    const-string v1, "finishTmp"

    .line 330
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 331
    iput-boolean v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mIsTmpDisappearUI:Z

    .line 332
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->dismiss()V

    return-void
.end method

.method public isShow()Z
    .locals 2

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isShow() called "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->isShow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlarmRingDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-boolean v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->isShow:Z

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKeyDown keyCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " event:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " isMock:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mIsMock:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlarmRingDialog"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_7

    const/16 v0, 0x18

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v0, :cond_5

    const/16 v0, 0x19

    if-eq p1, v0, :cond_3

    .line 467
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v0, v4, :cond_0

    const/16 v0, 0xa4

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_0
    const/16 v0, 0x83

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_7

    .line 471
    sget-boolean v0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mIsMock:Z

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmUt;->userPressButton(IZ)V

    .line 472
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->removeMuteState()V

    .line 473
    sget-boolean v0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mIsMock:Z

    if-nez v0, :cond_2

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "After handle by me and system mute mIsMock:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mIsMock:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mMainHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->handler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog$10;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog$10;-><init>(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 483
    :cond_2
    sput-boolean v3, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mIsMock:Z

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "After handle by system mute mIsMock:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mIsMock:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 450
    :cond_3
    invoke-static {p1, v3}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmUt;->userPressButton(IZ)V

    .line 451
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->getInstance()Lcom/alibaba/ailabs/basedomain/common/MediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->isRing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 452
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->removeVolumeState()V

    .line 453
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mMainHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->handler()Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog$9;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog$9;-><init>(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v2

    .line 463
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 434
    :cond_5
    invoke-static {p1, v3}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmUt;->userPressButton(IZ)V

    .line 435
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->getInstance()Lcom/alibaba/ailabs/basedomain/common/MediaManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->isRing()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 436
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->removeVolumeState()V

    .line 437
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mMainHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->handler()Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog$8;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog$8;-><init>(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v2

    :cond_6
    return v3

    .line 489
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onStop()V
    .locals 4

    .line 494
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStop, now finish "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " alarmId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mAlarmId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mIsTmpDisappearUI:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mIsTmpDisappearUI:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlarmRingDialog"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    iget-boolean v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mIsTmpDisappearUI:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 498
    iput-boolean v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mIsTmpDisappearUI:Z

    goto :goto_0

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mAlarmId:Ljava/lang/String;

    const-string v2, "AlarmRingActivity onStop"

    invoke-static {v0, v2}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmUt;->alarmFinishReason(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/common/ASRManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->unregisterOnAsrWakeUpListener()V

    const/4 v0, 0x0

    .line 505
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mHomeKeyReceiver:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog$HomeWatcherReceiver;

    if-eqz v2, :cond_1

    .line 506
    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mHomeKeyReceiver:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog$HomeWatcherReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 509
    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mHomeKeyReceiver:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog$HomeWatcherReceiver;

    throw v1

    :catch_0
    :cond_1
    :goto_1
    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mHomeKeyReceiver:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog$HomeWatcherReceiver;

    .line 511
    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->unregisterOnCompleteListener()V

    .line 512
    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mMainHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->handler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mUpdateTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 514
    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mUpdateTimeRunnable:Ljava/lang/Runnable;

    .line 515
    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 516
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->releaseWakeLock()V

    .line 517
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/common/ASRManager;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mCommandList:Ljava/util/ArrayList;

    .line 518
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 517
    invoke-virtual {v0, v2, v3}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->unregisterCommandListener(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 519
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/ui/alarm/OnePixelActivity;->finishActivity()V

    .line 520
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->release()V

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "After onStop mUpdateTimeRunnable:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mUpdateTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mHomeKeyReceiver:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mHomeKeyReceiver:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog$HomeWatcherReceiver;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mOnClickListener:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mMainHandler:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mMainHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    .line 273
    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWindowFocusChanged hasFocus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " alarmId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mAlarmId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlarmRingDialog"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p1, "onWindowFocusChanged lose focus, not finish"

    .line 276
    invoke-static {v1, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, " onWindowFocusChanged hasFocus"

    .line 278
    invoke-static {v1, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mAlarmId:Ljava/lang/String;

    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmUt;->showAlarmRingUI(Ljava/lang/String;)V

    .line 280
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->getInstance()Lcom/alibaba/ailabs/basedomain/common/MediaManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->killBackgroundApp()V

    .line 282
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/common/ASRManager;

    move-result-object p1

    new-instance v0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog$4;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog$4;-><init>(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;)V

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->registerOnAsrWakeUpListener(Lcom/alibaba/ailabs/basedomain/common/ASRManager$OnAsrWakeUpListener;)V

    .line 293
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/OnePixelActivity;->startActivity(Landroid/content/Context;)V

    .line 294
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mCommandList:Ljava/util/ArrayList;

    const-string v0, "AdjustUpVolume"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mCommandList:Ljava/util/ArrayList;

    const-string v0, "AdjustDownVolume"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mCommandList:Ljava/util/ArrayList;

    const-string v0, "Pause"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/common/ASRManager;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mOnCommandListener:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog$MyOnCommandListener;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mCommandList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mMainHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    .line 299
    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->handler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 297
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->registerCommandListener(Lcom/alibaba/ailabs/basedomain/common/ASRManager$IOnCommandListener;Ljava/util/ArrayList;Landroid/os/Handler;Ljava/lang/String;)V

    .line 302
    :goto_0
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    move-result-object p1

    new-instance v0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog$5;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog$5;-><init>(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;)V

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->registerOnCompleteListener(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$IPlayCompleteListener;)V

    return-void
.end method

.method public setAlarmId(Ljava/lang/String;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->mAlarmId:Ljava/lang/String;

    .line 247
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->updateUI()V

    .line 248
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->acquireWakeLock()V

    return-void
.end method

.method public show()V
    .locals 2

    const/4 v0, 0x1

    .line 253
    iput-boolean v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->isShow:Z

    const-string v0, "AlarmRingDialog"

    const-string v1, "show: "

    .line 254
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
