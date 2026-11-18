.class public Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;
.super Ljava/lang/Object;
.source "GenieTalkController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$OnGenieTalkShowListener;
    }
.end annotation


# static fields
.field private static final GENIE_INSIDE_SHOW_DURATION:J = 0x1388L

.field private static final GENIE_TALK_HIDE_DURATION:J = 0x2ee0L

.field private static final GENIE_TALK_SHOW_DURATION:J = 0x1388L

.field private static final GENIE_TALK_UPDATE_TIME:J = 0x36ee80L

.field private static final GENIE_TIRED_SECOND:J = 0x493e0L

.field private static final KEY_GENIE_TIPS_SHOW_COMMON:Ljava/lang/String; = "Genie_ball"

.field private static final MESSAGE_GET_GENIE_TALK_DATA:I = 0x0

.field private static final MESSAGE_HIDE_GENIE_TALK:I = 0x1

.field private static final MESSAGE_HIDE_INSIDE_TIPS:I = 0x5

.field private static final MESSAGE_SHOW_GENIE_TALK:I = 0x2

.field private static final MESSAGE_SHOW_INSIDE_TIPS:I = 0x4

.field private static final MESSAGE_SHOW_WAKEUP_TIPS:I = 0x3

.field private static final SPM_PAGE:Ljava/lang/String; = "a1z3lt.b90280894"

.field private static final STATISTIC_PAGE:Ljava/lang/String; = ""

.field private static final TAG:Ljava/lang/String; = "GenieTalkController"


# instance fields
.field private allRules:Lcom/alibaba/ailabs/genie/genieui/genietalk/EmptyRule;

.field private commonShowSize:I

.field private context:Landroid/content/Context;

.field private corpusClick:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private corpusShow:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private counter:Landroid/os/CountDownTimer;

.field private delayTime:J

.field private df:Ljava/text/SimpleDateFormat;

.field private disappearDelay:J

.field private displayLagSeconds:J

.field private displaySeconds:J

.field private endColor:Ljava/lang/String;

.field private genieTalkContainer:Landroid/widget/LinearLayout;

.field private hasBeenShowed:Z

.field private insideCorpus:Lcom/alibaba/fastjson/JSONArray;

.field private insideLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private insideShowActivity:Ljava/lang/String;

.field private insideShowPackage:Ljava/lang/String;

.field private insideStatus:Ljava/lang/String;

.field private final insideTextMargin:I

.field private isListFirstShow:Z

.field private isShowingInside:Z

.field private isWakeupMode:Z

.field private lastCorpusResponse:Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GetCorpusResponseData;

.field private lastPickIndex:I

.field private layoutAnimation:Landroid/view/animation/LayoutAnimationController;

.field private layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private listChanged:Z

.field private mGenieInsideAppContainer:Landroid/widget/LinearLayout;

.field private mGenieInsideAppLayout:Landroid/widget/LinearLayout;

.field private mGenieInsideAppRootView:Landroid/view/View;

.field private mGenieInsideTMJLTextView:Landroid/widget/TextView;

.field private mGenieInsideTMJLTextView2:Landroid/widget/TextView;

.field private mGenieTalkRootView:Landroid/view/View;

.field private mGenieWakeupContainer:Landroid/widget/LinearLayout;

.field private mGenieWakeupRootView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mNextShowCorpus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;",
            ">;"
        }
    .end annotation
.end field

.field private mTalkViewPool:Lcom/alibaba/ailabs/genie/genieui/utils/pool/TgObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/ailabs/genie/genieui/utils/pool/TgObjectPool<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private noRequestList:Lcom/alibaba/fastjson/JSONArray;

.field private onGenieTalkShowListener:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$OnGenieTalkShowListener;

.field private packageName:Ljava/lang/String;

.field private pageName:Ljava/lang/String;

.field private queryColor:Ljava/lang/String;

.field private random:Ljava/util/Random;

.field private recyclerAdapter:Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter;

.field private showInside:Z

.field private showInsideSize:I

.field private sortedCorpus:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/BaseBallRule;",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;",
            ">;>;"
        }
    .end annotation
.end field

.field private startColor:Ljava/lang/String;

.field private talkEnable:Z

.field private final talkHeight:I

.field private talkLayoutPrams:Landroid/view/WindowManager$LayoutParams;

.field private final textPadding:I

.field private final textWakeupMargin:I

.field private tiredSeconds:J

.field private tmjlColor:Ljava/lang/String;

.field private updateDuration:J

.field private wakeUpShowSize:I

.field private wakeUpTipRootView:Landroid/view/View;

.field private final wakeupHeight:I

.field private wakeupLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private final wakeupTextPadding:I

.field private wakeupTipsContainer:Landroid/support/v7/widget/RecyclerView;

.field private wakeupTipsEnable:Z

.field private windowManager:Landroid/view/WindowManager;

