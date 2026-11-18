.class public Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenTimeDialog;
.super Landroid/app/Dialog;
.source "ForbiddenTimeDialog.java"


# static fields
.field public static final CHILD_MODE_SETTING_URL:Ljava/lang/String; = "genie://com.alibaba.ailabs.genie.datacenter/childModeSettingPage"

.field public static final TAG:Ljava/lang/String; = "ForbiddenTimeDialog"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mScreenBroadcast:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 45
    sget v0, Lcom/alibaba/ailabs/genie/timestatistics/R$style;->ForbiddenStyle:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 46
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenTimeDialog;->mContext:Landroid/content/Context;

    .line 47
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenTimeDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 48
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x10700

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/high16 v0, -0x80000000

    .line 51
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const/4 v0, 0x0

    .line 52
    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 53
    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 54
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    .line 55
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 56
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v1, 0x7d2

    .line 57
    invoke-virtual {p1, v1}, Landroid/view/Window;->setType(I)V

    .line 58
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const-string p1, "ForbiddenTimeDialog"

    const-string v0, "ListenModeDialog init"

    .line 59
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-static {}, Lcom/alibaba/ailabs/genie/density/GenieDensity;->updateApplication()Z

    move-result p1

    .line 61
    sget v0, Lcom/alibaba/ailabs/genie/timestatistics/R$layout;->forbidden_time_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenTimeDialog;->setContentView(I)V

    .line 62
    sget v0, Lcom/alibaba/ailabs/genie/timestatistics/R$id;->unlock_image_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenTimeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenTimeDialog$1;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenTimeDialog$1;-><init>(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenTimeDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenTimeDialog;->registerBroadcast()V

    if-eqz p1, :cond_0

    .line 74
    invoke-static {}, Lcom/alibaba/ailabs/genie/density/GenieDensity;->revertApplication()V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenTimeDialog;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenTimeDialog;->handlerBroadcastAction(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenTimeDialog;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenTimeDialog;->mHandler:Landroid/os/Handler;

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenTimeDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private handlerBroadcastAction(Ljava/lang/String;)V
    .locals 1

    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 136
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "ForbiddenTimeDialog"

    const-string v0, "Intent.ACTION_SCREEN_OFF"

    .line 137
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private registerBroadcast()V
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenTimeDialog;->mScreenBroadcast:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenTimeDialog$2;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenTimeDialog$2;-><init>(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenTimeDialog;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenTimeDialog;->mScreenBroadcast:Landroid/content/BroadcastReceiver;

    .line 129
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 130
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 131
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenTimeDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenTimeDialog;->mScreenBroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private shieldHome()V
    .locals 6

    :try_start_0
    const-string v0, "android.view.Window"

    .line 102
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "addPrivateFlags"

    const/4 v2, 0x1

    .line 103
    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 104
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenTimeDialog;->getWindow()Landroid/view/Window;

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

    .line 106
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private unregisterBroadcast()V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenTimeDialog;->mScreenBroadcast:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenTimeDialog;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 145
    :try_start_0
    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 147
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    .line 149
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenTimeDialog;->mScreenBroadcast:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .line 96
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 97
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenTimeDialog;->unregisterBroadcast()V

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

    .line 80
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 84
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public show()V
    .locals 0

    .line 90
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 91
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenTimeDialog;->shieldHome()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
