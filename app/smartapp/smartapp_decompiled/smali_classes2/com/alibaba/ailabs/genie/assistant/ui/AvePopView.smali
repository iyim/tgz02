.class public Lcom/alibaba/ailabs/genie/assistant/ui/AvePopView;
.super Landroid/widget/FrameLayout;
.source "AvePopView.java"


# static fields
.field private static final POP_LOOP_PATH:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final POP_SHOW_PATH:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private frameUtil:Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;

.field private mPopView:Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView;

.field private mTipsContainer:Landroid/view/View;

.field private tvCorpus:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 22

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "ave_pop_show/paopao_000.png"

    const-string v2, "ave_pop_show/paopao_001.png"

    const-string v3, "ave_pop_show/paopao_002.png"

    const-string v4, "ave_pop_show/paopao_003.png"

    const-string v5, "ave_pop_show/paopao_004.png"

    const-string v6, "ave_pop_show/paopao_005.png"

    const-string v7, "ave_pop_show/paopao_006.png"

    const-string v8, "ave_pop_show/paopao_007.png"

    const-string v9, "ave_pop_show/paopao_008.png"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/assistant/ui/AvePopView;->POP_SHOW_PATH:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "ave_pop_loop/paopao_loop_000.png"

    const-string v2, "ave_pop_loop/paopao_loop_001.png"

    const-string v3, "ave_pop_loop/paopao_loop_002.png"

    const-string v4, "ave_pop_loop/paopao_loop_003.png"

    const-string v5, "ave_pop_loop/paopao_loop_004.png"

    const-string v6, "ave_pop_loop/paopao_loop_005.png"

    const-string v7, "ave_pop_loop/paopao_loop_006.png"

    const-string v8, "ave_pop_loop/paopao_loop_007.png"

    const-string v9, "ave_pop_loop/paopao_loop_008.png"

    const-string v10, "ave_pop_loop/paopao_loop_009.png"

    const-string v11, "ave_pop_loop/paopao_loop_010.png"

    const-string v12, "ave_pop_loop/paopao_loop_011.png"

    const-string v13, "ave_pop_loop/paopao_loop_012.png"

    const-string v14, "ave_pop_loop/paopao_loop_013.png"

    const-string v15, "ave_pop_loop/paopao_loop_014.png"

    const-string v16, "ave_pop_loop/paopao_loop_015.png"

    const-string v17, "ave_pop_loop/paopao_loop_016.png"

    const-string v18, "ave_pop_loop/paopao_loop_017.png"

    const-string v19, "ave_pop_loop/paopao_loop_018.png"

    const-string v20, "ave_pop_loop/paopao_loop_019.png"

    const-string v21, "ave_pop_loop/paopao_loop_020.png"

    filled-new-array/range {v1 .. v21}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/assistant/ui/AvePopView;->POP_LOOP_PATH:Ljava/util/ArrayList;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 63
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 64
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/ui/AvePopView;->init()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/ui/AvePopView;->init()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/assistant/ui/AvePopView;)Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/AvePopView;->mPopView:Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView;

    return-object p0
.end method

.method static synthetic access$100()Ljava/util/ArrayList;
    .locals 1

    .line 20
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/ui/AvePopView;->POP_LOOP_PATH:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/assistant/ui/AvePopView;)Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/AvePopView;->frameUtil:Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/assistant/ui/AvePopView;)Landroid/view/View;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/AvePopView;->mTipsContainer:Landroid/view/View;

    return-object p0
.end method

.method private init()V
    .locals 4

    .line 73
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/ui/AvePopView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/agui/adapter/R$layout;->activity_ave_recommend:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 74
    sget v0, Lcom/alibaba/ailabs/genie/agui/adapter/R$id;->pop_background:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/ui/AvePopView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/AvePopView;->mPopView:Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView;

    .line 75
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/AvePopView;->mPopView:Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/ui/AvePopView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/agui/adapter/R$dimen;->genie_assistant_bar_pop_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 76
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/ui/AvePopView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alibaba/ailabs/genie/agui/adapter/R$dimen;->genie_assistant_bar_pop_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 75
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView;->setDefualtWidthAndHeight(II)V

    .line 77
    sget v0, Lcom/alibaba/ailabs/genie/agui/adapter/R$id;->pop_tips_container:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/ui/AvePopView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/AvePopView;->mTipsContainer:Landroid/view/View;

    .line 78
    sget v0, Lcom/alibaba/ailabs/genie/agui/adapter/R$id;->pop_corpus:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/ui/AvePopView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/AvePopView;->tvCorpus:Landroid/widget/TextView;

    .line 79
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/ui/AvePopView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/AvePopView;->frameUtil:Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;

    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/AvePopView;->frameUtil:Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->getLoaderHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 113
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public setCorpus(Ljava/lang/String;)V
    .locals 1

    .line 104
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/AvePopView;->tvCorpus:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public show()V
    .locals 5

    .line 83
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/AvePopView;->mTipsContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/AvePopView;->mPopView:Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView;->setVisibility(I)V

    .line 86
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/ui/AvePopView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/assistant/ui/AvePopView$1;-><init>(Lcom/alibaba/ailabs/genie/assistant/ui/AvePopView;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/ailabs/genie/assistant/ui/AvePopView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 93
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/AvePopView;->frameUtil:Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/ui/AvePopView;->mPopView:Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView;

    sget-object v2, Lcom/alibaba/ailabs/genie/assistant/ui/AvePopView;->POP_SHOW_PATH:Ljava/util/ArrayList;

    const/16 v3, 0x2711

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->start(Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView;ILjava/util/ArrayList;Z)V

    .line 94
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/ui/AvePopView$2;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/assistant/ui/AvePopView$2;-><init>(Lcom/alibaba/ailabs/genie/assistant/ui/AvePopView;)V

    const-wide/16 v1, 0x190

    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/ailabs/genie/assistant/ui/AvePopView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
