.class public Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;
.super Lcom/alibaba/ailabs/childmode/ui/page/BaseActivity;
.source "ValidateLockActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/INumberInputListener;
.implements Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText$InputChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity$MyGenieDataListener;,
        Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity$MyRunnable;
    }
.end annotation


# static fields
.field public static final FORBIDDEN_MODE_SETTING_URI:Ljava/lang/String; = "genie://com.alibaba.ailabs.genie.datacenter/forbidden_mode_setting_page"

.field private static final TAG:Ljava/lang/String; = "ValidateLockActivityTag"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static TYPE:Ljava/lang/String; = "type"

.field private static final TYPE_FIRST_SETTING_PASSWORD:I = 0x3

.field public static final TYPE_FORBIDDEN_TIPS:I = 0x1

.field private static final TYPE_MAX:I = 0x3

.field private static final TYPE_MIN:I = 0x0

.field public static final TYPE_PASSWORD_TIPS:I = 0x2

.field private static final TYPE_RESET_PASSWORD:I = 0x2

.field private static final TYPE_SETTING_PASSWORD:I = 0x0

.field private static final TYPE_VERIFY:I = 0x1


# instance fields
.field private listener:Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity$MyGenieDataListener;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private mExitRunnable:Ljava/lang/Runnable;

.field private mFromSource:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHasPreStartLauncher:Z

.field private mIsVerifySuccess:Z

.field private mNumberInputKeyView:Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputKeyView;

.field private mPasswordEditText:Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;

.field private mResultCode:I

.field private mTop:Landroid/view/ViewGroup;

