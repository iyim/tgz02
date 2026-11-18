.class public Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;
.super Ljava/lang/Object;
.source "GestureAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$InstanceHolder;
    }
.end annotation


# static fields
.field private static final ACTION_FIVE:I = 0x5

.field private static final ACTION_FOUR:I = 0x4

.field private static final ACTION_ONE:I = 0x1

.field private static final ACTION_SEVEN:I = 0x7

.field private static final ACTION_SIX:I = 0x6

.field private static final ACTION_THREE:I = 0x3

.field private static final ACTION_TWO:I = 0x2

.field private static final ACTION_ZERO:I = 0x0

.field private static final ALPHA:Ljava/lang/String; = "alpha"

.field private static final ANIMATOR_END:F = 1.0f

.field private static final ANIMATOR_FIFTY:F = 50.0f

.field private static final ANIMATOR_STAER:F = 0.0f

.field private static final ANIMATOR_TEN:F = 10.0f

.field private static final BOTTOM:Ljava/lang/String; = "bottom"

.field private static final DETECTED_AFTER_BG_DURATION:J = 0x12cL

.field private static final DETECTED_AFTER_DURATION:J = 0x3e8L

.field private static final DETECTED_BEFORE_CLOSE:J = 0x1388L

.field private static final DETECTED_BEFORE_DURATION:J = 0x64L

.field private static final DETECTED_DURATION:J = 0x258L

.field private static final DETECTED_DURATION_DELAY:J = 0x3e8L

.field private static final DETECTED_DURATION_MIDDLE_DELAY:J = 0x4b0L

.field private static final DETECTED_MOVE_CLOSE:J = 0xbb8L

.field private static final DETECTED_STATIC_DURATION:J = 0x190L

.field private static final DURATION_ZERO:J = 0x0L

.field private static final GESTURE_TAG:Ljava/lang/String; = "AGUI_GESTURE"

.field private static final LEFT:Ljava/lang/String; = "left"

.field private static final MODE_ONE:I = 0x1

.field private static final MODE_TWO:I = 0x2

.field private static final MODE_ZERO:I = 0x0

.field private static final RIGHT:Ljava/lang/String; = "right"

.field private static final SCALEX:Ljava/lang/String; = "ScaleX"

.field private static final SCALEY:Ljava/lang/String; = "ScaleY"

.field private static final TAG:Ljava/lang/String; = "GestureAnimationController"

.field private static final TOP:Ljava/lang/String; = "top"

.field private static final TRANSLATIONX:Ljava/lang/String; = "translationX"

.field private static final TRANSLATIONY:Ljava/lang/String; = "translationY"

.field private static final TYPE_EIGHT:I = 0x8

.field private static final TYPE_FIVE:I = 0x5

.field private static final TYPE_FOUR:I = 0x4

.field private static final TYPE_NINE:I = 0x9

.field private static final TYPE_ONE:I = 0x1

.field private static final TYPE_SEVEN:I = 0x7

.field private static final TYPE_SIX:I = 0x6

.field private static final TYPE_TEN:I = 0xa

.field private static final TYPE_THREE:I = 0x3

.field private static final TYPE_TWO:I = 0x2

.field private static final TYPE_ZERO:I


# instance fields
.field private UIHandler:Landroid/os/Handler;

.field private animatorSet:Landroid/animation/AnimatorSet;

.field private animatorSetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/animation/AnimatorSet;",
            ">;"
        }
    .end annotation
.end field

.field private fingerCursor:Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;

.field private flAfterBottom:Landroid/widget/FrameLayout;

.field private flAfterLeft:Landroid/widget/FrameLayout;

.field private flAfterRight:Landroid/widget/FrameLayout;

.field private flAfterTop:Landroid/widget/FrameLayout;

.field private flBottom:Landroid/widget/FrameLayout;

.field private flLeft:Landroid/widget/FrameLayout;

.field private flMiddle:Landroid/widget/FrameLayout;

.field private flRight:Landroid/widget/FrameLayout;

.field private flTop:Landroid/widget/FrameLayout;

.field private hideFingerCursorRunnable:Ljava/lang/Runnable;

.field private hisAction:I

.field private ivAfterBottomBg:Landroid/widget/ImageView;