.field private windowWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->random:Ljava/util/Random;

    .line 95
    new-instance v0, Lcom/alibaba/ailabs/genie/genieui/genietalk/EmptyRule;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/genieui/genietalk/EmptyRule;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->allRules:Lcom/alibaba/ailabs/genie/genieui/genietalk/EmptyRule;

    const/4 v0, 0x0

    .line 97
    iput v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->windowWidth:I

    .line 103
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->talkEnable:Z

    .line 104
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->isWakeupMode:Z

    const/4 v1, 0x1

    .line 105
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->wakeupTipsEnable:Z

    const-wide/16 v2, 0x7d0

    .line 107
    iput-wide v2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->delayTime:J

    const-wide/32 v2, 0x36ee80

    .line 109
    iput-wide v2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->updateDuration:J

    const-wide/16 v2, 0x1388

    .line 125
    iput-wide v2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->disappearDelay:J

    .line 130
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->showInside:Z

    const-string v4, "0"

    .line 131
    iput-object v4, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->insideStatus:Ljava/lang/String;

    .line 132
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->isShowingInside:Z

    .line 133
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->hasBeenShowed:Z

    .line 137
    new-instance v4, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v4}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v4, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->insideLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 145
    new-instance v4, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    iput-object v4, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->insideCorpus:Lcom/alibaba/fastjson/JSONArray;

    const/4 v4, 0x3

    .line 147
    iput v4, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->showInsideSize:I

    .line 154
    new-instance v4, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v4}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v4, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->talkLayoutPrams:Landroid/view/WindowManager$LayoutParams;

    const/4 v4, 0x6

    .line 156
    iput v4, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->wakeUpShowSize:I

    .line 163
    new-instance v4, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v4}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v4, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->wakeupLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 166
    iput v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->commonShowSize:I

    .line 169
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->listChanged:Z

    .line 173
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mNextShowCorpus:Ljava/util/List;

    .line 174
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->isListFirstShow:Z

    const-wide/32 v4, 0x493e0

    .line 179
    iput-wide v4, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->tiredSeconds:J

    const-wide/16 v4, 0x2ee0

    .line 181
    iput-wide v4, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->displaySeconds:J

    .line 183
    iput-wide v2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->displayLagSeconds:J

    .line 185
    new-instance v1, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->noRequestList:Lcom/alibaba/fastjson/JSONArray;

    .line 187
    iput v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->lastPickIndex:I

    .line 257
    new-instance v1, Lcom/alibaba/ailabs/genie/genieui/utils/pool/TgObjectPool;

    new-instance v2, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$1;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$1;-><init>(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;)V

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3, v0}, Lcom/alibaba/ailabs/genie/genieui/utils/pool/TgObjectPool;-><init>(Lcom/alibaba/ailabs/genie/genieui/utils/pool/ITgPoolObjectFactory;II)V

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mTalkViewPool:Lcom/alibaba/ailabs/genie/genieui/utils/pool/TgObjectPool;

    .line 1027
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v2, "HH:mm"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->df:Ljava/text/SimpleDateFormat;

    .line 296
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->context:Landroid/content/Context;

    .line 297
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/genieui/R$dimen;->genie_assistant_talk_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->talkHeight:I

    .line 298
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/genieui/R$dimen;->genie_ui_wakeup_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->wakeupHeight:I

    .line 299
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/genieui/R$dimen;->genie_assistant_talk_text_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->textPadding:I

    .line 300
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/genieui/R$dimen;->genie_assistant_wakeup_text_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->wakeupTextPadding:I

    .line 301
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/genieui/R$dimen;->genie_ui_talk_wakeup_left_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->textWakeupMargin:I

    .line 302
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/genieui/R$dimen;->genie_ui_inside_inside_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->insideTextMargin:I

    .line 303
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->sortedCorpus:Ljava/util/HashMap;

    .line 304
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->corpusShow:Ljava/util/HashMap;

    .line 305
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->corpusClick:Ljava/util/HashMap;

    .line 306
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$2;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$2;-><init>(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mHandler:Landroid/os/Handler;

    const-string/jumbo v0, "window"

    .line 333
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->windowManager:Landroid/view/WindowManager;

    .line 334
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->changeToCommonMode()V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;)Landroid/content/Context;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->showGenieTalk()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$1002(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;Z)Z
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->isShowingInside:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;)Ljava/util/HashMap;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->corpusClick:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;)Ljava/util/List;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mNextShowCorpus:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mNextShowCorpus:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;Z)Z
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->listChanged:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;)Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GetCorpusResponseData;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->lastCorpusResponse:Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GetCorpusResponseData;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GetCorpusResponseData;)Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GetCorpusResponseData;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->lastCorpusResponse:Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GetCorpusResponseData;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;I)I
    .locals 0

    .line 68
    iput p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->lastPickIndex:I

    return p1
.end method

.method static synthetic access$1600(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->sortCorpus()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$1700(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;)Ljava/util/HashMap;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->corpusShow:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;I)I
    .locals 0

    .line 68
    iput p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->commonShowSize:I

    return p1
.end method

.method static synthetic access$1902(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;I)I
    .locals 0

    .line 68
    iput p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->wakeUpShowSize:I

    return p1
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->hideGenieTalk()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$2000(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;)J
    .locals 2

    .line 68
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->updateDuration:J

    return-wide v0
.end method

.method static synthetic access$2002(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;J)J
    .locals 0

    .line 68
    iput-wide p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->updateDuration:J

    return-wide p1
.end method

.method static synthetic access$2100(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;)J
    .locals 2

    .line 68
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->tiredSeconds:J

    return-wide v0
