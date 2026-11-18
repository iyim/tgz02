.class public Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;
.super Landroid/app/Dialog;
.source "ForbiddenModeBaseDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/INumberInputListener;
.implements Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText$InputChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog$CallBack;
    }
.end annotation


# static fields
.field public static final CHILD_MODE_SETTING_URL:Ljava/lang/String; = "genie://com.alibaba.ailabs.genie.datacenter/childModeSettingPage"

.field public static final TAG:Ljava/lang/String; = "ForbiddenModeBaseDialog"


# instance fields
.field public FORBIDDEN_MODE_TYPE_DAILY_AVAILABLE_TIME:I

.field public FORBIDDEN_MODE_TYPE_SINGLE_AVAILABLE_TIME:I

.field public FORBIDDEN_MODE_TYPE_WEEKEND_AVAILABLE_TIME:I

.field private mCallBack:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog$CallBack;

.field protected mChildModeBean:Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;

.field protected mContext:Landroid/content/Context;

.field protected mCurrentBean:Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;

.field protected mForbiddenView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mNumberInputKeyView:Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputKeyView;

.field private mPasswordEditText:Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;

.field protected mPasswordView:Landroid/view/View;

.field private mScreenBroadcast:Landroid/content/BroadcastReceiver;

.field protected mSettingView:Landroid/view/View;

.field private mTop:Landroid/view/ViewGroup;

.field protected mUnLockImageView:Landroid/view/View;