.field private mTopY:I

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 3

    .line 49
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/page/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mResultCode:I

    .line 61
    iput-boolean v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mIsVerifySuccess:Z

    .line 65
    iput v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mType:I

    .line 67
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mHandler:Landroid/os/Handler;

    .line 71
    iput-boolean v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mHasPreStartLauncher:Z

    const/4 v0, -0x1

    .line 74
    iput v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mTopY:I

    .line 400
    new-instance v0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity$1;-><init>(Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mExitRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->exitActivity()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mType:I

    return p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->startMinorActivity()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private exitActivity()V
    .locals 4

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exitActivity mIsVerifySuccess:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mIsVerifySuccess:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mResultCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mResultCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ValidateLockActivityTag"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 243
    iget-boolean v2, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mIsVerifySuccess:Z

    const-string v3, "ret"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 245
    iget v2, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mResultCode:I

    invoke-virtual {p0, v2, v0}, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->setResult(ILandroid/content/Intent;)V

    .line 247
    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mType:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 248
    invoke-static {}, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->finishCurrentFlow()V

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 251
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mFromSource:Ljava/lang/String;

    const-string v3, "setting"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mFromSource:Ljava/lang/String;

    const-string v3, "from_listen_mode"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 257
    :cond_1
    invoke-static {}, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->getInstance()Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->validatePassword(Z)V

    const-string v0, "childMode"

    const-string v2, "exitWithPassword"

    .line 260
    invoke-virtual {p0, v0, v2}, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->notifyAVE(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "FlowTaskManager mGotoLauncherFlow begin"

    .line 262
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->setChildMode(Landroid/content/Context;Z)V

    .line 264
    invoke-static {}, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->finishCurrentFlow()V

    goto :goto_1

    .line 252
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8bbe\u7f6e\u9875\u8f93\u5165\u5bc6\u7801\u6216\u8005\u542c\u6a21\u5f0f\u8fdb\u5165\uff0c\u8f93\u5165\u5bc6\u7801\u540e\u76f4\u63a5\u9000\u51fa "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mFromSource:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->finish()V

    return-void

    .line 266
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->finish()V

    return-void
.end method

.method private handleExit()V
    .locals 2

    .line 201
    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 202
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->updateNeedSecretTime(Landroid/content/Context;)V

    .line 203
    invoke-static {}, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->getInstance()Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->skipShowConfigDialog()V

    .line 205
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->exitActivity()V

    return-void
.end method

.method private init()V
    .locals 5

    .line 134
    invoke-static {}, Lcom/alibaba/ailabs/childmode/Global;->getPassword()Ljava/lang/String;

    move-result-object v0

    .line 135
    iget v1, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    const-string v3, "a1z3lt.12021801"

    const-string v4, "childmode_passport"

    .line 136
    invoke-static {v3, v4, v1}, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->utPage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 139
    :cond_0
    iget v1, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mType:I

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 145
    :cond_1
    invoke-static {p0}, Lcom/alibaba/ailabs/childmode/ui/utils/LauncherManager;->prestartLaucher(Landroid/content/Context;)V

    .line 146
    iput-boolean v3, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mHasPreStartLauncher:Z

    .line 147
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 148
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init show password ui, mType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " isFinished:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " password:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ValidateLockActivityTag"

    invoke-static {v2, v0}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    sget v0, Lcom/alibaba/ailabs/genie/timestatistics/R$layout;->validate_lock_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->setContentView(I)V

    .line 150
    sget v0, Lcom/alibaba/ailabs/genie/timestatistics/R$id;->subtitle:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 152
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 140
    :cond_2
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    .line 141
    sget v0, Lcom/alibaba/ailabs/genie/timestatistics/R$layout;->input_pwd_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->setContentView(I)V

    .line 156
    :cond_3
    :goto_1
    sget v0, Lcom/alibaba/ailabs/genie/timestatistics/R$id;->password_edit:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;

    iput-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mPasswordEditText:Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;

    .line 157
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mPasswordEditText:Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;

    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->setInputChangeListener(Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText$InputChangeListener;)V

    .line 159
    sget v0, Lcom/alibaba/ailabs/genie/timestatistics/R$id;->number_input_key_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputKeyView;

    iput-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mNumberInputKeyView:Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputKeyView;

    .line 160
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mNumberInputKeyView:Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputKeyView;

    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputKeyView;->setNumberInputListener(Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/INumberInputListener;)V

    .line 161
    sget v0, Lcom/alibaba/ailabs/genie/timestatistics/R$id;->top:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mTop:Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    .line 164
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->exitActivity()V

    :cond_4
    return-void
.end method

.method private initGenieDataListener(Landroid/content/Context;)V
    .locals 1

    .line 126
    new-instance v0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity$MyGenieDataListener;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity$MyGenieDataListener;-><init>(Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->listener:Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity$MyGenieDataListener;

    .line 127
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/data/GenieDataManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/data/GenieDataManager;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->listener:Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity$MyGenieDataListener;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/data/GenieDataManager;->registerListener(Lcom/alibaba/ailabs/genie/data/GenieDataListener;)V

    return-void
.end method

.method public static isTouchPointInView(Landroid/view/View;II)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 520
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 523
    new-array v1, v1, [I

    .line 524
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 525
    aget v2, v1, v0

    const/4 v3, 0x1

    .line 526
    aget v1, v1, v3

    .line 527
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v2

    .line 528
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    add-int/2addr p0, v1

    if-lt p2, v1, :cond_1

    if-gt p2, p0, :cond_1

    if-lt p1, v2, :cond_1

    if-gt p1, v4, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method private openPasswordSettingActivity()V
    .locals 4

    .line 190
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 191
    sget-object v1, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->TYPE:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "title"

    .line 192
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alibaba/ailabs/genie/timestatistics/R$string;->aframe_password_setting_title:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "genie://com.alibaba.ailabs.genie.datacenter/forbidden_mode_setting_page"

    .line 193
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 194
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 196
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private postDelay(I)V
    .locals 4

    .line 395
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mExitRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 396
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mExitRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private showNumberInputKeyView(Z)V
    .locals 3

    if-eqz p1, :cond_1

    .line 309
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mNumberInputKeyView:Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputKeyView;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputKeyView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 311
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mNumberInputKeyView:Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputKeyView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputKeyView;->setVisibility(I)V

    const/4 v0, 0x2

    .line 313
    new-array v0, v0, [I

    .line 314
    iget-object v1, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mTop:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 315
    iget v1, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mTopY:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    .line 316
    aget v0, v0, v1

    iput v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mTopY:I

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mTop:Landroid/view/ViewGroup;

    const/high16 v1, -0x3d600000    # -80.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setY(F)V

    goto :goto_0

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mNumberInputKeyView:Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputKeyView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputKeyView;->setVisibility(I)V

    .line 324
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mTop:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mTopY:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setY(F)V

    .line 326
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mPasswordEditText:Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->onNotifyKeyboardChanged(Z)V

    return-void
.end method

.method private startMinorActivity()V
    .locals 2

    const-string v0, "genie://com.alibaba.ailabs.genie.datacenter/minor"

    .line 413
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 414
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 415
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 416
    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static updateNeedSecretTime(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    const-string v0, "sp_name_child_mode"

    const/4 v1, 0x0

    .line 535
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 536
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "last_no_set_secret_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 538
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static utPage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "utEvent spm:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pageName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " props:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommUtils"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 508
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "spm"

    .line 509
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p2, :cond_1

    .line 513
    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1
    const/4 p0, 0x0

    .line 516
    nop

    nop

    invoke-static {p1, p0, v0}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->customPageHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private verifySuccess()V
    .locals 2

    .line 374
    invoke-static {}, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->getInstance()Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->isValdatePasswordSuccess()Z

    .line 377
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mFromSource:Ljava/lang/String;

    const-string v1, "setting"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mFromSource:Ljava/lang/String;

    const-string v1, "from_listen_mode"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 383
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->getInstance()Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->validatePassword(Z)V

    const-string v0, "childMode"

    const-string v1, "exitWithPassword"

    .line 386
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->notifyAVE(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->setChildMode(Landroid/content/Context;Z)V

    .line 390
    invoke-static {}, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->finishCurrentFlow()V

    return-void

    .line 378
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8bbe\u7f6e\u9875\u8f93\u5165\u5bc6\u7801\u6216\u8005\u542c\u6a21\u5f0f\u8fdb\u5165\uff0c\u8f93\u5165\u5bc6\u7801\u540e\u76f4\u63a5\u9000\u51fa "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mFromSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ValidateLockActivityTag"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->finish()V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 470
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1}, Lcom/alibaba/ailabs/childmode/ui/page/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 422
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    .line 424
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    .line 425
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    .line 427
    iget-object v2, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mTop:Landroid/view/ViewGroup;

    invoke-static {v2, v0, v1}, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->isTouchPointInView(Landroid/view/View;II)Z

    move-result v2

    .line 428
    iget-object v3, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mNumberInputKeyView:Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputKeyView;

    invoke-static {v3, v0, v1}, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->isTouchPointInView(Landroid/view/View;II)Z

    move-result v0

    if-nez v2, :cond_3

    if-nez v0, :cond_3

    .line 431
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mNumberInputKeyView:Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputKeyView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputKeyView;->getVisibility()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 432
    invoke-direct {p0, v1}, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->showNumberInputKeyView(Z)V

    goto :goto_0

    .line 434
    :cond_0
    iget p1, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mType:I

    const-string v2, "ValidateLockActivityTag"

    if-ne p1, v0, :cond_2

    .line 435
    invoke-static {}, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->getInstance()Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->validatePassword(Z)V

    .line 436
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick mIsVerifySuccess:false mResultCode:0 mType:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mType:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v2, "ret"

    .line 438
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 439
    invoke-virtual {p0, v1, p1}, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->setResult(ILandroid/content/Intent;)V

    .line 440
    iget-boolean p1, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mHasPreStartLauncher:Z

    if-eqz p1, :cond_1

    .line 441
    invoke-static {p0}, Lcom/alibaba/ailabs/childmode/ui/utils/LauncherManager;->killLauncher(Landroid/content/Context;)V

    .line 443
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->finish()V

    goto :goto_0

    .line 445
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick current dont set password mType:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mType:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    const-string v1, "a1z3lt.12021808"

    const-string v2, "childmode_exit"

    .line 446
    invoke-static {v1, v2, p1}, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->utPage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :goto_0
    return v0

    .line 454
    :cond_3
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/childmode/ui/page/BaseActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected enableShieldHome()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected isBanStatusBar()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public notifyAVE(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cmd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ValidateLockActivityTag"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "args = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x18

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "content://com.alibaba.ailabs.ave.controlProvider"

    .line 479
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 480
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 481
    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    .line 482
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "cmd"

    .line 483
    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "args"

    .line 484
    invoke-virtual {v3, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 490
    :try_start_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v0, :cond_0

    if-eqz v1, :cond_2

    .line 492
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->close()V

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_2

    .line 496
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 487
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 490
    :try_start_3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v0, :cond_1

    if-eqz v1, :cond_2

    .line 492
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->close()V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 496
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 500
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void

    .line 490
    :goto_1
    :try_start_4
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v0, :cond_3

    if-eqz v1, :cond_4

    .line 492
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->close()V

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    .line 496
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception p2

    .line 500
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 501
    :cond_4
    :goto_2
    throw p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 170
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ValidateLockActivityTag"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    sget v0, Lcom/alibaba/ailabs/genie/timestatistics/R$id;->subtitle:I

    if-ne p1, v0, :cond_0

    const-string p1, "onClick reset password"

    .line 173
    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->openPasswordSettingActivity()V

    .line 175
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 79
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/childmode/ui/page/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 82
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x10700

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/high16 v0, -0x80000000

    .line 85
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const/4 v0, 0x0

    .line 86
    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 87
    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 89
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "from"

    .line 92
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mFromSource:Ljava/lang/String;

    .line 95
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ValidateLockActivity mFromSource"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mFromSource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ValidateLockActivityTag"

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 100
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 101
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ValidateLockActivity onCreate to set password, uri:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    .line 103
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ValidateLockActivity onCreate to set password, uri str:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/ailabs/genie/utils/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v3, "type"

    .line 105
    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 106
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mType:I

    .line 108
    iget p1, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mType:I

    if-ltz p1, :cond_3

    iget p1, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mType:I

    const/4 v3, 0x3

    if-le p1, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 110
    :cond_3
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ValidateLockActivity onCreate to set password, type:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mType:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 112
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 115
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->init()V

    if-eqz v1, :cond_5

    .line 118
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->exitActivity()V

    .line 120
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mContext:Landroid/content/Context;

    .line 122
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->initGenieDataListener(Landroid/content/Context;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 271
    invoke-super {p0}, Lcom/alibaba/ailabs/childmode/ui/page/BaseActivity;->onDestroy()V

    const-string v0, "ValidateLockActivityTag"

    const-string v1, "onDestroy"

    .line 272
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/data/GenieDataManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/data/GenieDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->listener:Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity$MyGenieDataListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/data/GenieDataManager;->unRegisterListener(Lcom/alibaba/ailabs/genie/data/GenieDataListener;)V

    const/4 v0, 0x0

    .line 274
    iput-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->listener:Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity$MyGenieDataListener;

    .line 275
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 279
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mIsVerifySuccess:Z

    if-eqz v0, :cond_1

    .line 280
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/childmode/CacheManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/childmode/CacheManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/childmode/CacheManager;->updateListenModeInfo(Z)V

    .line 282
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->verifySuccess()V

    goto :goto_0

    .line 284
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/childmode/ListenModeManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/childmode/ListenModeManager;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/ailabs/childmode/Global;->isListenMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/childmode/ListenModeManager;->show(Z)V

    .line 286
    :goto_0
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->enableWakeup(Z)V

    .line 287
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->unBanStatusBar()V

    return-void
.end method

.method public onInputChange(ZLandroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 332
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->showNumberInputKeyView(Z)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onInputEnd(Ljava/lang/String;)V
    .locals 5

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInputEnd password = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mDialog:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ValidateLockActivityTag"

    invoke-static {v2, v0}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mType:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eqz v0, :cond_3

    if-eq v0, v4, :cond_3

    if-ne v0, v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    if-ne v0, v3, :cond_8

    const/4 v0, -0x1

    .line 355
    iput v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mResultCode:I

    .line 356
    invoke-static {}, Lcom/alibaba/ailabs/childmode/Global;->getPassword()Ljava/lang/String;

    move-result-object v0

    .line 357
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mIsVerifySuccess:Z

    .line 359
    iget-boolean p1, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mIsVerifySuccess:Z

    if-eqz p1, :cond_1

    .line 360
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "exitActivity mIsVerifySuccess:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mIsVerifySuccess:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mResultCode:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mResultCode:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mType:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 362
    iget-boolean v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mIsVerifySuccess:Z

    const-string v1, "ret"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 364
    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mResultCode:I

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->setResult(ILandroid/content/Intent;)V

    .line 365
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->finish()V

    goto :goto_3

    .line 367
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mPasswordEditText:Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->error()V

    .line 368
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mPasswordEditText:Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;

    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mNumberInputKeyView:Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputKeyView;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputKeyView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p1, v3}, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->onNotifyKeyboardChanged(Z)V

    goto :goto_3

    .line 340
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 343
    :cond_4
    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mType:I

    const/16 v1, 0x3e8

    if-ne v0, v3, :cond_5

    .line 344
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->setPassword(Landroid/content/Context;Ljava/lang/String;)V

    .line 346
    invoke-direct {p0, v1}, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->postDelay(I)V

    goto :goto_3

    :cond_5
    if-eqz v0, :cond_7

    if-ne v0, v4, :cond_6

    goto :goto_2

    .line 351
    :cond_6
    invoke-direct {p0, v1}, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->postDelay(I)V

    goto :goto_3

    .line 348
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->setPassword(Landroid/content/Context;Ljava/lang/String;)V

    .line 349
    invoke-direct {p0, v1}, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->postDelay(I)V

    :cond_8
    :goto_3
    return-void
.end method

.method public onInputKey(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x7

    if-lt p1, v1, :cond_0

    const/16 v2, 0x10

    if-gt p1, v2, :cond_0

    .line 294
    iget-object v2, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mPasswordEditText:Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;

    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, 0x30

    int-to-char p1, p1

    invoke-virtual {v2, p1}, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->setChar(C)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x43

    if-ne p1, v1, :cond_1

    .line 297
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mPasswordEditText:Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->deleteChar()V

    goto :goto_0

    :cond_1
    const/16 v1, 0x42

    if-ne p1, v1, :cond_2

    .line 301
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->showNumberInputKeyView(Z)V

    .line 303
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mPasswordEditText:Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->updateDrawable()V

    return v0
.end method

.method protected onPause()V
    .locals 2

    .line 231
    invoke-super {p0}, Lcom/alibaba/ailabs/childmode/ui/page/BaseActivity;->onPause()V

    const-string v0, "ValidateLockActivityTag"

    const-string v1, "onPause"

    .line 232
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->enableWakeup(Z)V

    .line 234
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->unBanStatusBar()V

    .line 235
    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mType:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mIsVerifySuccess:Z

    if-nez v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/childmode/ListenModeManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/childmode/ListenModeManager;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/ailabs/childmode/Global;->isListenMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/childmode/ListenModeManager;->show(Z)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 218
    invoke-super {p0}, Lcom/alibaba/ailabs/childmode/ui/page/BaseActivity;->onResume()V

    .line 219
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->enableWakeup(Z)V

    .line 220
    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mType:I

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 223
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/childmode/Global;->isListenMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 224
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/childmode/ListenModeManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/childmode/ListenModeManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/childmode/ListenModeManager;->show(Z)V

    goto :goto_1

    .line 221
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ValidateLockActivityTag"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 210
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/childmode/ui/page/BaseActivity;->onWindowFocusChanged(Z)V

    if-nez p1, :cond_0

    const-string p1, "ValidateLockActivityTag"

    const-string v0, "onStop onWindowFocusChanged 1"

    .line 212
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