.end method

.method static synthetic access$2102(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;J)J
    .locals 0

    .line 68
    iput-wide p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->tiredSeconds:J

    return-wide p1
.end method

.method static synthetic access$2200(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;)J
    .locals 2

    .line 68
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->displaySeconds:J

    return-wide v0
.end method

.method static synthetic access$2202(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;J)J
    .locals 0

    .line 68
    iput-wide p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->displaySeconds:J

    return-wide p1
.end method

.method static synthetic access$2300(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;)J
    .locals 2

    .line 68
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->displayLagSeconds:J

    return-wide v0
.end method

.method static synthetic access$2302(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;J)J
    .locals 0

    .line 68
    iput-wide p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->displayLagSeconds:J

    return-wide p1
.end method

.method static synthetic access$2402(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->noRequestList:Lcom/alibaba/fastjson/JSONArray;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;)J
    .locals 2

    .line 68
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->delayTime:J

    return-wide v0
.end method

.method static synthetic access$2502(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;J)J
    .locals 0

    .line 68
    iput-wide p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->delayTime:J

    return-wide p1
.end method

.method static synthetic access$2600(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;)Ljava/lang/String;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->insideShowPackage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2602(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->insideShowPackage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;)Ljava/lang/String;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->insideShowActivity:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2702(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->insideShowActivity:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2802(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->tmjlColor:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2902(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->queryColor:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;)Ljava/lang/String;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;)J
    .locals 2

    .line 68
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->disappearDelay:J

    return-wide v0
.end method

.method static synthetic access$3002(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;J)J
    .locals 0

    .line 68
    iput-wide p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->disappearDelay:J

    return-wide p1
.end method

.method static synthetic access$3102(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->startColor:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3202(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->endColor:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;)Lcom/alibaba/fastjson/JSONArray;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->insideCorpus:Lcom/alibaba/fastjson/JSONArray;

    return-object p0
.end method

.method static synthetic access$3302(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->insideCorpus:Lcom/alibaba/fastjson/JSONArray;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;)Ljava/util/Random;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->random:Ljava/util/Random;

    return-object p0
.end method

.method static synthetic access$3502(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->insideStatus:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;)Landroid/os/Handler;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;)Ljava/lang/String;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->pageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->changeToWakeUpMode()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$600(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;)Landroid/view/View;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mGenieInsideAppRootView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$700(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;)Landroid/widget/LinearLayout;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mGenieInsideAppContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$800(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;)Lcom/alibaba/ailabs/genie/genieui/utils/pool/TgObjectPool;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mTalkViewPool:Lcom/alibaba/ailabs/genie/genieui/utils/pool/TgObjectPool;

    return-object p0
.end method

.method static synthetic access$900(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;)Landroid/view/WindowManager;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->windowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method private changeToCommonMode()V
    .locals 4

    .line 751
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mGenieWakeupContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mGenieWakeupRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 756
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mGenieWakeupContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    :goto_0
    if-ltz v0, :cond_1

    .line 757
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mGenieWakeupContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 758
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mTalkViewPool:Lcom/alibaba/ailabs/genie/genieui/utils/pool/TgObjectPool;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mGenieWakeupContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/genieui/utils/pool/TgObjectPool;->returnObject(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 761
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mGenieWakeupRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 762
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mGenieWakeupRootView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 763
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mGenieWakeupRootView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 765
    :cond_2
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mGenieTalkRootView:Landroid/view/View;

    if-nez v0, :cond_3

    .line 766
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->initGenieTalkView()V

    .line 767
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->initTalkParams()V

    .line 769
    :cond_3
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->talkEnable:Z

    if-eqz v0, :cond_5

    .line 770
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 772
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mGenieTalkRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_4

    .line 773
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mGenieTalkRootView:Landroid/view/View;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->talkLayoutPrams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 775
    :cond_4
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mGenieTalkRootView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 776
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->displayLagSeconds:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_5
    return-void
.end method

.method private changeToWakeUpMode()V
    .locals 3

    .line 785
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mGenieTalkRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 786
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->hideGenieTalk()V

    .line 787
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mGenieTalkRootView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 789
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->wakeupTipsEnable:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->needShowBg()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 792
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mGenieWakeupRootView:Landroid/view/View;

    if-nez v0, :cond_2

    .line 794
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->initWakeupView()V

    .line 795
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->initWakeupParams()V

    .line 797
    :cond_2
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 798
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mNextShowCorpus:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 799
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->updateWakeupView(Ljava/util/List;)V

    .line 800
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mGenieWakeupRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_3

    .line 801
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mGenieWakeupRootView:Landroid/view/View;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->wakeupLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 803
    :cond_3
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mGenieWakeupRootView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 804
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieui/widget/BackGroundTaskManager;->getInstance()Lcom/alibaba/ailabs/genie/genieui/widget/BackGroundTaskManager;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$7;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$7;-><init>(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/genieui/widget/BackGroundTaskManager;->run(Ljava/lang/Runnable;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 4

    .line 385
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mTalkViewPool:Lcom/alibaba/ailabs/genie/genieui/utils/pool/TgObjectPool;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/genieui/utils/pool/TgObjectPool;->borrowObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x1

    .line 386
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 388
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/16 v3, 0x18

    invoke-direct {v2, v1, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "#ACB7CE"

    .line 389
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const/16 v1, 0x11

    .line 390
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 391
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/16 v1, 0xc

    const/4 v2, 0x0

    .line 392
    invoke-virtual {v0, v2, v1, v2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 393
    iget v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->textPadding:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 394
    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    return-object v0
.end method

.method private getAllCorpus()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;",
            ">;"
        }
    .end annotation

    const-string v0, "GenieTalkController"

    const-string v1, " getAllCorpus start "

    .line 1030
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1033
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->sortedCorpus:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 1034
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1035
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/alibaba/ailabs/genie/genieui/genietalk/EmptyRule;

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1036
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1038
    :cond_1
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/TimeBallRule;

    if-eqz v4, :cond_0

    .line 1039
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/TimeBallRule;

    .line 1040
    invoke-direct {p0, v4}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->isInTimeZone(Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/TimeBallRule;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1041
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1045
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " getAllCorpus end return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private hideGenieTalk()V
    .locals 5

    const-string v0, "GenieTalkController"

    const-string v1, " hideGenieTalk start "

    .line 193
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 195
    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->talkEnable:Z

    if-eqz v1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    iget-wide v3, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->displayLagSeconds:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 199
    :cond_0
    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->showInside:Z

    if-eqz v1, :cond_1

    .line 200
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    iget-wide v3, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->disappearDelay:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 202
    :cond_1
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->genieTalkContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    :goto_0
    if-ltz v1, :cond_3

    .line 203
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->genieTalkContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 204
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mTalkViewPool:Lcom/alibaba/ailabs/genie/genieui/utils/pool/TgObjectPool;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->genieTalkContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Lcom/alibaba/ailabs/genie/genieui/utils/pool/TgObjectPool;->returnObject(Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 207
    iput v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->windowWidth:I

    .line 208
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->talkLayoutPrams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->windowWidth:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 209
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mGenieTalkRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 210
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->windowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mGenieTalkRootView:Landroid/view/View;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->talkLayoutPrams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    const-string v1, " hideGenieTalk end "

    .line 212
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private initGenieTalkView()V
    .locals 3

    .line 446
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->context:Landroid/content/Context;

    sget v1, Lcom/alibaba/ailabs/genie/genieui/R$layout;->layout_genie_talk:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mGenieTalkRootView:Landroid/view/View;

    .line 447
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mGenieTalkRootView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/genieui/R$id;->genie_talk_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->genieTalkContainer:Landroid/widget/LinearLayout;

    .line 448
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->context:Landroid/content/Context;

    sget v1, Lcom/alibaba/ailabs/genie/genieui/R$anim;->genie_ui_talk_scale:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const-wide/16 v1, 0x64

    .line 449
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 450
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 451
    new-instance v1, Landroid/view/animation/LayoutAnimationController;

    invoke-direct {v1, v0}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;)V

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->layoutAnimation:Landroid/view/animation/LayoutAnimationController;

    .line 452
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->layoutAnimation:Landroid/view/animation/LayoutAnimationController;

    const v1, 0x3e23d70a    # 0.16f

    invoke-virtual {v0, v1}, Landroid/view/animation/LayoutAnimationController;->setDelay(F)V

    .line 453
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->layoutAnimation:Landroid/view/animation/LayoutAnimationController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/LayoutAnimationController;->setOrder(I)V

    return-void
.end method

.method private initInsideAppView()V
    .locals 3

    .line 549
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->context:Landroid/content/Context;

    sget v1, Lcom/alibaba/ailabs/genie/genieui/R$layout;->layout_genie_inside_app:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mGenieInsideAppRootView:Landroid/view/View;

    .line 550
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mGenieInsideAppRootView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/genieui/R$id;->genie_inside_app_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mGenieInsideAppContainer:Landroid/widget/LinearLayout;

    .line 552
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mGenieInsideAppRootView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/genieui/R$id;->layout_genie_inside_corpus:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mGenieInsideAppLayout:Landroid/widget/LinearLayout;

    .line 553
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mGenieInsideAppRootView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/genieui/R$id;->genie_tmjl_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mGenieInsideTMJLTextView:Landroid/widget/TextView;

    .line 554
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mGenieInsideAppRootView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/genieui/R$id;->genie_tmjl_text2:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mGenieInsideTMJLTextView2:Landroid/widget/TextView;

    .line 555
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->updateInsideView()V

    return-void
.end method

.method private initInsideParams()V
    .locals 3

    .line 559
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/genieui/R$dimen;->genie_ui_inside_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 560
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/genieui/R$dimen;->genie_ui_inside_bottom_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 561
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->windowManager:Landroid/view/WindowManager;

    if-nez v2, :cond_0

    const-string v0, "GenieTalkController"

    const-string v1, "initWindow: window manager is null"

    .line 562
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 565
    :cond_0
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->insideLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    const/16 v1, 0x7d3

    .line 566
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x28

    .line 567
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v1, -0x2

    .line 568
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 569
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v0, -0x3

    .line 570
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    const v0, 0x800053

    .line 571
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const-string v0, "genieui-inside"

    .line 572
    invoke-virtual {v2, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initTalkParams()V
    .locals 4

    .line 525
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/genieui/R$dimen;->genie_assistant_talk_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 526
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/genieui/R$dimen;->genie_assistant_talk_bottom_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 527
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alibaba/ailabs/genie/genieui/R$dimen;->genie_assistant_talk_left_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 528
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->windowManager:Landroid/view/WindowManager;

    if-nez v3, :cond_0

    const-string v0, "GenieTalkController"

    const-string v1, "initWindow: window manager is null"

    .line 529
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 532
    :cond_0
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->talkLayoutPrams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 533
    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    const/16 v1, 0x7d3

    .line 534
    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x28

    .line 535
    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v1, -0x2

    .line 536
    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 537
    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v0, -0x3

    .line 538
    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->format:I

    const v0, 0x800053

    .line 539
    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const-string v0, "genieui-talk"

    .line 540
    invoke-virtual {v3, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initWakeupParams()V
    .locals 3

    .line 513
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->wakeupLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/genieui/R$dimen;->genie_assistant_talk_tips_bottom_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 514
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->wakeupLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/genieui/R$dimen;->genie_ui_talk_wakeup_left_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 515
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->wakeupLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x28

    .line 516
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v1, -0x2

    .line 517
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 518
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x3

    .line 519
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const v1, 0x800053

    .line 520
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const-string v1, "genieui-wakeup_tips"

    .line 521
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initWakeupView()V
    .locals 3

    .line 544
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->context:Landroid/content/Context;

    sget v1, Lcom/alibaba/ailabs/genie/genieui/R$layout;->layout_genie_wakeup_corpus_new:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mGenieWakeupRootView:Landroid/view/View;

    .line 545
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mGenieWakeupRootView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/genieui/R$id;->genie_wakeup_container_new:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mGenieWakeupContainer:Landroid/widget/LinearLayout;

    return-void
.end method

.method private isInTimeZone(Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/TimeBallRule;)Z
    .locals 4

    const/4 v0, 0x0

    .line 1054
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->df:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->df:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1055
    :try_start_1
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->df:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/TimeBallRule;->getStartTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1056
    :try_start_2
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->df:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/TimeBallRule;->getEndTime()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v2, v0

    goto :goto_0

    :catch_2
    move-exception p1

    move-object v1, v0

    move-object v2, v1

    .line 1058
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    const/4 p1, 0x1

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    if-nez v0, :cond_0

    goto :goto_2

    .line 1063
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 1064
    invoke-virtual {v3, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1066
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1067
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1069
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 1070
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1071
    invoke-virtual {v3, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    const/4 p1, 0x0

    :cond_2
    :goto_2
    return p1
.end method

.method public static setShapeColor([I[F)Landroid/graphics/drawable/GradientDrawable;
    .locals 2

    .line 1189
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x0

    .line 1190
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 1191
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 1192
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 1193
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    return-object v0
.end method

.method private showGenieTalk()V
    .locals 6

    .line 224
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->talkEnable:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "GenieTalkController"

    if-nez v0, :cond_0

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!talkEnable "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->talkEnable:Z

    xor-int/2addr v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v0, "common"

    .line 229
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->getShowCorpus(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 230
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 232
    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->showInside:Z

    if-eqz v1, :cond_1

    .line 233
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 235
    :cond_1
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mHandler:Landroid/os/Handler;

    iget-wide v4, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->displaySeconds:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 236
    invoke-static {v0}, Lcom/alibaba/ailabs/tg/utils/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, " showList is null "

    .line 237
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 240
    :cond_2
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mGenieTalkRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 241
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->windowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mGenieTalkRootView:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_3
    const/4 v1, 0x0

    .line 243
    iput v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->windowWidth:I

    .line 244
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "talkList.size: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 246
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->genieTalkContainer:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;

    invoke-virtual {p0, v3, v1}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->createTalkTextView(Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;I)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 248
    :cond_4
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->talkLayoutPrams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->windowWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 249
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->genieTalkContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->layoutAnimation:Landroid/view/animation/LayoutAnimationController;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 250
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mGenieTalkRootView:Landroid/view/View;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->talkLayoutPrams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->onGenieTalkShowListener:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$OnGenieTalkShowListener;

    if-eqz v0, :cond_5

    .line 252
    invoke-interface {v0}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$OnGenieTalkShowListener;->onShow()V

    :cond_5
    return-void
.end method

.method private sortCorpus()V
    .locals 4

    .line 1002
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->lastCorpusResponse:Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GetCorpusResponseData;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GetCorpusResponseData;->getCorpusList()Ljava/util/List;

    move-result-object v0

    .line 1003
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->sortedCorpus:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1004
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;

    if-eqz v1, :cond_0

    .line 1006
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;->getRules()Ljava/util/List;

    move-result-object v2

    .line 1007
    invoke-static {v2}, Lcom/alibaba/ailabs/tg/utils/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1008
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->allRules:Lcom/alibaba/ailabs/genie/genieui/genietalk/EmptyRule;

    invoke-virtual {p0, v2, v1}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->addToList(Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/BaseBallRule;Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;)V

    goto :goto_0

    .line 1011
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/BaseBallRule;

    .line 1012
    invoke-virtual {p0, v3, v1}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->addToList(Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/BaseBallRule;Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private updateInsideView()V
    .locals 3

    .line 399
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->tmjlColor:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 400
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mGenieInsideTMJLTextView:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 401
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mGenieInsideTMJLTextView2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->tmjlColor:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->startColor:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->endColor:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    .line 404
    new-array v1, v1, [I

    const/4 v2, 0x0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    aput v0, v1, v2

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->endColor:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v0

    .line 405
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mGenieInsideAppLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->setShapeColor([I[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x0
        0x0
    .end array-data
.end method

.method private updateWakeupView(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 815
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 816
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mGenieWakeupContainer:Landroid/widget/LinearLayout;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;

    invoke-virtual {p0, v2, v0}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->createWakeupTextView(Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;I)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 818
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mGenieWakeupContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method


# virtual methods
.method public addStatisticCount(Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 576
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 578
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 580
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 583
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addStatisticCount(Lcom/alibaba/fastjson/JSONObject;Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/JSONObject;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "mock_q"

    .line 587
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 589
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 591
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 594
    :goto_0
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addToList(Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/BaseBallRule;Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;)V
    .locals 1

    .line 1019
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->sortedCorpus:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    .line 1021
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1023
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1024
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->sortedCorpus:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->allRules:Lcom/alibaba/ailabs/genie/genieui/genietalk/EmptyRule;

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public changeStatus(Z)V
    .locals 4

    .line 733
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->isWakeupMode:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 736
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GenieTalkController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->isWakeupMode:Z

    .line 738
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz p1, :cond_1

    .line 741
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 743
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->changeToCommonMode()V

    :goto_0
    return-void
.end method

.method public clean()V
    .locals 2

    .line 1075
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->lastCorpusResponse:Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GetCorpusResponseData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GetCorpusResponseData;->getCorpusList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1076
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->lastCorpusResponse:Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GetCorpusResponseData;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GetCorpusResponseData;->getCorpusList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1078
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->sortedCorpus:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 1079
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1081
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mNextShowCorpus:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 1082
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1083
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNextShowCorpus.clear()  size  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mNextShowCorpus:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GenieTalkController"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public createInsideTextView(Lcom/alibaba/fastjson/JSONObject;I)Landroid/widget/TextView;
    .locals 4

    .line 688
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mTalkViewPool:Lcom/alibaba/ailabs/genie/genieui/utils/pool/TgObjectPool;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/genieui/utils/pool/TgObjectPool;->borrowObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x1

    .line 689
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 690
    new-instance v1, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$6;-><init>(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;Lcom/alibaba/fastjson/JSONObject;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 709
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 710
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->queryColor:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 711
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    const/16 v1, 0x11

    .line 713
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v1, 0x7

    .line 714
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxEms(I)V

    .line 715
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 716
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    .line 717
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->context:Landroid/content/Context;

    sget v2, Lcom/alibaba/ailabs/genie/genieui/R$drawable;->text_water_selector:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    const-string v1, "mock_q"

    .line 719
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 720
    iget v2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->insideTextMargin:I

    const/16 v3, 0xc

    invoke-virtual {v0, v2, v3, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v2, 0x0

    .line 721
    iget v3, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->textPadding:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 722
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 723
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "log_info"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "position"

    invoke-virtual {v2, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "Genie_app"

    const-string v1, "Genie_ball"

    const-string v3, "a1z3lt.b90280894"

    .line 725
    invoke-static {p2, v1, v3, v2}, Lcom/alibaba/ailabs/genie/genieui/utils/CommonUtil;->exposureUT(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 727
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->corpusShow:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->addStatisticCount(Lcom/alibaba/fastjson/JSONObject;Ljava/util/HashMap;)V

    .line 728
    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    return-object v0
.end method

.method public createTalkTextView(Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;I)Landroid/widget/TextView;
    .locals 4

    .line 645
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mTalkViewPool:Lcom/alibaba/ailabs/genie/genieui/utils/pool/TgObjectPool;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/genieui/utils/pool/TgObjectPool;->borrowObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x1

    .line 646
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 647
    new-instance v1, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$5;-><init>(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 668
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget v2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->talkHeight:I

    const/4 v3, -0x2

    invoke-direct {v1, v3, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 669
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/genieui/R$color;->ui_2B3852:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v1, 0x11

    .line 670
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 671
    sget v1, Lcom/alibaba/ailabs/genie/genieui/R$drawable;->genie_ui_talk_click:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 672
    iget v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->textPadding:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 673
    iget v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->textPadding:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v1, 0x14

    .line 674
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxEms(I)V

    .line 675
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 676
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 677
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 678
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;->getLogInfo()Ljava/lang/String;

    move-result-object v2

    const-string v3, "log_info"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "position"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "Genie_talk"

    const-string v2, "Genie_ball"

    const-string v3, "a1z3lt.b90280894"

    .line 680
    invoke-static {p2, v2, v3, v1}, Lcom/alibaba/ailabs/genie/genieui/utils/CommonUtil;->exposureUT(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 682
    iget p2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->windowWidth:I

    int-to-float p2, p2

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    iget v2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->textPadding:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    add-float/2addr p2, v1

    float-to-int p2, p2

    iput p2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->windowWidth:I

    .line 683
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->corpusShow:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->addStatisticCount(Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;Ljava/util/HashMap;)V

    return-object v0
.end method

.method public createWakeupTextView(Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;I)Landroid/widget/TextView;
    .locals 4

    .line 598
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mTalkViewPool:Lcom/alibaba/ailabs/genie/genieui/utils/pool/TgObjectPool;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/genieui/utils/pool/TgObjectPool;->borrowObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x1

    .line 599
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 600
    new-instance v1, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$4;-><init>(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 626
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 627
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;->getLogInfo()Ljava/lang/String;

    move-result-object v2

    const-string v3, "log_info"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "position"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "Genie_recommend"

    const-string v2, "Genie_ball"

    const-string v3, "a1z3lt.b90280894"

    .line 629
    invoke-static {p2, v2, v3, v1}, Lcom/alibaba/ailabs/genie/genieui/utils/CommonUtil;->exposureUT(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 631
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p2, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 632
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/alibaba/ailabs/genie/genieui/R$color;->ui_4A5A78:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 p2, 0x11

    .line 633
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setGravity(I)V

    const/16 p2, 0xa

    .line 634
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setMaxEms(I)V

    .line 635
    sget-object p2, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 636
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 637
    iget p2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->textWakeupMargin:I

    const/16 v1, 0xc

    invoke-virtual {v0, p2, v1, p2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 638
    iget p2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->wakeupTextPadding:I

    int-to-float p2, p2

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 639
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->corpusShow:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->addStatisticCount(Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;Ljava/util/HashMap;)V

    .line 640
    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    return-object v0
.end method

.method public getShowCorpus(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;",
            ">;"
        }
    .end annotation

    .line 1094
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " getShowCorpus start type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GenieTalkController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->getAllCorpus()Ljava/util/List;

    move-result-object v0

    const-string/jumbo v2, "wakeup"

    .line 1097
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "common"

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    .line 1098
    iget v3, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->wakeUpShowSize:I

    goto :goto_0

    .line 1099
    :cond_0
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1100
    iget v3, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->commonShowSize:I

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 1102
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " getShowCorpus size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " allCorpus.size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v6, v3, :cond_2

    .line 1105
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " return allCorpus allCorpus.size() =  "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " size = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 1108
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1110
    iget v7, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->lastPickIndex:I

    :goto_1
    if-ge v5, v3, :cond_6

    .line 1112
    iget v8, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->lastPickIndex:I

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;

    .line 1113
    iget v9, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->lastPickIndex:I

    add-int/lit8 v9, v9, 0x1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    rem-int/2addr v9, v10

    iput v9, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->lastPickIndex:I

    .line 1114
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " lastPickIndex = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->lastPickIndex:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " recordIndex = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    iget v9, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->lastPickIndex:I

    if-ne v9, v7, :cond_3

    const-string p1, " lastPickIndex == recordIndex break "

    .line 1117
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1120
    :cond_3
    invoke-virtual {v8}, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;->getActivityName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 1121
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v8}, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;->getActivityName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "WakeUp"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    :goto_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 1125
    :cond_4
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v8}, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;->getActivityName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "AdultHomeActivity"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    goto :goto_2

    .line 1130
    :cond_5
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1132
    :cond_6
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " getShowCorpus end return "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6
.end method

.method public getTime()J
    .locals 2

    .line 1181
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->delayTime:J

    return-wide v0
.end method

.method public hideGenieInside()V
    .locals 4

    const-string v0, "GenieTalkController"

    const-string v1, " hideGenieInside start "

    .line 410
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mGenieInsideAppRootView:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->windowManager:Landroid/view/WindowManager;

    if-nez v1, :cond_0

    goto :goto_0

    .line 416
    :cond_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 417
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mGenieInsideAppRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 418
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mGenieInsideAppRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$3;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$3;-><init>(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;)V

    .line 419
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :cond_1
    const-string v1, " hideGenieInside end "

    .line 441
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    :goto_0
    const-string v1, " mGenieInsideAppRootView is null "

    .line 412
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public insertCorpus(Ljava/lang/String;Z)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public isInsideShowing()Z
    .locals 1

    .line 220
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->isShowingInside:Z

    return v0
.end method

.method public needShowBg()Z
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mNextShowCorpus:Ljava/util/List;

    invoke-static {v0}, Lcom/alibaba/ailabs/tg/utils/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .line 1141
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mGenieTalkRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1142
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mGenieTalkRootView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 1144
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->wakeUpTipRootView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1145
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->wakeUpTipRootView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 1147
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->counter:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_2

    .line 1148
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_2
    return-void
.end method

.method public resetGenieTalk()V
    .locals 7

    .line 1159
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->hideGenieTalk()V

    .line 1160
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1161
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->counter:Landroid/os/CountDownTimer;

    if-nez v0, :cond_0

    .line 1162
    new-instance v0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$9;

    iget-wide v3, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->tiredSeconds:J

    const-wide/16 v5, 0x3e8

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$9;-><init>(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;JJ)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->counter:Landroid/os/CountDownTimer;

    .line 1175
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->counter:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1176
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->counter:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    const-string v0, "GenieTalkController"

    const-string/jumbo v1, "\u89e6\u5c4f\u540e\u5f00\u59cb\u8ba1\u65f6"

    .line 1177
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public resetHasBeenShowed(Z)V
    .locals 0

    .line 853
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->hasBeenShowed:Z

    return-void
.end method

.method public setGenieTalkEnable(Z)V
    .locals 4

    .line 827
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->talkEnable:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 830
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 831
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->talkEnable:Z

    if-eqz p1, :cond_1

    .line 833
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mGenieTalkRootView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 834
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->displayLagSeconds:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 836
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->hideGenieTalk()V

    .line 837
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mGenieTalkRootView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 839
    :goto_0
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->showInside:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    .line 840
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    return-void
.end method

.method public setOnGenieTalkShowListener(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$OnGenieTalkShowListener;)V
    .locals 0

    .line 1137
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->onGenieTalkShowListener:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$OnGenieTalkShowListener;

    return-void
.end method

.method public setShowInside(Z)V
    .locals 0

    .line 845
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->showInside:Z

    if-nez p1, :cond_0

    :cond_0
    return-void
.end method

.method public setWakeupTipsEnable(Z)V
    .locals 0

    .line 1153
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->wakeupTipsEnable:Z

    return-void
.end method

.method public showGenieInside()V
    .locals 5

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showGenieInside(),insideStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->insideStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",showInside:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->showInside:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",hasBeenShowed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->hasBeenShowed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GenieTalkController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->insideStatus:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->showInside:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->hasBeenShowed:Z

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 344
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    iget-wide v3, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->disappearDelay:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 345
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->insideCorpus:Lcom/alibaba/fastjson/JSONArray;

    invoke-static {v0}, Lcom/alibaba/ailabs/tg/utils/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 348
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mGenieInsideAppRootView:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 349
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->windowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mGenieInsideAppRootView:Landroid/view/View;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 350
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mGenieInsideAppContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    :goto_0
    if-ltz v0, :cond_3

    .line 351
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mGenieInsideAppContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 352
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mTalkViewPool:Lcom/alibaba/ailabs/genie/genieui/utils/pool/TgObjectPool;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mGenieInsideAppContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Lcom/alibaba/ailabs/genie/genieui/utils/pool/TgObjectPool;->returnObject(Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 357
    :cond_3
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->insideCorpus:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    iget v2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->showInsideSize:I

    if-le v0, v2, :cond_4

    goto :goto_1

    .line 360
    :cond_4
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->insideCorpus:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    .line 362
    :goto_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mGenieInsideAppRootView:Landroid/view/View;

    if-nez v0, :cond_5

    .line 363
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->initInsideAppView()V

    .line 364
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->initInsideParams()V

    .line 366
    :cond_5
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->updateInsideView()V

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_7

    if-eqz v0, :cond_6

    .line 371
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mGenieInsideAppContainer:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->createView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 373
    :cond_6
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mGenieInsideAppContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->insideCorpus:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    invoke-virtual {p0, v4, v0}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->createInsideTextView(Lcom/alibaba/fastjson/JSONObject;I)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 375
    :cond_7
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->talkLayoutPrams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->windowWidth:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 376
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mGenieInsideAppRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_8

    .line 377
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->windowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mGenieInsideAppRootView:Landroid/view/View;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->insideLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 378
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mGenieInsideAppRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x1

    .line 379
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->isShowingInside:Z

    .line 380
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->hasBeenShowed:Z

    :cond_8
    :goto_3
    return-void
.end method

.method public updateCorpus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 857
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateCorpus: packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GenieTalkController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->packageName:Ljava/lang/String;

    .line 859
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->pageName:Ljava/lang/String;

    .line 861
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->noRequestList:Lcom/alibaba/fastjson/JSONArray;

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 862
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "noRequestList: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->noRequestList:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieui/UIDataCenter;->getInstance()Lcom/alibaba/ailabs/genie/genieui/UIDataCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/genieui/UIDataCenter;->getCurrentPage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "[/]"

    .line 864
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 865
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pkgAndActName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_5

    .line 866
    array-length v0, v3

    const/4 v4, 0x2

    if-ne v0, v4, :cond_5

    const/4 v0, 0x0

    .line 867
    :goto_0
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->noRequestList:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_5

    .line 869
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->noRequestList:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    if-nez v4, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v5, "packageName"

    .line 873
    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "pageName"

    .line 874
    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v4

    .line 875
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    aget-object v6, v3, v2

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz v4, :cond_3

    .line 877
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v6

    if-nez v6, :cond_1

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    .line 882
    :goto_1
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 883
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "aName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    .line 884
    aget-object v6, v3, v6

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 885
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "\u547d\u4e2d\u8fc7\u6ee4\u89c4\u5219\uff0caName\uff1a "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->clean()V

    return-void

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 878
    :cond_3
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "\u547d\u4e2d\u8fc7\u6ee4\u89c4\u5219\uff0cpName\uff1a "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->clean()V

    return-void

    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 895
    :cond_5
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 896
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->corpusShow:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->corpusClick:Ljava/util/HashMap;

    new-instance v2, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8;

    invoke-direct {v2, p0, p1, p2}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8;-><init>(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2, v0, v1, v2}, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/NetApi;->getCorpus(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)V

    return-void
.end method
