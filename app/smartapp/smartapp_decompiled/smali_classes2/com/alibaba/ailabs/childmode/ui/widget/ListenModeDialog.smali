.class public Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;
.super Landroid/app/Dialog;
.source "ListenModeDialog.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ListenModeDialog"


# instance fields
.field private mBottomTextView:Landroid/widget/TextView;

.field private final mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDisappearContentViewRunnable:Ljava/lang/Runnable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mHideAnimation:Landroid/view/animation/AlphaAnimation;

.field private mOutRingView:Landroid/view/View;

.field private final mProgressAnimView:Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;

.field private mScreenBroadcast:Landroid/content/BroadcastReceiver;

.field private mShowAnimation:Landroid/view/animation/AlphaAnimation;

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 66
    sget v0, Lcom/alibaba/ailabs/genie/setting/R$style;->CommentStyle:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 56
    new-instance v0, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog$1;-><init>(Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;->mDisappearContentViewRunnable:Ljava/lang/Runnable;

    .line 67
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;->mContext:Landroid/content/Context;

    .line 68
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 69
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x10700

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/high16 v0, -0x80000000

    .line 72
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const/4 v0, 0x0

    .line 73
    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 74
    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 75
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    .line 76
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 77
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v1, 0x7d2

    .line 78
    invoke-virtual {p1, v1}, Landroid/view/Window;->setType(I)V

    .line 79
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const-string p1, "ListenModeDialog"

    const-string v0, "ListenModeDialog init"

    .line 80
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-static {}, Lcom/alibaba/ailabs/genie/density/GenieDensity;->updateApplication()Z

    move-result p1

    .line 82
    sget v0, Lcom/alibaba/ailabs/genie/setting/R$layout;->listen_mode_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;->setContentView(I)V

    .line 83
    sget v0, Lcom/alibaba/ailabs/genie/setting/R$id;->listen_mode_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;->mView:Landroid/view/View;

    .line 84
    sget v0, Lcom/alibaba/ailabs/genie/setting/R$id;->listen_mode_view_content:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;->mContentView:Landroid/view/View;

    .line 85
    sget v0, Lcom/alibaba/ailabs/genie/setting/R$id;->anim_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;

    iput-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;->mProgressAnimView:Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;

    .line 86
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;->mProgressAnimView:Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;

    new-instance v1, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog$2;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog$2;-><init>(Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->setCallBackListener(Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView$CallBackListener;)V

    .line 105
    sget v0, Lcom/alibaba/ailabs/genie/setting/R$id;->listen_mode_oval_out_ring:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;->mOutRingView:Landroid/view/View;

    .line 106
    sget v0, Lcom/alibaba/ailabs/genie/setting/R$id;->listen_text:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;->mBottomTextView:Landroid/widget/TextView;

    .line 108
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;->registerBroadcast()V

    if-eqz p1, :cond_0

    .line 111
    invoke-static {}, Lcom/alibaba/ailabs/genie/density/GenieDensity;->revertApplication()V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;)Landroid/content/Context;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;->updateExitStatus()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;)Landroid/view/View;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;->sendDisappearMessage()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;->handlerBroadcastAction(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;->mHandler:Landroid/os/Handler;

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private handlerBroadcastAction(Ljava/lang/String;)V
    .locals 1

    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 202
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "ListenModeDialog"

    const-string v0, "Intent.ACTION_SCREEN_OFF"

    .line 203
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;->mProgressAnimView:Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;

    if-eqz p1, :cond_0

    .line 205
    invoke-virtual {p1}, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->reset()V

    :cond_0
    return-void
.end method

.method private registerBroadcast()V
    .locals 3

    .line 184
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;->mScreenBroadcast:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 185
    new-instance v0, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog$3;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog$3;-><init>(Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;->mScreenBroadcast:Landroid/content/BroadcastReceiver;

    .line 195
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 196
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 197
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 198
    iget-object v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;->mScreenBroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private sendDisappearMessage()V
    .locals 4

    .line 177
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;->mDisappearContentViewRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 178
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;->mDisappearContentViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 179
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;->mDisappearContentViewRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private shieldHome()V
    .locals 6

    :try_start_0
    const-string v0, "android.view.Window"

    .line 161
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "addPrivateFlags"

    const/4 v2, 0x1

    .line 162
    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 163
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;->getWindow()Landroid/view/Window;

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

    .line 165
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private unregisterBroadcast()V
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;->mScreenBroadcast:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 212
    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 213
    iput-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;->mScreenBroadcast:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method

.method private updateExitStatus()V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;->mProgressAnimView:Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 117
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->setVisibility(I)V

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;->mOutRingView:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 120
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;->mBottomTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 124
    sget v1, Lcom/alibaba/ailabs/genie/setting/R$string;->listen_mode_exit:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .line 155
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 156
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;->unregisterBroadcast()V

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

    .line 130
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 134
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public setHideAnimation(Landroid/view/View;I)V
    .locals 3

    if-eqz p1, :cond_2

    if-gez p2, :cond_0

    goto :goto_0

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;->mHideAnimation:Landroid/view/animation/AlphaAnimation;

    if-eqz v0, :cond_1

    .line 225
    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->cancel()V

    .line 228
    :cond_1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;->mHideAnimation:Landroid/view/animation/AlphaAnimation;

    .line 229
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;->mHideAnimation:Landroid/view/animation/AlphaAnimation;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 230
    iget-object p2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;->mHideAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 231
    iget-object p2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;->mHideAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setShowAnimation(Landroid/view/View;I)V
    .locals 3

    if-eqz p1, :cond_2

    if-gez p2, :cond_0

    goto :goto_0

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;->mShowAnimation:Landroid/view/animation/AlphaAnimation;

    if-eqz v0, :cond_1

    .line 241
    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->cancel()V

    .line 243
    :cond_1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;->mShowAnimation:Landroid/view/animation/AlphaAnimation;

    .line 244
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;->mShowAnimation:Landroid/view/animation/AlphaAnimation;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 245
    iget-object p2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;->mShowAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 246
    iget-object p2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;->mShowAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public show()V
    .locals 3

    .line 140
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 141
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;->shieldHome()V

    .line 142
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;->mView:Landroid/view/View;

    const/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;->setShowAnimation(Landroid/view/View;I)V

    .line 143
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "page_type"

    const-string v2, "listenMode"

    .line 144
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "lockScreenPage"

    const-string v2, "a1z3lt.b78991222"

    .line 145
    invoke-static {v1, v2, v0}, Lcom/alibaba/ailabs/genie/utils/ut/UtReport;->pageUT(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 147
    invoke-static {}, Lcom/alibaba/ailabs/childmode/Global;->isListenMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ListenModeDialog show listenMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/ailabs/childmode/Global;->isListenMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ListenModeDialog"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/ListenModeDialog;->dismiss()V

    :cond_0
    return-void
.end method
