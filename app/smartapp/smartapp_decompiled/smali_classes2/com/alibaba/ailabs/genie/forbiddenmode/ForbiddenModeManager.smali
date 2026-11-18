.class public Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;
.super Ljava/lang/Object;
.source "ForbiddenModeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyTtsListener;,
        Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener;
    }
.end annotation


# static fields
.field public static final SP_KEY_IS_CLOSE_BY_USER_TOTAL_AVAILABLE_TIME:Ljava/lang/String; = "sp_key_total_available_time"

.field private static final SP_KEY_SINGLE_AVAILABLE_TIME:Ljava/lang/String; = "sp_key_single_available_time"

.field private static final TAG:Ljava/lang/String; = "ForbiddenModeManager"

.field public static final VERIFY_PASSWORD_URI:Ljava/lang/String; = "genie://com.alibaba.ailabs.genie.datacenter/password?type=1"

.field private static volatile sInstance:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;


# instance fields
.field private mChildModeSettingBean:Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;

.field private final mContext:Landroid/content/Context;

.field private mCurrentBean:Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;

.field private mEyeModelEnable:Z

.field private mForbiddenAppDialog:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;

.field private mForbiddenModeDialog:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;

.field private mForbiddenModeSpecialTimeDialog:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;

.field private mForbiddenTimeBean:Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;

.field private mHandler:Landroid/os/Handler;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private volatile mSharedPreference:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->mEyeModelEnable:Z

    .line 189
    new-instance v0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$2;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$2;-><init>(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->mContext:Landroid/content/Context;

    .line 75
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->mHandler:Landroid/os/Handler;

    .line 77
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->getChildModeSettingBean(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->mChildModeSettingBean:Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;

    .line 78
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->isShieldEyeMode(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->mEyeModelEnable:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 80
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    .line 82
    :goto_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->registerBroadcast()V

    .line 83
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->initSharedPreference(Landroid/content/Context;)V

    .line 84
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->initDataCenter(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;)Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->mForbiddenModeDialog:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;

    return-object p0
.end method

.method static synthetic access$002(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;)Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->mForbiddenModeDialog:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;)Landroid/content/Context;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;)Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->mChildModeSettingBean:Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;)Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->mChildModeSettingBean:Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->mEyeModelEnable:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->mEyeModelEnable:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;Z)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->eyeModeChanged(Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;Ljava/lang/String;J)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->updateTime(Ljava/lang/String;J)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;)Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->mForbiddenAppDialog:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;

    return-object p0
.end method

.method static synthetic access$302(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;)Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->mForbiddenAppDialog:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;

    return-object p1
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;)Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->mForbiddenModeSpecialTimeDialog:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;

    return-object p0
.end method

.method static synthetic access$402(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;)Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->mForbiddenModeSpecialTimeDialog:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;

    return-object p1
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->dismissDialog()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$600(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;)Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->mCurrentBean:Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;

    return-object p0
.end method

.method private dismissDialog()V
    .locals 3

    const-string v0, "ForbiddenModeManager"

    const-string v1, "handleForbiddenTimeEnd dismissDialog"

    .line 160
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->mForbiddenModeSpecialTimeDialog:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->mForbiddenTimeBean:Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->getWeek()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "handleForbiddenTimeEnd \u6ca1\u6709\u8bbe\u7f6e\u661f\u671f\u7684\u4e00\u6b21\u751f\u6548\u540e\u81ea\u52a8\u5173\u95ed"

    .line 164
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->mForbiddenTimeBean:Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->setValue(Z)V

    .line 166
    invoke-static {}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenTimeManager;->getInstance()Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenTimeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->mForbiddenTimeBean:Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenTimeManager;->updateBean(Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;)V

    .line 167
    iput-object v2, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->mForbiddenTimeBean:Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->mForbiddenModeSpecialTimeDialog:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->dismiss()V

    .line 170
    iput-object v2, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->mForbiddenModeSpecialTimeDialog:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;

    :cond_1
    return-void
.end method

