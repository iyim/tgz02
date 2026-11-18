.class public Lcom/alibaba/ailabs/genie/task/aicare/ui/MsgShowActivity;
.super Landroid/app/Activity;
.source "MsgShowActivity.java"


# static fields
.field private static final MSG_CHECK:I = 0x64

.field private static final MSG_EXIT:I = 0x65

.field private static final MSG_EXIT_ACTIVITY:I = 0x66


# instance fields
.field private enterAnim:Landroid/view/animation/TranslateAnimation;

.field private exitAnim:Landroid/view/animation/TranslateAnimation;

.field private mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private tips:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    new-instance v0, Lcom/alibaba/ailabs/genie/task/aicare/ui/MsgShowActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/task/aicare/ui/MsgShowActivity$1;-><init>(Lcom/alibaba/ailabs/genie/task/aicare/ui/MsgShowActivity;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/ui/MsgShowActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/task/aicare/ui/MsgShowActivity;)Landroid/os/Handler;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/task/aicare/ui/MsgShowActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/task/aicare/ui/MsgShowActivity;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/aicare/ui/MsgShowActivity;->startExit()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private collapsingNotification()V
    .locals 5

    const-string v0, "statusbar"

    .line 170
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/task/aicare/ui/MsgShowActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v1, "android.app.StatusBarManager"

    .line 175
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 176
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    const/4 v4, 0x0

    if-gt v2, v3, :cond_1

    const-string v2, "collapse"

    .line 179
    new-array v3, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v2, "collapsePanels"

    .line 181
    new-array v3, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    :goto_0
    const/4 v2, 0x1

    .line 183
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 184
    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 186
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private exitMsgActivity()V
    .locals 2

    .line 119
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/task/aicare/ui/MsgShowActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/ui/MsgShowActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 121
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/task/aicare/ui/MsgShowActivity;->finish()V

    return-void
.end method

.method private startEnter()V
    .locals 10

    .line 140
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/ui/MsgShowActivity;->tips:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/ui/MsgShowActivity;->tips:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 144
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/ui/MsgShowActivity;->enterAnim:Landroid/view/animation/TranslateAnimation;

    .line 147
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/ui/MsgShowActivity;->enterAnim:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 148
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/ui/MsgShowActivity;->tips:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/task/aicare/ui/MsgShowActivity;->enterAnim:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 149
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/ui/MsgShowActivity;->tips:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private startExit()V
    .locals 10

    .line 153
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/ui/MsgShowActivity;->tips:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/ui/MsgShowActivity;->tips:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 157
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/ui/MsgShowActivity;->exitAnim:Landroid/view/animation/TranslateAnimation;

    .line 160
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/ui/MsgShowActivity;->exitAnim:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 161
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/ui/MsgShowActivity;->tips:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/task/aicare/ui/MsgShowActivity;->exitAnim:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 162
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/ui/MsgShowActivity;->tips:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 65
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    sget p1, Lcom/alibaba/ailabs/genie/task/R$layout;->aicare_black_msg_activity:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/task/aicare/ui/MsgShowActivity;->setContentView(I)V

    .line 67
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/task/aicare/ui/MsgShowActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "KEY_TIPS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 68
    sget v0, Lcom/alibaba/ailabs/genie/task/R$id;->ai_care_tips:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/task/aicare/ui/MsgShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/ui/MsgShowActivity;->tips:Landroid/widget/TextView;

    .line 69
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/ui/MsgShowActivity;->tips:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/task/utils/ToolsUtils;->turnOnScreen(Landroid/content/Context;)V

    .line 71
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/aicare/ui/MsgShowActivity;->collapsingNotification()V

    .line 72
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->hideUi(Landroid/content/Context;)V

    const-string p1, "TaskService-AiCare"

    const-string v0, "onCreate"

    .line 73
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 126
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string v0, "TaskService-AiCare"

    const-string v1, "Destroy"

    .line 127
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-static {}, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->getInstance()Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->clearStack()V

    .line 129
    invoke-static {}, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->getInstance()Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->getScreenState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const-string v0, "power"

    .line 132
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/task/aicare/ui/MsgShowActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 133
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    new-instance v0, Landroid/content/Intent;

    const-string v1, "is_screen_on"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/task/aicare/ui/MsgShowActivity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 111
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/aicare/ui/MsgShowActivity;->exitMsgActivity()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 78
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "KEY_TIPS"

    .line 79
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 80
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/ui/MsgShowActivity;->tips:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/task/utils/ToolsUtils;->turnOnScreen(Landroid/content/Context;)V

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 86
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 87
    invoke-static {}, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->getInstance()Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->addStack(Landroid/app/Activity;)V

    .line 88
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/ui/MsgShowActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 89
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/aicare/ui/MsgShowActivity;->startEnter()V

    .line 90
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->hideUi(Landroid/content/Context;)V

    .line 91
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/ui/MsgShowActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 92
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/ui/MsgShowActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 97
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/aicare/ui/MsgShowActivity;->exitMsgActivity()V

    .line 98
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const-string v0, "TaskService-AiCare"

    const-string v1, "onStop"

    .line 99
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 104
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/aicare/ui/MsgShowActivity;->exitMsgActivity()V

    const-string p1, "TaskService-AiCare"

    const-string v0, "onTouchEvent"

    .line 105
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method
