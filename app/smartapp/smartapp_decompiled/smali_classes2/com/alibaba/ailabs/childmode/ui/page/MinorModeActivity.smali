.class public Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity;
.super Lcom/alibaba/ailabs/childmode/ui/page/BaseActivity;
.source "MinorModeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity$MyRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MinorModeActivityTag"

.field private static mForbiddenModeSettingUrl:Ljava/lang/String; = "assistant://platformapi/startapp?appId=2021001169642804&nbupdate=syncforce&page=pages/screenControl/index?uuid="


# instance fields
.field private final EyeCareModePageConfigOrangeIndex:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mQrImageViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/page/BaseActivity;-><init>()V

    const-string v0, "Mo1wlo1muq97"

    .line 38
    iput-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity;->EyeCareModePageConfigOrangeIndex:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 35
    sget-object v0, Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity;->mForbiddenModeSettingUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity;->mQrImageViewRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity;)Landroid/os/Handler;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private getOrangeData()V
    .locals 4

    const-string v0, "MinorModeActivityTag"

    const-string v1, "Mo1wlo1muq97"

    .line 71
    invoke-static {p0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->getOrangeConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 74
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "forbidden_mode_setting_url"

    .line 76
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forbidden_mode_setting_url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 79
    sput-object v1, Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity;->mForbiddenModeSettingUrl:Ljava/lang/String;

    .line 81
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mForbiddenModeSettingUri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity;->mForbiddenModeSettingUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 83
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 86
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity;->mForbiddenModeSettingUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->getUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity;->mForbiddenModeSettingUrl:Ljava/lang/String;

    return-void
.end method

.method private initView()V
    .locals 2

    .line 93
    sget v0, Lcom/alibaba/ailabs/genie/timestatistics/R$id;->closeIv:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity$1;-><init>(Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    sget v0, Lcom/alibaba/ailabs/genie/timestatistics/R$id;->qrIvId:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 101
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity;->mQrImageViewRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private intToString(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 136
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private loadForbiddenTime()V
    .locals 7

    .line 106
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->getChildModeSettingBean(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 108
    sget v1, Lcom/alibaba/ailabs/genie/timestatistics/R$id;->minorDailyTimeTv:I

    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 109
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->getDailyAvailableTime()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    const-wide/16 v4, 0x3c

    .line 111
    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 112
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6bcf\u5929"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u5206\u949f"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    :cond_0
    sget v1, Lcom/alibaba/ailabs/genie/timestatistics/R$id;->minorForbiddenTimeTv:I

    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 116
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->getForbiddenTime()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 117
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "list:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MinorModeActivityTag"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 119
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;

    .line 120
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->getStartHour()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity;->intToString(I)Ljava/lang/String;

    move-result-object v3

    .line 121
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->getStartMin()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity;->intToString(I)Ljava/lang/String;

    move-result-object v4

    .line 122
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->getEndHour()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity;->intToString(I)Ljava/lang/String;

    move-result-object v5

    .line 123
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->getEndMin()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity;->intToString(I)Ljava/lang/String;

    move-result-object v0

    .line 124
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " \u81f3 "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    sget v0, Lcom/alibaba/ailabs/genie/timestatistics/R$id;->minorTimeNotice:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 127
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private loadQR()V
    .locals 1

    .line 144
    new-instance v0, Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity$MyRunnable;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity$MyRunnable;-><init>(Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/taskpool/GenieThreadManager;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 49
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/childmode/ui/page/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    iput-object p0, p0, Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity;->mContext:Landroid/content/Context;

    .line 51
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity;->mHandler:Landroid/os/Handler;

    .line 52
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 53
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x10700

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/high16 v0, -0x80000000

    .line 56
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const/4 v0, 0x0

    .line 57
    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 58
    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 60
    sget p1, Lcom/alibaba/ailabs/genie/timestatistics/R$layout;->minor_mode_layout:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity;->setContentView(I)V

    const-string p1, "MinorModeActivityTag"

    const-string v0, "onCreate"

    .line 61
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "qrcodePage"

    const-string v0, "a1z3lt.b56038801"

    const/4 v1, 0x0

    .line 62
    invoke-static {p1, v0, v1}, Lcom/alibaba/ailabs/genie/utils/ut/UtReport;->pageUT(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 64
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity;->getOrangeData()V

    .line 65
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity;->initView()V

    .line 66
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity;->loadQR()V

    .line 67
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity;->loadForbiddenTime()V

    return-void
.end method
