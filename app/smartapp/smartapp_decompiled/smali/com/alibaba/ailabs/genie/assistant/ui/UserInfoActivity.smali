.class public Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "UserInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final ENTRANCE_URI:Ljava/lang/String; = "webapp://com.alibaba.ailabs.genie.webapps/open?appId=2021002123642001&pkg=com.alipay.arome.app&page=pages/index/index&from=system"

.field public static final ENTRANCE_URI_WAFT:Ljava/lang/String; = "waft://open?genieAppId=2021072176003&code=waft_super_member&type=page&path=pages/index/index&query=from%3Dsystem"

.field private static final PAGENAME:Ljava/lang/String; = "systemsetting_account"

.field public static final PAY_URI:Ljava/lang/String; = "webapp://com.alibaba.ailabs.genie.webapps/open?appId=2021002123642001&pkg=com.alipay.arome.app&page=pages/pay/pay&from=system"

.field public static final PAY_URI_WAFT:Ljava/lang/String; = "waft://open?genieAppId=2021072176003&code=waft_super_member&type=page&path=pages/pay/pay&query=from%3Dsystem"

.field private static final SPM:Ljava/lang/String; = "a1z3lt.12021513"

.field public static final TAG:Ljava/lang/String; = "UserInfoActivity"


# instance fields
.field private isAllowReveal:Z

.field private mHeaderImg:Landroid/widget/ImageView;

.field private mIUserInfoUpdate:Lcom/alibaba/ailabs/genie/assistant/sdk/account/IUserInfoUpdate;

.field private mLocationTxt:Landroid/widget/TextView;

.field private mLoginTimeTxt:Landroid/widget/TextView;

.field private mLogoutBtn:Landroid/widget/Button;

.field private mMobileTxt:Landroid/widget/TextView;

.field private mNameHeader:Landroid/widget/TextView;

.field private mNickNameTxt:Landroid/widget/TextView;

.field private mTvOpenVip:Landroid/widget/TextView;