.field private ivAfterBottomMiddle:Landroid/widget/ImageView;

.field private ivAfterLeftBg:Landroid/widget/ImageView;

.field private ivAfterLeftMiddle:Landroid/widget/ImageView;

.field private ivAfterRightBg:Landroid/widget/ImageView;

.field private ivAfterRightMiddle:Landroid/widget/ImageView;

.field private ivAfterTopBg:Landroid/widget/ImageView;

.field private ivAfterTopMiddle:Landroid/widget/ImageView;

.field private ivBottom:Landroid/widget/ImageView;

.field private ivLeft:Landroid/widget/ImageView;

.field private ivMiddleBg:Landroid/widget/ImageView;

.field private ivMiddleLogo:Landroid/widget/ImageView;

.field private ivRight:Landroid/widget/ImageView;

.field private ivTop:Landroid/widget/ImageView;

.field private llAfterBottomAllow:Landroid/widget/LinearLayout;

.field private llAfterLeftAllow:Landroid/widget/LinearLayout;

.field private llAfterRightAllow:Landroid/widget/LinearLayout;

.field private llAfterTopAllow:Landroid/widget/LinearLayout;

.field private llDetected:Landroid/widget/LinearLayout;

.field private llDetectedAnimator:Landroid/animation/AnimatorSet;

.field private mContext:Landroid/content/Context;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mainView:Landroid/view/View;

.field private runnable:Ljava/lang/Runnable;

.field private screenHeight:I

.field private screenWidth:I

