.class public Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;
.super Ljava/lang/Object;
.source "AliDialogUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/childmode/common/AliDialogUtil$HomeWatcherReceiver;,
        Lcom/alibaba/ailabs/childmode/common/AliDialogUtil$ErrorDialog;
    }
.end annotation


# static fields
.field public static final DIALOG_DESTROY_ACTIVTY:B = 0x2t

.field public static final DIALOG_GLOBAL:B = 0x3t

.field public static final DIALOG_NORMAL:B = 0x1t

.field public static final DIALOG_VIEW_IN_ACTIVITY:B = 0x4t

.field private static final MSG_DIALOG_GLOBAL_DESTROY_ACTIVITY:I = 0x2711

.field private static final MSG_DIALOG_PROGRESSBAR:I = 0x2712

.field public static TAG:Ljava/lang/String; = "AliDialogUtil"

.field private static gErrorDialog:Landroid/app/Dialog; = null

.field private static gIsRegister:Z = false

.field private static gNetworkDialog:Landroid/app/Dialog;


# instance fields
.field private errorView:Landroid/view/View;

.field private mApplication:Landroid/content/Context;

.field private mErrorDialog:Lcom/alibaba/ailabs/childmode/common/AliDialogUtil$ErrorDialog;

.field private mHandler:Landroid/os/Handler;