.field private mVipEntranceImg:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->isAllowReveal:Z

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;Lorg/json/JSONObject;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->updateAccountInfo(Lorg/json/JSONObject;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;ZLjava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->startPayPage(ZLjava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;)Lcom/alibaba/ailabs/genie/assistant/sdk/account/IUserInfoUpdate;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->mIUserInfoUpdate:Lcom/alibaba/ailabs/genie/assistant/sdk/account/IUserInfoUpdate;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->showNetWorkError()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->sendUT(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private getContent(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 218
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "null"

    .line 219
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 220
    :cond_0
    sget p1, Lcom/alibaba/ailabs/genie/agui/adapter/R$string;->unkonow_tip:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private initView()V
    .locals 3

    .line 78
    sget v0, Lcom/alibaba/ailabs/genie/agui/adapter/R$id;->user_nickname:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->mNameHeader:Landroid/widget/TextView;

    .line 79
    sget v0, Lcom/alibaba/ailabs/genie/agui/adapter/R$id;->nickname_content:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->mNickNameTxt:Landroid/widget/TextView;

    .line 80
    sget v0, Lcom/alibaba/ailabs/genie/agui/adapter/R$id;->location_content:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->mLocationTxt:Landroid/widget/TextView;

    .line 81
    sget v0, Lcom/alibaba/ailabs/genie/agui/adapter/R$id;->mobile_content:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->mMobileTxt:Landroid/widget/TextView;

    .line 82
    sget v0, Lcom/alibaba/ailabs/genie/agui/adapter/R$id;->user_logintime:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->mLoginTimeTxt:Landroid/widget/TextView;

    .line 83
    sget v0, Lcom/alibaba/ailabs/genie/agui/adapter/R$id;->logout_btn:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->mLogoutBtn:Landroid/widget/Button;

    .line 84
    sget v0, Lcom/alibaba/ailabs/genie/agui/adapter/R$id;->user_avatar:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->mHeaderImg:Landroid/widget/ImageView;

    .line 85
    sget v0, Lcom/alibaba/ailabs/genie/agui/adapter/R$id;->iv_vip_entrance:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->mVipEntranceImg:Landroid/widget/ImageView;

    .line 86
    sget v0, Lcom/alibaba/ailabs/genie/agui/adapter/R$id;->tv_open_vip:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->mTvOpenVip:Landroid/widget/TextView;

    .line 88
    sget v0, Lcom/alibaba/ailabs/genie/agui/adapter/R$id;->home_nav_bar:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;

    const-string/jumbo v1, "\u4e2a\u4eba\u8d26\u53f7"

    .line 89
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;->setTitle(Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->mLogoutBtn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getInstance()Lcom/alibaba/ailabs/geniesdk/AguiCtx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getNativeUiManager()Lcom/alibaba/ailabs/geniesdk/ui/IBaseView;

    move-result-object v1

    const/4 v2, 0x0

    .line 92
    invoke-interface {v1, v2}, Lcom/alibaba/ailabs/geniesdk/ui/IBaseView;->hideUi(Z)V

    .line 93
    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;->setHostActivity(Landroid/app/Activity;)V

    .line 95
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity$1;-><init>(Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->mIUserInfoUpdate:Lcom/alibaba/ailabs/genie/assistant/sdk/account/IUserInfoUpdate;

    return-void
.end method

.method private loadData()V
    .locals 6

    const-string v0, "UserInfoActivity"

    .line 116
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->getinstace()Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->getUserData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 118
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    sget-object v3, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->NAMES:[Ljava/lang/String;

    sget v4, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->AVATAR_KEY:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->mHeaderImg:Landroid/widget/ImageView;

    .line 120
    invoke-virtual {v1, v3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 122
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->mNameHeader:Landroid/widget/TextView;

    sget-object v3, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->NAMES:[Ljava/lang/String;

    sget v4, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->NICKNAME_KEY:I

    aget-object v3, v3, v4

    invoke-direct {p0, v2, v3}, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->getContent(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->mNickNameTxt:Landroid/widget/TextView;

    sget-object v3, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->NAMES:[Ljava/lang/String;

    sget v4, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->NICKNAME_KEY:I

    aget-object v3, v3, v4

    invoke-direct {p0, v2, v3}, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->getContent(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    sget-object v1, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->NAMES:[Ljava/lang/String;

    sget v3, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->LOGINTIME_KEY:I

    aget-object v1, v1, v3

    invoke-direct {p0, v2, v1}, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->getContent(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 125
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 127
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->mLoginTimeTxt:Landroid/widget/TextView;

    const/4 v4, 0x0

    const/16 v5, 0xa

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    :cond_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->mMobileTxt:Landroid/widget/TextView;

    sget-object v3, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->NAMES:[Ljava/lang/String;

    sget v4, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->MOBILE_KEY:I

    aget-object v3, v3, v4

    invoke-direct {p0, v2, v3}, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->getContent(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " MOBILE_KEY= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->NAMES:[Ljava/lang/String;

    sget v4, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->MOBILE_KEY:I

    aget-object v3, v3, v4

    invoke-direct {p0, v2, v3}, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->getContent(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    sget-object v0, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->NAMES:[Ljava/lang/String;

    sget v1, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->LOCATION_KEY:I

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 132
    new-instance v0, Lorg/json/JSONObject;

    sget-object v1, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->NAMES:[Ljava/lang/String;

    sget v3, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->LOCATION_KEY:I

    aget-object v1, v1, v3

    .line 133
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 135
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->mLocationTxt:Landroid/widget/TextView;

    const-string v3, "address"

    invoke-direct {p0, v0, v3}, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->getContent(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    :cond_1
    invoke-direct {p0, v2}, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->updateAccountInfo(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 140
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private reportBtnClickTrack(Z)V
    .locals 2

    .line 197
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity$4;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity$4;-><init>(Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 212
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private reportBtnExposeTrack(Z)V
    .locals 2

    .line 256
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity$6;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity$6;-><init>(Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 273
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private reportPageTrack()V
    .locals 2

    .line 295
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity$7;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity$7;-><init>(Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 304
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private sendUT(Ljava/lang/String;)V
    .locals 3

    .line 366
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "spm"

    const-string v2, "a1z3lt.12021513"

    .line 367
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "systemsetting_account"

    .line 368
    invoke-static {p1, v1, v0}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->controlHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private showLogoutDialog()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 323
    new-instance v0, Landroid/app/Dialog;

    sget v1, Lcom/alibaba/ailabs/genie/agui/adapter/R$style;->Dialog:I

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 324
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/agui/adapter/R$layout;->layout_dialog:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 325
    sget v2, Lcom/alibaba/ailabs/genie/agui/adapter/R$id;->content:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity$8;

    invoke-direct {v3, p0, v0}, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity$8;-><init>(Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;Landroid/app/Dialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 339
    invoke-virtual {v0, v1, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 341
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 342
    sget v2, Lcom/alibaba/ailabs/genie/agui/adapter/R$id;->yes:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity$9;

    invoke-direct {v3, p0, v0}, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity$9;-><init>(Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;Landroid/app/Dialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    sget v2, Lcom/alibaba/ailabs/genie/agui/adapter/R$id;->no:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity$10;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity$10;-><init>(Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showNetWorkError()V
    .locals 1

    .line 372
    sget v0, Lcom/alibaba/ailabs/genie/agui/adapter/R$string;->network_error:I

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/ToastUtils;->showShort(I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private startPayPage(ZLjava/lang/String;)V
    .locals 2

    .line 180
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/AppUtils;->isWaftVersionOK(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "webapp://com.alibaba.ailabs.genie.webapps/open?appId=2021002123642001&pkg=com.alipay.arome.app&page=pages/pay/pay&from=system"

    .line 181
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient;

    move-result-object p2

    const-string/jumbo v0, "waft://open?genieAppId=2021072176003&code=waft_super_member&type=page&path=pages/pay/pay&query=from%3Dsystem"

    invoke-virtual {p2, v0}, Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient;->open(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "webapp://com.alibaba.ailabs.genie.webapps/open?appId=2021002123642001&pkg=com.alipay.arome.app&page=pages/index/index&from=system"

    .line 183
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 184
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient;

    move-result-object p2

    const-string/jumbo v0, "waft://open?genieAppId=2021072176003&code=waft_super_member&type=page&path=pages/index/index&query=from%3Dsystem"

    invoke-virtual {p2, v0}, Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient;->open(Ljava/lang/String;)V

    goto :goto_0

    .line 188
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    .line 189
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 190
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 191
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->startActivity(Landroid/content/Intent;)V

    .line 193
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->reportBtnClickTrack(Z)V

    return-void
.end method

.method private updateAccountInfo(Lorg/json/JSONObject;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 149
    :cond_0
    sget-object v0, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->NAMES:[Ljava/lang/String;

    sget v1, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->ISVIP_KEY:I

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_1

    .line 152
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->mTvOpenVip:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->mVipEntranceImg:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 155
    :cond_1
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->mTvOpenVip:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->mVipEntranceImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 159
    :goto_0
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->isAllowReveal:Z

    if-nez v0, :cond_2

    .line 160
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->mTvOpenVip:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 161
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->mVipEntranceImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 163
    :cond_2
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->reportBtnExposeTrack(Z)V

    .line 164
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->mTvOpenVip:Landroid/widget/TextView;

    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity$2;-><init>(Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->mVipEntranceImg:Landroid/widget/ImageView;

    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity$3;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity$3;-><init>(Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 309
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 310
    sget v0, Lcom/alibaba/ailabs/genie/agui/adapter/R$id;->logout_btn:I

    if-ne p1, v0, :cond_1

    .line 311
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/Utils/CommUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 312
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->showNetWorkError()V

    return-void

    .line 315
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->showLogoutDialog()V

    const-string p1, "exit_account"

    .line 316
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->sendUT(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 69
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    sget p1, Lcom/alibaba/ailabs/genie/agui/adapter/R$layout;->activity_user_info:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->setContentView(I)V

    .line 71
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->initView()V

    .line 72
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "isAllowReveal"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->isAllowReveal:Z

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 377
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 378
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/account/UserInfoManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/account/UserInfoManager;

    move-result-object v0

    .line 379
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->mIUserInfoUpdate:Lcom/alibaba/ailabs/genie/assistant/sdk/account/IUserInfoUpdate;

    if-eqz v1, :cond_0

    .line 380
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->mIUserInfoUpdate:Lcom/alibaba/ailabs/genie/assistant/sdk/account/IUserInfoUpdate;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/account/UserInfoManager;->unregisterUserInfoListener(Landroid/content/Context;Lcom/alibaba/ailabs/genie/assistant/sdk/account/IUserInfoUpdate;)Z

    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 111
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 112
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->loadData()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onPause()V
    .locals 0

    .line 284
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 285
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/Utils/ToastUtils;->cancel()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onResume()V
    .locals 3

    .line 227
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 229
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->isMemberType()Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->finish()V

    .line 234
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "spm"

    const-string v2, "a1z3lt.12021513"

    .line 235
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "systemsetting_account"

    .line 236
    invoke-static {v2, v1, v0}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->customPageHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 238
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity$5;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity$5;-><init>(Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 252
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 278
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 279
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->loadData()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onStop()V
    .locals 0

    .line 290
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 291
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->reportPageTrack()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
