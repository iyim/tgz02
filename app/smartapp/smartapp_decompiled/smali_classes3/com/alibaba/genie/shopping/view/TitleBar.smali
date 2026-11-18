.class public Lcom/alibaba/genie/shopping/view/TitleBar;
.super Landroid/widget/FrameLayout;
.source "TitleBar.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TitleBar"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/alibaba/genie/shopping/view/TitleBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/genie/shopping/view/TitleBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/view/TitleBar;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/genie/shopping/view/TitleBar;)Landroid/content/Context;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/alibaba/genie/shopping/view/TitleBar;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 3

    .line 41
    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/TitleBar;->mContext:Landroid/content/Context;

    .line 42
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$layout;->layout_navigator:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 43
    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$id;->back:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/alibaba/genie/shopping/view/TitleBar$1;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/genie/shopping/view/TitleBar$1;-><init>(Lcom/alibaba/genie/shopping/view/TitleBar;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->home:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/alibaba/genie/shopping/view/TitleBar$2;

    invoke-direct {v0, p0}, Lcom/alibaba/genie/shopping/view/TitleBar$2;-><init>(Lcom/alibaba/genie/shopping/view/TitleBar;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