.field private mNetworkDialog:Landroid/app/Dialog;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mWeakRefContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
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

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    new-instance v0, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil$4;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil$4;-><init>(Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->mHandler:Landroid/os/Handler;

    .line 313
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->mWeakRefContext:Ljava/lang/ref/WeakReference;

    .line 314
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->mApplication:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000()Landroid/app/Dialog;
    .locals 1

    .line 40
    sget-object v0, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->gNetworkDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$002(Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .line 40
    sput-object p0, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->gNetworkDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$100()Landroid/app/Dialog;
    .locals 1

    .line 40
    sget-object v0, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->gErrorDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$102(Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .line 40
    sput-object p0, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->gErrorDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->finishActivity()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;Ljava/lang/String;Z)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->showProgressDialogInner(Ljava/lang/String;Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;)Landroid/content/Context;
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->getWeakRefContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600()V
    .locals 0

    .line 40
    invoke-static {}, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->closeGlobalErrorDialog()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private closeErrorViewInOldActivity()V
    .locals 1

    const/4 v0, 0x0

    .line 222
    iput-object v0, p0, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->errorView:Landroid/view/View;

    return-void
.end method

.method private static closeGlobalErrorDialog()V
    .locals 2

    .line 191
    sget-object v0, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->gErrorDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 195
    sput-object v0, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->gErrorDialog:Landroid/app/Dialog;

    return-void
.end method

.method public static closeGlobalNetworkDialog()V
    .locals 2

    .line 107
    sget-object v0, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->gNetworkDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 111
    sput-object v0, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->gNetworkDialog:Landroid/app/Dialog;

    return-void
.end method

.method public static createErrorDialog(Landroid/content/Context;)Lcom/alibaba/ailabs/childmode/common/AliDialogUtil$ErrorDialog;
    .locals 1

    .line 135
    new-instance v0, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil$ErrorDialog;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil$ErrorDialog;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static createNetworkDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 3

    .line 82
    invoke-static {p0}, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->getYunosStyleId(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_0

    .line 85
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 87
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 89
    :goto_0
    sget v0, Lcom/alibaba/ailabs/genie/setting/R$string;->network_setting:I

    new-instance v2, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil$1;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    sget v0, Lcom/alibaba/ailabs/genie/setting/R$string;->network_setting_title:I

    .line 99
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    sget v0, Lcom/alibaba/ailabs/genie/setting/R$string;->network_setting_message:I

    .line 100
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 101
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method private finishActivity()V
    .locals 2

    .line 255
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->getWeakRefContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 257
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 258
    nop

    nop

    .line 259
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 260
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public static getListenModerDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 1

    .line 44
    new-instance v0, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private getWeakRefContext()Landroid/content/Context;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->mWeakRefContext:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getYunosStyleId(Landroid/content/Context;)I
    .locals 4

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "style"

    const-string v2, "Theme.Ali.TV.Dialog.Alert.SetNetwork"

    const-string v3, "com.yunos"

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "android"

    invoke-virtual {p0, v2, v1, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method

.method private static registerHomeWatcherReceiver(Landroid/content/Context;)V
    .locals 4

    .line 525
    sget-boolean v0, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->gIsRegister:Z

    if-eqz v0, :cond_0

    return-void

    .line 529
    :cond_0
    const-class v0, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;

    monitor-enter v0

    .line 530
    :try_start_0
    sget-boolean v1, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->gIsRegister:Z

    if-nez v1, :cond_1

    .line 531
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 533
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 534
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 535
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v2, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil$HomeWatcherReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil$HomeWatcherReceiver;-><init>(Lcom/alibaba/ailabs/childmode/common/AliDialogUtil$1;)V

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p0, 0x1

    .line 537
    sput-boolean p0, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->gIsRegister:Z

    .line 540
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static setSystemAlertWindowType(Landroid/view/Window;)V
    .locals 1

    if-eqz p0, :cond_0

    const/16 v0, 0x7d3

    .line 606
    invoke-virtual {p0, v0}, Landroid/view/Window;->setType(I)V

    :cond_0
    return-void
.end method

.method public static setTranslucentStatus(Landroid/app/Dialog;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 592
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    .line 597
    :cond_1
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x600

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/high16 v0, -0x80000000

    .line 599
    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    const/4 v0, 0x0

    .line 600
    invoke-virtual {p0, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 601
    invoke-virtual {p0, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    return-void
.end method

.method public static showCameraConfirmDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 2

    .line 57
    new-instance v0, Lcom/alibaba/ailabs/childmode/ui/widget/CameraConfirmDialog;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/childmode/ui/widget/CameraConfirmDialog;-><init>(Landroid/content/Context;)V

    .line 58
    invoke-virtual {v0}, Lcom/alibaba/ailabs/childmode/ui/widget/CameraConfirmDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->setSystemAlertWindowType(Landroid/view/Window;)V

    .line 59
    invoke-virtual {v0}, Lcom/alibaba/ailabs/childmode/ui/widget/CameraConfirmDialog;->show()V

    .line 60
    sget-object p0, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->TAG:Ljava/lang/String;

    const-string v1, "showCameraConfirmDialog"

    invoke-static {p0, v1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private showErrorViewInOldActivity(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 200
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 201
    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    const v2, 0x1020002

    .line 202
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    nop

    nop

    .line 203
    iget-object v2, p0, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->errorView:Landroid/view/View;

    if-eqz v2, :cond_0

    return-void

    .line 206
    :cond_0
    sget v2, Lcom/alibaba/ailabs/genie/setting/R$layout;->dialog_error:I

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->errorView:Landroid/view/View;

    .line 207
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->errorView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/setting/R$id;->tv_error_tips:I

    .line 208
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 209
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 210
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 211
    sget p2, Lcom/alibaba/ailabs/genie/setting/R$string;->page_error:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 213
    :cond_1
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez p3, :cond_2

    .line 215
    sget p2, Lcom/alibaba/ailabs/genie/setting/R$drawable;->error:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    :cond_2
    const/4 p1, 0x0

    .line 217
    invoke-virtual {v0, p1, p3, p1, p1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private static showGlobalErrorDialog(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/app/Dialog;
    .locals 0

    .line 171
    invoke-static {p0}, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->registerHomeWatcherReceiver(Landroid/content/Context;)V

    .line 172
    invoke-static {}, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->closeGlobalErrorDialog()V

    .line 173
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->createErrorDialog(Landroid/content/Context;)Lcom/alibaba/ailabs/childmode/common/AliDialogUtil$ErrorDialog;

    move-result-object p0

    .line 174
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil$ErrorDialog;->setInfo(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 175
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil$ErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->setSystemAlertWindowType(Landroid/view/Window;)V

    .line 176
    new-instance p1, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil$3;

    invoke-direct {p1}, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil$3;-><init>()V

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil$ErrorDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 185
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil$ErrorDialog;->show()V

    .line 186
    sput-object p0, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->gErrorDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method public static showGlobalNetworkDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 1

    .line 115
    invoke-static {p0}, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->registerHomeWatcherReceiver(Landroid/content/Context;)V

    .line 116
    invoke-static {}, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->closeGlobalNetworkDialog()V

    .line 118
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 117
    invoke-static {p0}, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->createNetworkDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object p0

    .line 119
    new-instance v0, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil$2;

    invoke-direct {v0}, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil$2;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 128
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->setSystemAlertWindowType(Landroid/view/Window;)V

    .line 129
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 130
    sput-object p0, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->gNetworkDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method private final showProgressDialogInner(Ljava/lang/String;Z)V
    .locals 4

    .line 406
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 407
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->getWeakRefContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz v1, :cond_2

    .line 411
    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_2

    .line 412
    move-object v2, v1

    nop

    nop

    .line 413
    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    return-void

    :cond_2
    if-nez v0, :cond_3

    .line 434
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 436
    :cond_3
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 437
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 440
    :cond_4
    :goto_0
    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_5

    .line 441
    new-instance v1, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil$7;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil$7;-><init>(Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 452
    :cond_5
    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 453
    iput-object v0, p0, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 454
    iget-object p2, p0, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 455
    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 456
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method public static showScreenDistanceTipDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 2

    .line 49
    new-instance v0, Lcom/alibaba/ailabs/childmode/ui/widget/ScreenDistanceTipDialog;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/childmode/ui/widget/ScreenDistanceTipDialog;-><init>(Landroid/content/Context;)V

    .line 50
    invoke-virtual {v0}, Lcom/alibaba/ailabs/childmode/ui/widget/ScreenDistanceTipDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->setSystemAlertWindowType(Landroid/view/Window;)V

    .line 51
    invoke-virtual {v0}, Lcom/alibaba/ailabs/childmode/ui/widget/ScreenDistanceTipDialog;->show()V

    .line 52
    sget-object p0, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->TAG:Ljava/lang/String;

    const-string v1, "showScreenDistanceTipDialog"

    invoke-static {p0, v1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public closeErrorDialog()V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->mErrorDialog:Lcom/alibaba/ailabs/childmode/common/AliDialogUtil$ErrorDialog;

    if-eqz v0, :cond_0

    .line 159
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 161
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 164
    iput-object v0, p0, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->mErrorDialog:Lcom/alibaba/ailabs/childmode/common/AliDialogUtil$ErrorDialog;

    return-void
.end method

.method public closeNetworkDialog()V
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->mNetworkDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 335
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 337
    iput-object v0, p0, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->mNetworkDialog:Landroid/app/Dialog;

    return-void
.end method

.method public closeProgressDialog()V
    .locals 2

    .line 464
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2712

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 465
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 466
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 468
    :try_start_0
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 470
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public destroy()V
    .locals 2

    .line 319
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->closeNetworkDialog()V

    .line 322
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->closeProgressDialog()V

    const/4 v0, 0x0

    .line 323
    iput-object v0, p0, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 326
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->closeErrorDialog()V

    .line 327
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->closeErrorViewInOldActivity()V

    .line 329
    iget-object v1, p0, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public showErrorDialog(BLjava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/app/Dialog;
    .locals 4

    .line 266
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->getWeakRefContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 269
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->mApplication:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->showGlobalErrorDialog(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ne p1, v1, :cond_2

    const-string p1, "HQN"

    const-string v1, "showErrorDialog DIALOG_VIEW_IN_ACTIVITY"

    .line 272
    invoke-static {p1, v1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 274
    invoke-direct {p0, v0, p2, p3}, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->showErrorViewInOldActivity(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-object v2

    :cond_2
    if-eqz v0, :cond_8

    .line 278
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_4

    .line 279
    move-object v1, v0

    nop

    nop

    .line 280
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    return-object v2

    .line 284
    :cond_4
    iget-object v1, p0, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->mErrorDialog:Lcom/alibaba/ailabs/childmode/common/AliDialogUtil$ErrorDialog;

    if-nez v1, :cond_5

    .line 286
    invoke-static {v0}, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->createErrorDialog(Landroid/content/Context;)Lcom/alibaba/ailabs/childmode/common/AliDialogUtil$ErrorDialog;

    move-result-object v1

    :cond_5
    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    .line 290
    new-instance v2, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil$5;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil$5;-><init>(Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;)V

    .line 298
    :cond_6
    :try_start_0
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil$ErrorDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 300
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 302
    :goto_0
    iput-object v1, p0, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->mErrorDialog:Lcom/alibaba/ailabs/childmode/common/AliDialogUtil$ErrorDialog;

    .line 303
    invoke-virtual {v1, p2, p3}, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil$ErrorDialog;->setInfo(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 304
    invoke-virtual {v1}, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil$ErrorDialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_7

    .line 305
    invoke-virtual {v1}, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil$ErrorDialog;->show()V

    :cond_7
    return-object v1

    :cond_8
    return-object v2
.end method

.method public showNetworkDialog(B)Landroid/app/Dialog;
    .locals 3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 342
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->closeNetworkDialog()V

    .line 343
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->mApplication:Landroid/content/Context;

    invoke-static {p1}, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->showGlobalNetworkDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1

    .line 345
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->getWeakRefContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    .line 349
    :cond_1
    invoke-static {}, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->closeGlobalNetworkDialog()V

    .line 350
    iget-object v2, p0, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->mNetworkDialog:Landroid/app/Dialog;

    if-nez v2, :cond_2

    .line 352
    invoke-static {v0}, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->createNetworkDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v2

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 355
    new-instance p1, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil$6;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil$6;-><init>(Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;)V

    invoke-virtual {v2, p1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto :goto_0

    .line 373
    :cond_3
    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 375
    :goto_0
    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_4

    .line 376
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 378
    :cond_4
    iput-object v2, p0, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->mNetworkDialog:Landroid/app/Dialog;

    return-object v2
.end method

.method public final showProgressDialog(Ljava/lang/String;Z)V
    .locals 2

    .line 390
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2712

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 391
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 393
    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 395
    iget-object p2, p0, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x64

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