.field private tip:[Ljava/lang/String;

.field private tipsData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tvAfterBottom:Landroid/widget/TextView;

.field private tvAfterLeft:Landroid/widget/TextView;

.field private tvAfterRight:Landroid/widget/TextView;

.field private tvAfterTop:Landroid/widget/TextView;

.field private tvBeforeBottom:Landroid/widget/TextView;

.field private tvBeforeLeft:Landroid/widget/TextView;

.field private tvBeforeRight:Landroid/widget/TextView;

.field private tvBeforeTop:Landroid/widget/TextView;

.field private tvMiddle:Landroid/widget/TextView;

.field private wmParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 10

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->mainView:Landroid/view/View;

    const-string v1, "\u5411\u5de6"

    const-string v2, "\u5411\u53f3"

    const-string v3, "OK"

    const-string v4, "\u6682\u505c"

    const-string v5, "\u8fd4\u56de"

    const-string v6, "\u70b9\u8d5e"

    const-string v7, "\u5411\u4e0b"

    const-string v8, "\u5411\u4e0a"

    const-string v9, "\u9759\u97f3"

    .line 115
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->tip:[Ljava/lang/String;

    const/16 v1, 0x400

    .line 142
    iput v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->screenWidth:I

    const/16 v1, 0x258

    .line 143
    iput v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->screenHeight:I

    .line 145
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->animatorSet:Landroid/animation/AnimatorSet;

    const/4 v0, 0x0

    .line 146
    iput v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->hisAction:I

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->animatorSetList:Ljava/util/List;

    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->tipsData:Ljava/util/HashMap;

    .line 428
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$2;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$2;-><init>(Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->hideFingerCursorRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$1;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->addWindow()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$1000(Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;)Landroid/os/Handler;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->UIHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;)Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->fingerCursor:Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;)Landroid/widget/FrameLayout;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->flMiddle:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;ILorg/json/JSONObject;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->handleFingerCursorAction(ILorg/json/JSONObject;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;I)Ljava/lang/String;
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->getTipsData(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$602(Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;I)I
    .locals 0

    .line 40
    iput p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->hisAction:I

    return p1
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .line 40
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->llDetectedAnimator:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$802(Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->llDetectedAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$900(Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;)Landroid/widget/LinearLayout;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->llDetected:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private addWindow()V
    .locals 3

    .line 194
    monitor-enter p0

    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->mainView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 196
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->wmParams:Landroid/view/WindowManager$LayoutParams;

    .line 197
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->mWindowManager:Landroid/view/WindowManager;

    .line 199
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 200
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x7d3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 202
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const v2, 0x1080018

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 204
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 207
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 210
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 211
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 213
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 214
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 215
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/agui/adapter/R$layout;->gesture_animation:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->mainView:Landroid/view/View;

    .line 216
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->mainView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->initView(Landroid/view/View;)V

    .line 217
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->mainView:Landroid/view/View;

    const/16 v1, 0x700

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->mainView:Landroid/view/View;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private afterAnimator(Landroid/widget/FrameLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 648
    invoke-direct {p0, p1, p2, v0, p5}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->setAfterAnimator(Landroid/widget/FrameLayout;Landroid/view/View;ZLjava/lang/String;)V

    const/4 p2, 0x0

    .line 649
    invoke-direct {p0, p1, p3, p2, p5}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->setAfterAnimator(Landroid/widget/FrameLayout;Landroid/view/View;ZLjava/lang/String;)V

    .line 650
    invoke-direct {p0, p1, p4, p2, p5}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->setAfterAnimator(Landroid/widget/FrameLayout;Landroid/view/View;ZLjava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private getDisplayMetrics(Landroid/content/Context;)V
    .locals 1

    .line 171
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 172
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 173
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->screenWidth:I

    .line 174
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->screenHeight:I

    return-void
.end method

.method public static getInstance()Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;
    .locals 1

    .line 157
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$InstanceHolder;->instance:Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;

    return-object v0
.end method

.method private getTipsData(I)Ljava/lang/String;
    .locals 2

    .line 406
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->tipsData:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->tipsData:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->tipsData:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 409
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->tip:[Ljava/lang/String;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_1

    .line 414
    array-length p1, v0

    add-int/lit8 p1, p1, -0x1

    aget-object p1, v0, p1

    return-object p1

    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 416
    aget-object p1, v0, p1

    return-object p1
.end method

.method private handleFingerCursorAction(ILorg/json/JSONObject;)V
    .locals 7

    .line 439
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->UIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->hideFingerCursorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 440
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->UIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->hideFingerCursorRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :try_start_0
    const-string v0, "x"

    .line 445
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-string v2, "y"

    .line 446
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->fingerCursor:Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;

    .line 452
    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v5, v0

    .line 453
    iget v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->screenWidth:I

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v0

    double-to-int v0, v5

    .line 454
    iget v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->screenHeight:I

    int-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v5

    double-to-int v1, v2

    .line 455
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", xpos = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", ypos = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "AGUI_GESTURE"

    invoke-static {v5, v2}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    iget v2, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v6, 0xa

    if-gt v2, v6, :cond_0

    iget v2, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, v6, :cond_1

    .line 457
    :cond_0
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->fingerCursor:Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->moveTo(II)V

    :cond_1
    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    const/4 v0, 0x5

    if-eq p1, v0, :cond_3

    const/4 p2, 0x6

    if-eq p1, p2, :cond_2

    goto :goto_0

    .line 470
    :cond_2
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->fingerCursor:Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->setState(I)V

    .line 471
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->UIHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->hideFingerCursorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0x7d0

    const-string v2, "timeout"

    .line 464
    invoke-virtual {p2, v2, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 465
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->fingerCursor:Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;

    invoke-virtual {p2, v0, v1}, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->setCountdownDuration(J)V

    .line 466
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", timeout = "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->fingerCursor:Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->setState(I)V

    goto :goto_0

    .line 461
    :cond_4
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->fingerCursor:Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->setState(I)V

    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 448
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1

    .line 226
    sget v0, Lcom/alibaba/ailabs/genie/agui/adapter/R$id;->ll_detected:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->llDetected:Landroid/widget/LinearLayout;

    .line 227
    sget v0, Lcom/alibaba/ailabs/genie/agui/adapter/R$id;->iv_left:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->ivLeft:Landroid/widget/ImageView;

    .line 228
    sget v0, Lcom/alibaba/ailabs/genie/agui/adapter/R$id;->iv_top:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->ivTop:Landroid/widget/ImageView;

    .line 229
    sget v0, Lcom/alibaba/ailabs/genie/agui/adapter/R$id;->iv_right:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->ivRight:Landroid/widget/ImageView;

    .line 230
    sget v0, Lcom/alibaba/ailabs/genie/agui/adapter/R$id;->iv_bottom:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->ivBottom:Landroid/widget/ImageView;

    .line 232
    sget v0, Lcom/alibaba/ailabs/genie/agui/adapter/R$id;->fl_left:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->flLeft:Landroid/widget/FrameLayout;

    .line 233
    sget v0, Lcom/alibaba/ailabs/genie/agui/adapter/R$id;->fl_top:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->flTop:Landroid/widget/FrameLayout;

    .line 234
    sget v0, Lcom/alibaba/ailabs/genie/agui/adapter/R$id;->fl_right:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->flRight:Landroid/widget/FrameLayout;

    .line 235
    sget v0, Lcom/alibaba/ailabs/genie/agui/adapter/R$id;->fl_bottom:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->flBottom:Landroid/widget/FrameLayout;

    .line 238
    sget v0, Lcom/alibaba/ailabs/genie/agui/adapter/R$id;->fl_after_left:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->flAfterLeft:Landroid/widget/FrameLayout;

    .line 239
    sget v0, Lcom/alibaba/ailabs/genie/agui/adapter/R$id;->fl_after_top:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->flAfterTop:Landroid/widget/FrameLayout;

    .line 240
    sget v0, Lcom/alibaba/ailabs/genie/agui/adapter/R$id;->fl_after_right:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->flAfterRight:Landroid/widget/FrameLayout;

    .line 241
    sget v0, Lcom/alibaba/ailabs/genie/agui/adapter/R$id;->fl_after_bottom:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->flAfterBottom:Landroid/widget/FrameLayout;

    .line 242
    sget v0, Lcom/alibaba/ailabs/genie/agui/adapter/R$id;->v_finger_cursor:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->fingerCursor:Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;

    .line 244
    sget v0, Lcom/alibaba/ailabs/genie/agui/adapter/R$id;->iv_after_left_bg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->ivAfterLeftBg:Landroid/widget/ImageView;

    .line 245
    sget v0, Lcom/alibaba/ailabs/genie/agui/adapter/R$id;->iv_after_left_green:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->ivAfterLeftMiddle:Landroid/widget/ImageView;

    .line 246
    sget v0, Lcom/alibaba/ailabs/genie/agui/adapter/R$id;->iv_after_top_bg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->ivAfterTopBg:Landroid/widget/ImageView;

    .line 247
    sget v0, Lcom/alibaba/ailabs/genie/agui/adapter/R$id;->iv_after_top_green:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->ivAfterTopMiddle:Landroid/widget/ImageView;

    .line 248
    sget v0, Lcom/alibaba/ailabs/genie/agui/adapter/R$id;->iv_after_right_bg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->ivAfterRightBg:Landroid/widget/ImageView;

    .line 249
    sget v0, Lcom/alibaba/ailabs/genie/agui/adapter/R$id;->iv_after_right_green:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->ivAfterRightMiddle:Landroid/widget/ImageView;

    .line 250
    sget v0, Lcom/alibaba/ailabs/genie/agui/adapter/R$id;->iv_after_bottom_bg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->ivAfterBottomBg:Landroid/widget/ImageView;

    .line 251
    sget v0, Lcom/alibaba/ailabs/genie/agui/adapter/R$id;->iv_after_bottom_green:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->ivAfterBottomMiddle:Landroid/widget/ImageView;

    .line 253
    sget v0, Lcom/alibaba/ailabs/genie/agui/adapter/R$id;->ll_after_left_allow:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->llAfterLeftAllow:Landroid/widget/LinearLayout;

    .line 254
    sget v0, Lcom/alibaba/ailabs/genie/agui/adapter/R$id;->ll_after_top_allow:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->llAfterTopAllow:Landroid/widget/LinearLayout;

    .line 255
    sget v0, Lcom/alibaba/ailabs/genie/agui/adapter/R$id;->ll_after_right_allow:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->llAfterRightAllow:Landroid/widget/LinearLayout;

    .line 256
    sget v0, Lcom/alibaba/ailabs/genie/agui/adapter/R$id;->ll_after_bottom_allow:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->llAfterBottomAllow:Landroid/widget/LinearLayout;

    .line 258
    sget v0, Lcom/alibaba/ailabs/genie/agui/adapter/R$id;->fl_middle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->flMiddle:Landroid/widget/FrameLayout;

    .line 259
    sget v0, Lcom/alibaba/ailabs/genie/agui/adapter/R$id;->iv_middle_bg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->ivMiddleBg:Landroid/widget/ImageView;

    .line 260
    sget v0, Lcom/alibaba/ailabs/genie/agui/adapter/R$id;->iv_middle_logo:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->ivMiddleLogo:Landroid/widget/ImageView;

    .line 262
    sget v0, Lcom/alibaba/ailabs/genie/agui/adapter/R$id;->tv_left:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->tvBeforeLeft:Landroid/widget/TextView;

    .line 263
    sget v0, Lcom/alibaba/ailabs/genie/agui/adapter/R$id;->tv_top:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->tvBeforeTop:Landroid/widget/TextView;

    .line 264
    sget v0, Lcom/alibaba/ailabs/genie/agui/adapter/R$id;->tv_right:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->tvBeforeRight:Landroid/widget/TextView;

    .line 265
    sget v0, Lcom/alibaba/ailabs/genie/agui/adapter/R$id;->tv_bottom:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->tvBeforeBottom:Landroid/widget/TextView;

    .line 267
    sget v0, Lcom/alibaba/ailabs/genie/agui/adapter/R$id;->tv_after_left:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->tvAfterLeft:Landroid/widget/TextView;

    .line 268
    sget v0, Lcom/alibaba/ailabs/genie/agui/adapter/R$id;->tv_after_top:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->tvAfterTop:Landroid/widget/TextView;

    .line 269
    sget v0, Lcom/alibaba/ailabs/genie/agui/adapter/R$id;->tv_after_right:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->tvAfterRight:Landroid/widget/TextView;

    .line 270
    sget v0, Lcom/alibaba/ailabs/genie/agui/adapter/R$id;->tv_after_bottom:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->tvAfterBottom:Landroid/widget/TextView;

    .line 271
    sget v0, Lcom/alibaba/ailabs/genie/agui/adapter/R$id;->tv_middle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->tvMiddle:Landroid/widget/TextView;

    return-void
.end method

.method private removeWindow()V
    .locals 2

    .line 178
    monitor-enter p0

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->mainView:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 181
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->mainView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 182
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->mainView:Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 184
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 187
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private setAfterAnimator(Landroid/widget/FrameLayout;Landroid/view/View;ZLjava/lang/String;)V
    .locals 9

    const/4 v0, 0x0

    .line 661
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 662
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p3, :cond_0

    .line 667
    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const-string v4, "ScaleX"

    invoke-static {p2, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 668
    new-array v4, v2, [F

    fill-array-data v4, :array_1

    const-string v5, "ScaleY"

    invoke-static {p2, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v3, v1

    move-object v4, v3

    :goto_0
    const/4 v5, -0x1

    .line 671
    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x3

    sparse-switch v6, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v0, "right"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    const/4 v0, 0x2

    goto :goto_2

    :sswitch_1
    const-string v6, "left"

    invoke-virtual {p4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    goto :goto_2

    :sswitch_2
    const-string v0, "top"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    const/4 v0, 0x1

    goto :goto_2

    :sswitch_3
    const-string v0, "bottom"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    const/4 v0, 0x3

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v0, -0x1

    :goto_2
    const-string p4, "translationX"

    if-eqz v0, :cond_5

    const-string v5, "translationY"

    if-eq v0, v7, :cond_4

    if-eq v0, v2, :cond_3

    if-eq v0, v8, :cond_2

    goto :goto_3

    .line 682
    :cond_2
    new-array p4, v8, [F

    fill-array-data p4, :array_2

    invoke-static {p2, v5, p4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    goto :goto_3

    .line 679
    :cond_3
    new-array v0, v8, [F

    fill-array-data v0, :array_3

    invoke-static {p2, p4, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    goto :goto_3

    .line 676
    :cond_4
    new-array p4, v8, [F

    fill-array-data p4, :array_4

    invoke-static {p2, v5, p4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    goto :goto_3

    .line 673
    :cond_5
    new-array v0, v8, [F

    fill-array-data v0, :array_5

    invoke-static {p2, p4, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    :goto_3
    const-string p4, "alpha"

    if-eqz p3, :cond_6

    .line 690
    new-array v0, v2, [F

    fill-array-data v0, :array_6

    invoke-static {p2, p4, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p4

    goto :goto_4

    .line 692
    :cond_6
    new-array v0, v8, [F

    fill-array-data v0, :array_7

    invoke-static {p2, p4, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p4

    .line 694
    :goto_4
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    if-eqz p3, :cond_7

    .line 696
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_5

    .line 698
    :cond_7
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :goto_5
    if-eqz p3, :cond_8

    const-wide/16 v1, 0x12c

    .line 702
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    goto :goto_6

    :cond_8
    const-wide/16 v1, 0x3e8

    .line 704
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 707
    :goto_6
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 708
    new-instance p4, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$5;

    invoke-direct {p4, p0, p3, p2, p1}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$5;-><init>(Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;ZLandroid/view/View;Landroid/widget/FrameLayout;)V

    invoke-virtual {v0, p4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x527265d5 -> :sswitch_3
        0x1c155 -> :sswitch_2
        0x32a007 -> :sswitch_1
        0x677c21c -> :sswitch_0
    .end sparse-switch

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x41200000    # 10.0f
        0x41200000    # 10.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x41200000    # 10.0f
        0x41200000    # 10.0f
    .end array-data

    :array_4
    .array-data 4
        0x0
        -0x3ee00000    # -10.0f
        -0x3ee00000    # -10.0f
    .end array-data

    :array_5
    .array-data 4
        0x0
        -0x3ee00000    # -10.0f
        -0x3ee00000    # -10.0f
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private setBeforeAnimator(Landroid/widget/FrameLayout;Landroid/widget/ImageView;ILandroid/widget/TextView;)V
    .locals 2

    const/4 v0, 0x0

    .line 577
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 578
    invoke-direct {p0, p3}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->getTipsData(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p3, 0x2

    .line 579
    new-array p3, p3, [F

    fill-array-data p3, :array_0

    const-string p4, "alpha"

    invoke-static {p2, p4, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 580
    new-instance p3, Landroid/animation/AnimatorSet;

    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 581
    invoke-virtual {p3, p2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-wide/16 v0, 0x64

    .line 582
    invoke-virtual {p3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 583
    invoke-virtual {p3}, Landroid/animation/AnimatorSet;->start()V

    .line 584
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->animatorSetList:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 585
    new-instance p2, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$4;

    invoke-direct {p2, p0, p1}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$4;-><init>(Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;Landroid/widget/FrameLayout;)V

    invoke-virtual {p3, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private setMiddleAnimator()V
    .locals 5

    .line 731
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->flMiddle:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 732
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->ivMiddleBg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 734
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->UIHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->runnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 735
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 736
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->UIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 738
    :cond_0
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$6;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$6;-><init>(Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->runnable:Ljava/lang/Runnable;

    .line 744
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->ivMiddleBg:Landroid/widget/ImageView;

    const/4 v1, 0x3

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "alpha"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 745
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->ivMiddleBg:Landroid/widget/ImageView;

    new-array v3, v1, [F

    fill-array-data v3, :array_1

    const-string v4, "ScaleX"

    invoke-static {v2, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 746
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->ivMiddleBg:Landroid/widget/ImageView;

    new-array v1, v1, [F

    fill-array-data v1, :array_2

    const-string v4, "ScaleY"

    invoke-static {v3, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 747
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->animatorSet:Landroid/animation/AnimatorSet;

    .line 748
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 749
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->animatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 750
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 751
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->UIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->runnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public clickAfterBottom()V
    .locals 8

    .line 635
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->tvAfterBottom:Landroid/widget/TextView;

    const/4 v1, 0x7

    invoke-direct {p0, v1}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->getTipsData(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 636
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->flAfterBottom:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->ivAfterBottomBg:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->ivAfterBottomMiddle:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->llAfterBottomAllow:Landroid/widget/LinearLayout;

    const-string v7, "bottom"

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->afterAnimator(Landroid/widget/FrameLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public clickAfterLeft()V
    .locals 8

    .line 605
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->tvAfterLeft:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->getTipsData(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 606
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->flAfterLeft:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->ivAfterLeftBg:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->ivAfterLeftMiddle:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->llAfterLeftAllow:Landroid/widget/LinearLayout;

    const-string v7, "left"

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->afterAnimator(Landroid/widget/FrameLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public clickAfterRight()V
    .locals 8

    .line 625
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->tvAfterRight:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->getTipsData(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 626
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->flAfterRight:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->ivAfterRightBg:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->ivAfterRightMiddle:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->llAfterRightAllow:Landroid/widget/LinearLayout;

    const-string v7, "right"

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->afterAnimator(Landroid/widget/FrameLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public clickAfterTop()V
    .locals 8

    .line 615
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->tvAfterTop:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->getTipsData(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 616
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->flAfterTop:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->ivAfterTopBg:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->ivAfterTopMiddle:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->llAfterTopAllow:Landroid/widget/LinearLayout;

    const-string v7, "top"

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->afterAnimator(Landroid/widget/FrameLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public clickBefore()V
    .locals 4

    .line 546
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->animatorSetList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 547
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->flLeft:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->ivLeft:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->tvBeforeLeft:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->setBeforeAnimator(Landroid/widget/FrameLayout;Landroid/widget/ImageView;ILandroid/widget/TextView;)V

    .line 548
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->flTop:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->ivTop:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->tvBeforeTop:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->setBeforeAnimator(Landroid/widget/FrameLayout;Landroid/widget/ImageView;ILandroid/widget/TextView;)V

    .line 549
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->flRight:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->ivRight:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->tvBeforeRight:Landroid/widget/TextView;

    const/4 v3, 0x2

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->setBeforeAnimator(Landroid/widget/FrameLayout;Landroid/widget/ImageView;ILandroid/widget/TextView;)V

    .line 550
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->flBottom:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->ivBottom:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->tvBeforeBottom:Landroid/widget/TextView;

    const/4 v3, 0x7

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->setBeforeAnimator(Landroid/widget/FrameLayout;Landroid/widget/ImageView;ILandroid/widget/TextView;)V

    return-void
.end method

.method public clickBeforeCancel()V
    .locals 2

    .line 559
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->flLeft:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 560
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->flTop:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 561
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->flRight:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 562
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->flBottom:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 564
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->animatorSetList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 565
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->animatorSetList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    .line 567
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public clickDetected()V
    .locals 4

    .line 480
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->TAG:Ljava/lang/String;

    const-string v1, "clickDetected"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->llDetectedAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 482
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->llDetected:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 485
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->llDetected:Landroid/widget/LinearLayout;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "translationY"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 486
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->llDetected:Landroid/widget/LinearLayout;

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    const-string v3, "alpha"

    invoke-static {v2, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 487
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 488
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-wide/16 v0, 0x258

    .line 489
    invoke-virtual {v2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 490
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$3;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$3;-><init>(Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;)V

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 537
    iput-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->llDetectedAnimator:Landroid/animation/AnimatorSet;

    .line 538
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->llDetectedAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 539
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->TAG:Ljava/lang/String;

    const-string v1, "detected in animator started"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x42480000    # 50.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public clickMiddle(ILjava/lang/String;)V
    .locals 1

    .line 724
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->ivMiddleLogo:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 725
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->tvMiddle:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 726
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->setMiddleAnimator()V

    return-void
.end method

.method public disableGestureUi()V
    .locals 2

    .line 280
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->TAG:Ljava/lang/String;

    const-string v1, "disableGestureUi"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->removeWindow()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public enableGestureUi()V
    .locals 2

    .line 275
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->TAG:Ljava/lang/String;

    const-string v1, "enableGestureUi"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->addWindow()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public getGestureUi(IILorg/json/JSONObject;)V
    .locals 4

    const-string v0, " action = "

    const-string v1, "mode = "

    if-eqz p3, :cond_0

    .line 293
    sget-object v2, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " data = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 296
    :cond_0
    sget-object v2, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->UIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$1;-><init>(Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;IILorg/json/JSONObject;)V

    const-wide/16 p1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    .line 165
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->mContext:Landroid/content/Context;

    .line 166
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->getDisplayMetrics(Landroid/content/Context;)V

    .line 167
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->UIHandler:Landroid/os/Handler;

    return-void
.end method

.method public setTipsData(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 425
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->tipsData:Ljava/util/HashMap;

    return-void
.end method