.method private eyeModeChanged(Z)V
    .locals 2

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eyeModeChanged, enable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ForbiddenModeManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.sys.is.eyeshield.mode"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->notifyChangeEyeMode(Z)V

    .line 97
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->enableEyeYieldMode(Landroid/content/Context;Z)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;
    .locals 2

    .line 148
    sget-object v0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->sInstance:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;

    if-nez v0, :cond_1

    .line 149
    const-class v0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;

    monitor-enter v0

    .line 150
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->sInstance:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;

    if-nez v1, :cond_0

    .line 151
    new-instance v1, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->sInstance:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;

    .line 153
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 155
    :cond_1
    :goto_0
    sget-object p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->sInstance:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;

    return-object p0
.end method

.method private getTime(Ljava/lang/String;)J
    .locals 3

    .line 468
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->mSharedPreference:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x0

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private initDataCenter(Landroid/content/Context;)V
    .locals 2

    .line 89
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/data/GenieDataManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/data/GenieDataManager;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener;-><init>(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/data/GenieDataManager;->registerListener(Lcom/alibaba/ailabs/genie/data/GenieDataListener;)V

    return-void
.end method

.method private initSharedPreference(Landroid/content/Context;)V
    .locals 1

    const-string v0, "ForbiddenMode_SP"

    .line 135
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/second/sharedpreference/NewSharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->mSharedPreference:Landroid/content/SharedPreferences;

    .line 136
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->mSharedPreference:Landroid/content/SharedPreferences;

    new-instance v0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$1;-><init>(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;)V

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private isForbiddenTime()Z
    .locals 10

    .line 397
    invoke-static {}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenTimeManager;->getInstance()Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenTimeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenTimeManager;->getData()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 399
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 400
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;

    .line 401
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "show forbidden "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ForbiddenModeManager"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->isValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 403
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const/4 v6, 0x7

    .line 404
    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/16 v7, 0xb

    .line 405
    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/16 v8, 0xc

    .line 406
    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 407
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleForbiddenTime  dayOfWeek="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " hour="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " min="

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->getWeek()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->getWeek()Ljava/util/List;

    move-result-object v4

    .line 410
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 411
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->getWeek()Ljava/util/List;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->getStartHour()I

    move-result v4

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->getStartMin()I

    move-result v6

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->getEndHour()I

    move-result v7

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->getEndMin()I

    move-result v8

    invoke-static {v4, v6, v7, v8}, Lcom/alibaba/ailabs/genie/utils/TimeUtils;->isInTimeCycleModePeriod(IIII)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " in forbiddenTime ,show Dialog "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iput-object v3, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->mCurrentBean:Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;

    goto :goto_1

    .line 418
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " in forbiddenTime ,not show Dialog "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    const-string v4, "not set week , do once"

    .line 421
    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->getStartHour()I

    move-result v4

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->getStartMin()I

    move-result v6

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->getEndHour()I

    move-result v7

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->getEndMin()I

    move-result v8

    invoke-static {v4, v6, v7, v8}, Lcom/alibaba/ailabs/genie/utils/TimeUtils;->isInTimeCycleModePeriod(IIII)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 423
    iput-object v3, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->mForbiddenTimeBean:Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;

    .line 424
    iput-object v3, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->mCurrentBean:Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;

    const-string v0, "in forbiddenTime , show Dialog Once "

    .line 426
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public static isListenMode()Z
    .locals 1

    const-string v0, "persist.sys.is.listen.mode"

    .line 213
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->getBooleanSystemProperties(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private notifyChangeEyeMode(Z)V
    .locals 2

    .line 122
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://com.alibaba.ailabs.childmode.provider"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/eyeYieldMode"

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?isOpened="

    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 125
    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 127
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    nop

    nop

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 129
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private registerBroadcast()V
    .locals 3

    .line 176
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 177
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 178
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.STATE_CHANGE"

    .line 179
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.DATE_CHANGED"

    .line 180
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 181
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 182
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 185
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private updateTime(Ljava/lang/String;J)V
    .locals 1

    .line 464
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public checkBreakTime(Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;)Z
    .locals 9

    .line 303
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->mForbiddenModeDialog:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;

    const/4 v1, 0x0

    const-string v2, "ForbiddenModeManager"

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 308
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-string v0, "sp_key_single_available_time"

    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->getTime(Ljava/lang/String;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    .line 309
    div-long/2addr v3, v5

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->getBreakTime()I

    move-result v5

    int-to-long v5, v5

    cmp-long v7, v3, v5

    if-lez v7, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 310
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u5355\u6b21\u53ef\u770b\u65f6\u957f\u754c\u9762\u521d\u6b21\u5f39\u51fa\u65f6\u95f4 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->getTime(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u73b0\u5728\u65f6\u95f4 = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u8fc7\u53bb\u4e86 = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4f11\u606f\u65f6\u95f4 = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->getBreakTime()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_2

    const-string p1, "checkBreakTime dismissDialog"

    .line 315
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->mForbiddenModeDialog:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->dismiss()V

    const/4 p1, 0x0

    .line 317
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->mForbiddenModeDialog:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;

    .line 318
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/db/QueryUtil;->getInstance()Lcom/alibaba/ailabs/genie/time/db/QueryUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/time/db/QueryUtil;->resetStartTime()V

    const-string p1, "\u4f11\u606f\u65f6\u95f4\u7ed3\u675f\uff0c\u91cd\u7f6e\u5355\u6b21\u65f6\u957f"

    .line 319
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1

    :cond_3
    :goto_1
    const-string p1, "\u5355\u6b21\u53ef\u770b\u65f6\u957f\u754c\u9762\u6ca1\u6709\u5728\u5f53\u524d\u754c\u9762\uff0c\u4e0d\u9700\u8981\u68c0\u6d4b\u4f11\u606f\u65f6\u957f"

    .line 304
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public dismissTotalAvailableTimeDialog()V
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$3;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$3;-><init>(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public enableEyeYieldMode(Landroid/content/Context;Z)V
    .locals 3

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    :try_start_0
    const-string v0, "content://com.alibaba.ailabs.childmode.provider/childMode"

    .line 108
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 110
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "param"

    .line 111
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string p2, "method"

    const/4 v2, 0x3

    .line 113
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 114
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 116
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getFlagCloseByUser(Ljava/lang/String;)Z
    .locals 2

    .line 459
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->mSharedPreference:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public handleForbiddenApp()V
    .locals 2

    .line 328
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->mForbiddenAppDialog:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$6;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$6;-><init>(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public handleForbiddenTime()V
    .locals 3

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleForbiddenTime getActivityName()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/second/utils/ActivityUtils;->getTopActivityName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ForbiddenModeManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication;->isChildModel()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->isListenMode()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->isSkipForbiddenTimeActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 358
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->isForbiddenTime()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 360
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$7;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$7;-><init>(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 382
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->mForbiddenModeSpecialTimeDialog:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 385
    :cond_2
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->mForbiddenModeSpecialTimeDialog:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;

    instance-of v0, v0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeSpecialTimeDialog;

    if-eqz v0, :cond_3

    .line 386
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$8;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$8;-><init>(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_0
    return-void

    .line 355
    :cond_4
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleForbiddenTime= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->isListenMode()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public handleSingleAvailableTime(Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;)V
    .locals 2

    .line 267
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->mForbiddenModeDialog:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "ForbiddenModeManager"

    const-string v0, "\u5f53\u524d\u754c\u9762\u5df2\u7ecf\u5b58\u5728\uff0c\u8fd4\u56de"

    .line 268
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$5;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$5;-><init>(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public handleTotalAvailableTime()V
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$4;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$4;-><init>(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public isSkipForbiddenTimeActivity()Z
    .locals 2

    .line 439
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/second/utils/ActivityUtils;->getTopActivityName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.alibaba.ailabs.childmode.ui.page.ValidateLockActivity"

    .line 440
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.alibaba.ailabs.childmode.ui.page.ChildModeSettingActivity"

    .line 441
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.alibaba.ailabs.childmode.ui.page.ForbiddenTimeAddActivity"

    .line 442
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.alibaba.ailabs.childmode.ui.page.GenieTimePickerActivity"

    .line 443
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.alibaba.ailabs.childmode.ui.page.AppSettingActivity"

    .line 444
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.alibaba.ailabs.childmode.ui.page.WarningActivity"

    .line 445
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public updateFlagCloseByUser(Ljava/lang/String;Z)V
    .locals 1

    .line 452
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
