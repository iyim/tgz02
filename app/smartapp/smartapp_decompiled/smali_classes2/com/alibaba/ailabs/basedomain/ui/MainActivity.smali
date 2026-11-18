.class public Lcom/alibaba/ailabs/basedomain/ui/MainActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/basedomain/ui/MainActivity$MyOnTouchListener;
    }
.end annotation


# static fields
.field public static final MSG_AUTO_BACK:I = 0x1

.field public static final TAG:Ljava/lang/String; = "MainActivity"

.field private static mDelayBackTime:I = 0x14

.field private static mDelayBackTimeAfterTtsEnd:I


# instance fields
.field private mBaikeInfoPlanetBtn:Lcom/alibaba/ailabs/basedomain/ui/planet/BaikeInfoPlanetBtn;

.field private mContext:Landroid/content/Context;

.field private final mMainHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

.field private final mOnTouchListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/ailabs/basedomain/ui/MainActivity$MyOnTouchListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSessionId:I

.field private mTtsListener:Lcom/alibaba/ailabs/basedomain/common/ASRManager$OnTtsStatusListener;

.field private mViewModel:Lcom/alibaba/ailabs/basedomain/ui/UIManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->mOnTouchListeners:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity$1;-><init>(Lcom/alibaba/ailabs/basedomain/ui/MainActivity;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->mMainHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/basedomain/ui/MainActivity;Ljava/lang/Class;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->handleNewFragment(Ljava/lang/Class;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/basedomain/ui/MainActivity;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->mSessionId:I

    return p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/basedomain/ui/MainActivity;)Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->mMainHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    return-object p0
.end method

.method static synthetic access$300()I
    .locals 1

    .line 44
    sget v0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->mDelayBackTime:I

    return v0
.end method

.method static synthetic access$400()I
    .locals 1

    .line 44
    sget v0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->mDelayBackTimeAfterTtsEnd:I

    return v0
.end method

.method static synthetic access$402(I)I
    .locals 0

    .line 44
    sput p0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->mDelayBackTimeAfterTtsEnd:I

    return p0
.end method

.method private changeDate(III)V
    .locals 4

    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " changeDate timeZone:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->getDefaultTimeZone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainActivity"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " changeDate is Auto timeZone:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->isTimeZoneAuto()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " changeDate isDateTimeAuto:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->isDateTimeAuto()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 556
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->setAutoDateTime(I)V

    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " changeDate isDateTimeAuto after set:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->isDateTimeAuto()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 559
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " changeDate Now time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->setSysDate(III)V

    .line 561
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " changeDate Now time after set:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/util/Date;

    .line 562
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p2, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 561
    invoke-static {v1, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getVisibleFragment()Landroid/support/v4/app/Fragment;
    .locals 5

    .line 437
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 438
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    .line 439
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVisibleFragment fragments:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MainActivity"

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 443
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/Fragment;

    if-eqz v3, :cond_1

    .line 444
    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVisibleFragment fragment:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " fragment.isVisible():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 445
    invoke-static {v2, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_2
    return-object v1
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 7

    .line 163
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->mMainHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->removeMessages(I)V

    .line 165
    new-instance v0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity$3;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity$3;-><init>(Lcom/alibaba/ailabs/basedomain/ui/MainActivity;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->mTtsListener:Lcom/alibaba/ailabs/basedomain/common/ASRManager$OnTtsStatusListener;

    .line 226
    invoke-static {p0}, Lcom/alibaba/ailabs/basedomain/common/CommonUtil;->checkPlanetValid(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "MainActivity"

    if-eqz v0, :cond_0

    const-string v0, "checkPlanetValid() true"

    .line 228
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "planetInfo"

    .line 230
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 231
    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/BaikePlanetInfo;->valueOf(Ljava/lang/String;)Lcom/alibaba/ailabs/basedomain/model/encyclopedia/BaikePlanetInfo;

    move-result-object v0

    .line 232
    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->mBaikeInfoPlanetBtn:Lcom/alibaba/ailabs/basedomain/ui/planet/BaikeInfoPlanetBtn;

    invoke-virtual {v2, v0}, Lcom/alibaba/ailabs/basedomain/ui/planet/BaikeInfoPlanetBtn;->update(Lcom/alibaba/ailabs/basedomain/model/encyclopedia/BaikePlanetInfo;)V

    goto :goto_0

    :cond_0
    const-string v0, "checkPlanetValid() false"

    .line 234
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v0, "renderData"

    .line 237
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    const-string v2, "reply"

    .line 238
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pageType"

    .line 239
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "sessionId"

    .line 240
    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->mSessionId:I

    const-string v5, "askAgain"

    .line 241
    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const/16 v5, 0x14

    if-eqz p1, :cond_1

    .line 243
    sput v5, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->mDelayBackTime:I

    .line 244
    sput v4, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->mDelayBackTimeAfterTtsEnd:I

    const-string p1, "Ask again delay back time reset to 20s"

    .line 245
    invoke-static {v1, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MainActivity renderData:"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MainActivity reply:"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MainActivity pageType:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz v0, :cond_2

    .line 255
    invoke-virtual {p0, v3, v0}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->handleDomain(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_1

    .line 257
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "args is empty, type:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " dataSerializable:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :goto_1
    sput v5, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->mDelayBackTime:I

    .line 261
    sput v4, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->mDelayBackTimeAfterTtsEnd:I

    return-void
.end method

.method private handleNewFragment(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handle newFragment Class: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainActivity"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 156
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/Fragment;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->replaceFragment(Landroid/support/v4/app/Fragment;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 158
    :goto_0
    invoke-virtual {p1}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private init()V
    .locals 2

    .line 293
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->mMainHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->removeMessages(I)V

    return-void
.end method

.method private release()V
    .locals 3

    .line 393
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->mTtsListener:Lcom/alibaba/ailabs/basedomain/common/ASRManager$OnTtsStatusListener;

    if-nez v0, :cond_0

    return-void

    .line 394
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->getVisibleDomainType()Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;

    move-result-object v0

    .line 395
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release() called "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MainActivity"

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    sget-object v1, Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;->ALARM:Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;

    if-ne v0, v1, :cond_1

    .line 398
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->finish()V

    .line 401
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/common/ASRManager;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->mSessionId:I

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->mTtsListener:Lcom/alibaba/ailabs/basedomain/common/ASRManager$OnTtsStatusListener;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->unregisterTTSStatusCallback(ILcom/alibaba/ailabs/basedomain/common/ASRManager$OnTtsStatusListener;)V

    .line 402
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/common/ASRManager;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->mSessionId:I

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->stopTTS(I)V

    .line 403
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/common/ASRManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->release()V

    const/4 v0, 0x0

    .line 404
    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->mTtsListener:Lcom/alibaba/ailabs/basedomain/common/ASRManager$OnTtsStatusListener;

    const/4 v0, 0x0

    .line 405
    iput v0, p0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->mSessionId:I

    .line 407
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->mMainHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->removeMessages(I)V

    .line 408
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->mViewModel:Lcom/alibaba/ailabs/basedomain/ui/UIManager;

    if-eqz v0, :cond_2

    .line 409
    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/ui/UIManager;->clear()V

    .line 413
    :cond_2
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->removeFragments()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static removeBgTask(Ljava/lang/Runnable;)V
    .locals 0

    .line 301
    invoke-static {p0}, Lcom/alibaba/ailabs/basedomain/ui/BaseService;->removeBgTask(Ljava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private removeFragments()V
    .locals 6

    .line 419
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 420
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v1

    .line 421
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeFragments fragments:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MainActivity"

    invoke-static {v3, v2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_0

    return-void

    .line 425
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 426
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeFragments fragment:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " remove"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_1

    goto :goto_0

    .line 432
    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    :cond_2
    return-void
.end method

.method private resetAutoUpdate()V
    .locals 3

    .line 547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " resetAutoUpdate  isDateTimeAuto:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->isDateTimeAuto()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainActivity"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 548
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->setAutoDateTime(I)V

    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " resetAutoUpdate isDateTimeAuto after set:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->isDateTimeAuto()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static runBgTask(Ljava/lang/Runnable;)V
    .locals 0

    .line 297
    invoke-static {p0}, Lcom/alibaba/ailabs/basedomain/ui/BaseService;->postBgTask(Ljava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const-string v0, "MainActivity"

    .line 471
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchTouchEvent MotionEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->mMainHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->removeMessages(I)V

    .line 474
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchTouchEvent all listeners size: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->mOnTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->mOnTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/ailabs/basedomain/ui/MainActivity$MyOnTouchListener;

    if-eqz v3, :cond_0

    .line 477
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchTouchEvent listener : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    invoke-interface {v3, p1}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity$MyOnTouchListener;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 479
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchTouchEvent consume by listener:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 486
    :catch_0
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public finish()V
    .locals 2

    const-string v0, "MainActivity"

    const-string v1, "finish MainActivity"

    .line 288
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->finish()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public getDefaultTimeZone()Ljava/lang/String;
    .locals 1

    .line 506
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVisibleDomainType()Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;
    .locals 3

    .line 455
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->getVisibleFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 456
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVisibleDomainType currentFragment :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MainActivity"

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    instance-of v1, v0, Lcom/alibaba/ailabs/basedomain/ui/IBaseUI;

    if-eqz v1, :cond_0

    .line 458
    check-cast v0, Lcom/alibaba/ailabs/basedomain/ui/IBaseUI;

    .line 459
    invoke-interface {v0}, Lcom/alibaba/ailabs/basedomain/ui/IBaseUI;->getDomainType()Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;

    move-result-object v0

    return-object v0

    .line 461
    :cond_0
    sget-object v0, Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;->NONE:Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;

    return-object v0
.end method

.method public handleDomain(Ljava/lang/String;Ljava/io/Serializable;)V
    .locals 1

    .line 313
    new-instance v0, Lcom/alibaba/ailabs/basedomain/ui/DomainFragmentFactory;

    invoke-direct {v0}, Lcom/alibaba/ailabs/basedomain/ui/DomainFragmentFactory;-><init>()V

    .line 314
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/ailabs/basedomain/ui/DomainFragmentFactory;->getFragment(Ljava/lang/String;Ljava/io/Serializable;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 316
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    :cond_0
    const-string p1, "MainActivity"

    const-string p2, "No fragment found"

    .line 318
    invoke-static {p1, p2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public isDateTimeAuto()Z
    .locals 3

    const/4 v0, 0x0

    .line 521
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_time"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    .line 524
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    return v0
.end method

.method public isHostResumed()Z
    .locals 2

    .line 281
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->getLifecycle()Landroid/arch/lifecycle/Lifecycle;

    move-result-object v0

    .line 283
    invoke-virtual {v0}, Landroid/arch/lifecycle/Lifecycle;->getCurrentState()Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$State;->RESUMED:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/Lifecycle$State;->isAtLeast(Landroid/arch/lifecycle/Lifecycle$State;)Z

    move-result v0

    return v0
.end method

.method public isTimeZoneAuto()Z
    .locals 3

    const/4 v0, 0x0

    .line 511
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_time_zone"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    .line 514
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    return v0
.end method

.method public onBackPressed()V
    .locals 3

    .line 266
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->isHostResumed()Z

    move-result v0

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBackPressed() called. isResumed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MainActivity"

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 272
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    const-string v0, "onBackPressed() popBackStack"

    .line 273
    invoke-static {v2, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "onBackPressed() finish activity"

    .line 275
    invoke-static {v2, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->finish()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 83
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->mMainHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->removeMessages(I)V

    const/4 p1, 0x0

    .line 86
    sput-boolean p1, Lcom/alibaba/ailabs/basedomain/HDUtils;->adaptiveIfNeed:Z

    .line 88
    invoke-static {p0}, Lcom/alibaba/ailabs/basedomain/common/UIUtil;->setFullScreen(Landroid/app/Activity;)V

    const-string v1, "MainActivity"

    const-string v2, "onCreate begin"

    .line 89
    invoke-static {v1, v2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    sget v2, Lcom/alibaba/ailabs/basedomain/R$layout;->base_domain_activity_main:I

    invoke-virtual {p0, v2}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->setContentView(I)V

    .line 92
    sget v2, Lcom/alibaba/ailabs/basedomain/R$id;->baike_infoplanet_btn:I

    invoke-virtual {p0, v2}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/basedomain/ui/planet/BaikeInfoPlanetBtn;

    iput-object v2, p0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->mBaikeInfoPlanetBtn:Lcom/alibaba/ailabs/basedomain/ui/planet/BaikeInfoPlanetBtn;

    .line 94
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->mContext:Landroid/content/Context;

    .line 95
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 96
    invoke-virtual {v2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    .line 97
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeDate before extraData:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :try_start_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "reset"

    if-nez v4, :cond_0

    :try_start_1
    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, " "

    .line 100
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 101
    aget-object p1, v4, p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 102
    aget-object v5, v4, v0

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sub-int/2addr v5, v0

    const/4 v0, 0x2

    .line 103
    aget-object v0, v4, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 104
    invoke-direct {p0, p1, v5, v0}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->changeDate(III)V

    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 106
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->resetAutoUpdate()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 109
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "changeDate extraData:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "data:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCreate, intent:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-direct {p0, v2}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->handleIntent(Landroid/content/Intent;)V

    .line 115
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/ui/UIManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/ui/UIManager;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->mViewModel:Lcom/alibaba/ailabs/basedomain/ui/UIManager;

    .line 116
    new-instance p1, Lcom/alibaba/ailabs/basedomain/ui/MainActivity$2;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity$2;-><init>(Lcom/alibaba/ailabs/basedomain/ui/MainActivity;)V

    .line 122
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->mViewModel:Lcom/alibaba/ailabs/basedomain/ui/UIManager;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/ui/UIManager;->getFragmentClass()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/arch/lifecycle/MutableLiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 123
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->mViewModel:Lcom/alibaba/ailabs/basedomain/ui/UIManager;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/ui/UIManager;->getFragmentClass()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroid/arch/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->handleNewFragment(Ljava/lang/Class;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "MainActivity"

    const-string v1, "onDestroy"

    .line 383
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 386
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->release()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 128
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNewIntent, intent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainActivity"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->handleIntent(Landroid/content/Intent;)V

    const/16 p1, 0x14

    .line 131
    sput p1, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->mDelayBackTime:I

    const/4 p1, 0x0

    .line 132
    sput p1, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->mDelayBackTimeAfterTtsEnd:I

    .line 133
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->mMainHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->removeMessages(I)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 343
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    const-string v0, "MainActivity"

    const-string v1, "onPause"

    .line 345
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->release()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 324
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 325
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/common/ASRManager;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->mSessionId:I

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->mTtsListener:Lcom/alibaba/ailabs/basedomain/common/ASRManager$OnTtsStatusListener;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->registerTTSStatusCallback(ILcom/alibaba/ailabs/basedomain/common/ASRManager$OnTtsStatusListener;)V

    const-string v0, "MainActivity"

    const-string v1, "onResume end. "

    .line 326
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/UIManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/ui/UIManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/ui/UIManager;->getPageType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "aligenie.baike.base"

    .line 330
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/common/BaiKeUTReporter;->infoPlanetPage()V

    .line 333
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->mBaikeInfoPlanetBtn:Lcom/alibaba/ailabs/basedomain/ui/planet/BaikeInfoPlanetBtn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->mBaikeInfoPlanetBtn:Lcom/alibaba/ailabs/basedomain/ui/planet/BaikeInfoPlanetBtn;

    .line 334
    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/ui/planet/BaikeInfoPlanetBtn;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 335
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/common/BaiKeUTReporter;->infoPlanetShown()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSaveInstanceState() called with: outState = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainActivity"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 371
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    const-string v0, "MainActivity"

    const-string v1, "onStop, now finish "

    .line 372
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->release()V

    :cond_0
    return-void
.end method

.method public registerMyOnTouchListener(Lcom/alibaba/ailabs/basedomain/ui/MainActivity$MyOnTouchListener;)V
    .locals 2

    .line 490
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->mOnTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->mOnTouchListeners:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 493
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerMyOnTouchListener() called with: myOnTouchListener = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MainActivity"

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public replaceFragment(Landroid/support/v4/app/Fragment;)V
    .locals 2

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MainActivity replaceFragment fragment:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainActivity"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 307
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 308
    sget v1, Lcom/alibaba/ailabs/basedomain/R$id;->root_layout:I

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 309
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public setAutoDateTime(I)V
    .locals 2

    .line 530
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_time"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setSysDate(III)V
    .locals 4

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSysDate :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainActivity"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 537
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x2

    .line 538
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x5

    .line 539
    invoke-virtual {v0, p1, p3}, Ljava/util/Calendar;->set(II)V

    .line 540
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    .line 541
    div-long v0, p1, v0

    const-wide/32 v2, 0x7fffffff

    cmp-long p3, v0, v2

    if-gez p3, :cond_0

    .line 542
    iget-object p3, p0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->mContext:Landroid/content/Context;

    const-string v0, "alarm"

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/AlarmManager;

    invoke-virtual {p3, p1, p2}, Landroid/app/AlarmManager;->setTime(J)V

    :cond_0
    return-void
.end method

.method public unregisterMyOnTouchListener(Lcom/alibaba/ailabs/basedomain/ui/MainActivity$MyOnTouchListener;)V
    .locals 2

    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterMyOnTouchListener() called with: myOnTouchListener = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainActivity"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->mOnTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