.field private page_type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 85
    sget v0, Lcom/alibaba/ailabs/genie/timestatistics/R$style;->ForbiddenStyle:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const-string v0, ""

    .line 68
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->page_type:Ljava/lang/String;

    const/4 v0, 0x1

    .line 71
    iput v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->FORBIDDEN_MODE_TYPE_DAILY_AVAILABLE_TIME:I

    const/4 v0, 0x2

    .line 72
    iput v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->FORBIDDEN_MODE_TYPE_WEEKEND_AVAILABLE_TIME:I

    const/4 v0, 0x3

    .line 73
    iput v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->FORBIDDEN_MODE_TYPE_SINGLE_AVAILABLE_TIME:I

    .line 86
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->mContext:Landroid/content/Context;

    .line 87
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->page_type:Ljava/lang/String;

    .line 88
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 89
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    const v0, 0x10700

    invoke-virtual {p2, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/high16 p2, -0x80000000

    .line 92
    invoke-virtual {p1, p2}, Landroid/view/Window;->addFlags(I)V

    const/4 p2, 0x0

    .line 93
    invoke-virtual {p1, p2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 94
    invoke-virtual {p1, p2}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 95
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    const/4 v0, -0x1

    .line 96
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 97
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v0, 0x7d2

    .line 98
    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    .line 99
    invoke-virtual {p1, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const-string p1, "ForbiddenModeBaseDialog"

    const-string p2, "ForbiddenModeBaseDialog init"

    .line 100
    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-static {}, Lcom/alibaba/ailabs/genie/density/GenieDensity;->updateApplication()Z

    move-result p1

    .line 102
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->initView()V

    .line 104
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->registerBroadcast()V

    if-eqz p1, :cond_0

    .line 107
    invoke-static {}, Lcom/alibaba/ailabs/genie/density/GenieDensity;->revertApplication()V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;Ljava/lang/String;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->handlerBroadcastAction(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 249
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->mHandler:Landroid/os/Handler;

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private handlerBroadcastAction(Ljava/lang/String;)V
    .locals 1

    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 273
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "ForbiddenModeBaseDialog"

    const-string v0, "Intent.ACTION_SCREEN_OFF"

    .line 274
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static isTouchPointInView(Landroid/view/View;II)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x2

    .line 427
    new-array v1, v1, [I

    .line 428
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 429
    aget v2, v1, v0

    const/4 v3, 0x1

    .line 430
    aget v1, v1, v3

    .line 431
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v2

    .line 432
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    add-int/2addr p0, v1

    if-lt p2, v1, :cond_1

    if-gt p2, p0, :cond_1

    if-lt p1, v2, :cond_1

    if-gt p1, v4, :cond_1

    return v3

    :cond_1
    return v0
.end method

.method private killYouku()V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.youku.iot"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/childmode/ui/utils/SystemUtils;->stopAppByForce(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private quitMusic()V
    .locals 3

    .line 239
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.alibaba.ailabs.genie.musicplayer.cmd"

    .line 240
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Control"

    const/16 v2, 0x12

    .line 241
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 242
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 243
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private quitRandomMusic()V
    .locals 9

    const-string v0, "0"

    const-string v1, "persist.sys.isPlaying"

    .line 227
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 229
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 230
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 231
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const-string v4, "genie://com.alibaba.ailabs.genie.smartapp/voice?text=\u6682\u505c"

    invoke-static/range {v3 .. v8}, Lcom/alibaba/ailabs/genie/router/GenieAIRouter;->open(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method private registerBroadcast()V
    .locals 3

    .line 255
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->mScreenBroadcast:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 256
    new-instance v0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog$3;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog$3;-><init>(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->mScreenBroadcast:Landroid/content/BroadcastReceiver;

    .line 266
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 267
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 268
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 269
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->mScreenBroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private shieldHome()V
    .locals 6

    :try_start_0
    const-string v0, "android.view.Window"

    .line 209
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "addPrivateFlags"

    const/4 v2, 0x1

    .line 210
    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 211
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    const/high16 v3, 0x10000000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 214
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private showNumberInputKeyView(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 353
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->mNumberInputKeyView:Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputKeyView;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputKeyView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->mNumberInputKeyView:Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputKeyView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputKeyView;->setVisibility(I)V

    const/4 v0, 0x2

    .line 357
    new-array v0, v0, [I

    .line 358
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->mPasswordEditText:Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;

    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->getLocationInWindow([I)V

    .line 360
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->mTop:Landroid/view/ViewGroup;

    const/high16 v1, -0x3d600000    # -80.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setY(F)V

    goto :goto_0

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->mNumberInputKeyView:Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputKeyView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputKeyView;->setVisibility(I)V

    .line 365
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->mTop:Landroid/view/ViewGroup;

    const/high16 v1, 0x42b00000    # 88.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setY(F)V

    .line 367
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->mPasswordEditText:Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->onNotifyKeyboardChanged(Z)V

    return-void
.end method

.method private unregisterBroadcast()V
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->mScreenBroadcast:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 282
    :try_start_0
    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 284
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    .line 287
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->mScreenBroadcast:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 201
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    const-string v0, "ForbiddenModeBaseDialog"

    const-string v1, "dismiss"

    .line 202
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->unregisterBroadcast()V

    const-string v0, "persist.sys.forbidden_mode"

    const-string v1, "0"

    .line 204
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 167
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 171
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "ForbiddenModeBaseDialog"

    const-string v1, "dispatchTouchEvent"

    .line 394
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->mPasswordView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 397
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 400
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    .line 402
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    .line 403
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    .line 405
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->mTop:Landroid/view/ViewGroup;

    invoke-static {v3, v1, v2}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->isTouchPointInView(Landroid/view/View;II)Z

    move-result v3

    .line 406
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->mNumberInputKeyView:Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputKeyView;

    invoke-static {v4, v1, v2}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->isTouchPointInView(Landroid/view/View;II)Z

    move-result v1

    if-nez v3, :cond_2

    if-nez v1, :cond_2

    const-string p1, "!isKeywordView && !isPasswordEditText"

    .line 409
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->mNumberInputKeyView:Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputKeyView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputKeyView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 411
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->showNumberInputKeyView(Z)V

    :cond_1
    const/4 p1, 0x1

    return p1

    .line 417
    :cond_2
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected getLayoutId()I
    .locals 1

    .line 158
    sget v0, Lcom/alibaba/ailabs/genie/timestatistics/R$layout;->forbidden_mode_base_layout:I

    return v0
.end method

.method protected initView()V
    .locals 1

    .line 112
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->getLayoutId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->setContentView(I)V

    .line 114
    sget v0, Lcom/alibaba/ailabs/genie/timestatistics/R$id;->forbidden_mode_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->mForbiddenView:Landroid/view/View;

    .line 115
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->mForbiddenView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    sget v0, Lcom/alibaba/ailabs/genie/timestatistics/R$id;->forbidden_mode_setting_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->mSettingView:Landroid/view/View;

    .line 117
    sget v0, Lcom/alibaba/ailabs/genie/timestatistics/R$id;->forbidden_mode_password_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->mPasswordView:Landroid/view/View;

    .line 119
    sget v0, Lcom/alibaba/ailabs/genie/timestatistics/R$id;->unlock_image_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->mUnLockImageView:Landroid/view/View;

    .line 120
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->mUnLockImageView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    sget v0, Lcom/alibaba/ailabs/genie/timestatistics/R$id;->forbidden_mode_left_button_setting:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    :cond_0
    sget v0, Lcom/alibaba/ailabs/genie/timestatistics/R$id;->forbidden_mode_right_button_unlock:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 129
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    :cond_1
    sget v0, Lcom/alibaba/ailabs/genie/timestatistics/R$id;->password_edit:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->mPasswordEditText:Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;

    .line 133
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->mPasswordEditText:Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;

    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->setInputChangeListener(Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText$InputChangeListener;)V

    .line 135
    sget v0, Lcom/alibaba/ailabs/genie/timestatistics/R$id;->number_input_key_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputKeyView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->mNumberInputKeyView:Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputKeyView;

    .line 136
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->mNumberInputKeyView:Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputKeyView;

    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputKeyView;->setNumberInputListener(Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/INumberInputListener;)V

    .line 137
    sget v0, Lcom/alibaba/ailabs/genie/timestatistics/R$id;->top:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->mTop:Landroid/view/ViewGroup;

    return-void
.end method

.method protected onBackgroundClick()V
    .locals 7

    .line 320
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->mContext:Landroid/content/Context;

    sget v1, Lcom/alibaba/ailabs/genie/timestatistics/R$string;->forbidden_mode_tts_3:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->playTTS(Landroid/content/Context;ILjava/lang/String;ZILjava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;)I

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string v0, "ForbiddenModeBaseDialog"

    const-string v1, "onClick"

    .line 293
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alibaba/ailabs/genie/timestatistics/R$id;->forbidden_mode_view:I

    if-ne v0, v1, :cond_0

    .line 296
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->onBackgroundClick()V

    return-void

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->getPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->mCallBack:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog$CallBack;

    if-eqz v0, :cond_1

    .line 302
    invoke-interface {v0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog$CallBack;->onSuccess()V

    return-void

    .line 307
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alibaba/ailabs/genie/timestatistics/R$id;->unlock_image_view:I

    if-ne v0, v1, :cond_2

    .line 308
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->onUnLockImageViewClick()V

    .line 309
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 310
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->page_type:Ljava/lang/String;

    const-string v1, "page_type"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    sget-object v0, Lcom/alibaba/ailabs/genie/time/constant/UtConstant;->CLICK_EVENT_NAME:Ljava/lang/String;

    sget-object v1, Lcom/alibaba/ailabs/genie/time/constant/UtConstant;->PAGE_NAME:Ljava/lang/String;

    sget-object v2, Lcom/alibaba/ailabs/genie/time/constant/UtConstant;->CLICK_EVENT_NAME_SPM_CNT:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/alibaba/ailabs/genie/utils/ut/UtReport;->clickUT(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 312
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alibaba/ailabs/genie/timestatistics/R$id;->forbidden_mode_right_button_unlock:I

    if-ne v0, v1, :cond_3

    .line 313
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->onRightButtonClick()V

    goto :goto_0

    .line 314
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/alibaba/ailabs/genie/timestatistics/R$id;->forbidden_mode_left_button_setting:I

    if-ne p1, v0, :cond_4

    .line 315
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->onLeftButtonClick()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onInputChange(ZLandroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 373
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->showNumberInputKeyView(Z)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onInputEnd(Ljava/lang/String;)V
    .locals 2

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInputEnd password = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ForbiddenModeBaseDialog"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->getPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 381
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 383
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->mCallBack:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog$CallBack;

    if-eqz p1, :cond_2

    .line 384
    invoke-interface {p1}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog$CallBack;->onSuccess()V

    goto :goto_1

    .line 387
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->mPasswordEditText:Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->error()V

    .line 388
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->mPasswordEditText:Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->mNumberInputKeyView:Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputKeyView;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputKeyView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->onNotifyKeyboardChanged(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onInputKey(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x7

    if-lt p1, v1, :cond_0

    const/16 v2, 0x10

    if-gt p1, v2, :cond_0

    .line 337
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->mPasswordEditText:Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;

    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, 0x30

    int-to-char p1, p1

    invoke-virtual {v2, p1}, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->setChar(C)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x43

    if-ne p1, v1, :cond_1

    .line 340
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->mPasswordEditText:Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->deleteChar()V

    goto :goto_0

    :cond_1
    const/16 v1, 0x42

    if-ne p1, v1, :cond_2

    .line 344
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->showNumberInputKeyView(Z)V

    .line 346
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->mPasswordEditText:Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->updateDrawable()V

    return v0
.end method

.method protected onLeftButtonClick()V
    .locals 2

    .line 328
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "genie://com.alibaba.ailabs.genie.datacenter/childModeSettingPage"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/RouterUtils;->openActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 329
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->dismiss()V

    return-void
.end method

.method protected onRightButtonClick()V
    .locals 0

    .line 324
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->showPasswordView()V

    return-void
.end method

.method protected onUnLockImageViewClick()V
    .locals 2

    .line 141
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->showSettingView()V

    .line 142
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->mForbiddenView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->mSettingView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 144
    new-instance v0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog$1;-><init>(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/taskpool/GenieThreadManager;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setCallback(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog$CallBack;)V
    .locals 0

    .line 442
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->mCallBack:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog$CallBack;

    return-void
.end method

.method public setChildBean(Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;)V
    .locals 0

    .line 450
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->mChildModeBean:Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;

    return-void
.end method

.method public setCurrentBean(Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;)V
    .locals 0

    .line 446
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->mCurrentBean:Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;

    return-void
.end method

.method public show()V
    .locals 3

    .line 177
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 178
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->shieldHome()V

    .line 179
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->killYouku()V

    .line 180
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->quitMusic()V

    .line 181
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->quitRandomMusic()V

    const-string v0, "1"

    const-string v1, "persist.sys.forbidden_mode"

    .line 182
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 183
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/alibaba/ailabs/genie/router/GenieRouter;->toHome(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    new-instance v0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog$2;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog$2;-><init>(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/taskpool/GenieThreadManager;->execute(Ljava/lang/Runnable;)V

    .line 190
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 191
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->page_type:Ljava/lang/String;

    const-string v2, "page_type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v1, Lcom/alibaba/ailabs/genie/time/constant/UtConstant;->PAGE_NAME:Ljava/lang/String;

    sget-object v2, Lcom/alibaba/ailabs/genie/time/constant/UtConstant;->SPM:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/alibaba/ailabs/genie/utils/ut/UtReport;->pageUT(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method protected showPasswordView()V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->mForbiddenView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->mPasswordView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected showSettingView()V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->mForbiddenView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/timestatistics/R$drawable;->whole_bg_0:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method
