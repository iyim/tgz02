.class public Lcom/alibaba/ailabs/basedomain/ui/ExitView;
.super Landroid/widget/LinearLayout;
.source "ExitView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ExitView"


# instance fields
.field private mBack:Landroid/widget/ImageView;

.field private mBackEventName:Ljava/lang/String;

.field private mBackListener:Landroid/view/View$OnClickListener;

.field private mBackPageName:Ljava/lang/String;

.field private mBackSpm:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHome:Landroid/widget/ImageView;

.field private mHomeEventName:Ljava/lang/String;

.field private mHomePageName:Ljava/lang/String;

.field private mHomeSpm:Ljava/lang/String;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 41
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/basedomain/ui/ExitView;->setClipChildren(Z)V

    .line 42
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/basedomain/ui/ExitView;->setClipToPadding(Z)V

    .line 44
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/ExitView;->mContext:Landroid/content/Context;

    .line 45
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v1, Lcom/alibaba/ailabs/basedomain/R$layout;->base_domain_layout_exit:I

    const/4 v2, 0x1

    invoke-virtual {p1, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 46
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/ExitView;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/alibaba/ailabs/basedomain/R$styleable;->ExitView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 48
    sget p2, Lcom/alibaba/ailabs/basedomain/R$styleable;->ExitView_backVisible:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 49
    sget v1, Lcom/alibaba/ailabs/basedomain/R$styleable;->ExitView_homeVisible:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 50
    sget v2, Lcom/alibaba/ailabs/basedomain/R$styleable;->ExitView_titleVisible:I

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    .line 51
    sget v0, Lcom/alibaba/ailabs/basedomain/R$id;->base_domain_iv_back:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/basedomain/ui/ExitView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/ExitView;->mBack:Landroid/widget/ImageView;

    const/16 v0, 0x8

    if-eqz p2, :cond_0

    .line 53
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/ExitView;->mBack:Landroid/widget/ImageView;

    new-instance v2, Lcom/alibaba/ailabs/basedomain/ui/ExitView$1;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/basedomain/ui/ExitView$1;-><init>(Lcom/alibaba/ailabs/basedomain/ui/ExitView;)V

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 66
    :cond_0
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/ExitView;->mBack:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 68
    :goto_0
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->base_domain_iv_home:I

    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/basedomain/ui/ExitView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/ExitView;->mHome:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 70
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/ExitView;->mHome:Landroid/widget/ImageView;

    new-instance v1, Lcom/alibaba/ailabs/basedomain/ui/ExitView$2;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/basedomain/ui/ExitView$2;-><init>(Lcom/alibaba/ailabs/basedomain/ui/ExitView;)V

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 78
    :cond_1
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/ExitView;->mHome:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 80
    :goto_1
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->base_domain_exit_layout_title:I

    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/basedomain/ui/ExitView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/ExitView;->mTitle:Landroid/widget/TextView;

    if-nez p1, :cond_2

    .line 82
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/ExitView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/basedomain/ui/ExitView;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/ui/ExitView;->mBackListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/basedomain/ui/ExitView;)Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/ui/ExitView;->mBackEventName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/basedomain/ui/ExitView;)Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/ui/ExitView;->mBackSpm:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/basedomain/ui/ExitView;)Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/ui/ExitView;->mBackPageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/basedomain/ui/ExitView;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/ui/ExitView;->goToHome()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private goToHome()V
    .locals 5

    .line 110
    new-instance v0, Landroid/content/Intent;

    const/4 v1, 0x0

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "android.intent.category.HOME"

    .line 111
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/ui/ExitView;->mHomeEventName:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/ailabs/basedomain/ui/ExitView;->mHomeSpm:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/ailabs/basedomain/ui/ExitView;->mHomePageName:Ljava/lang/String;

    invoke-static {v2, v3, v4, v1}, Lcom/alibaba/ailabs/basedomain/common/CommonUtil;->utEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 113
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/ExitView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public setBackListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/ExitView;->mBackListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setBackUtArgs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/ExitView;->mBackPageName:Ljava/lang/String;

    .line 94
    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/ExitView;->mBackEventName:Ljava/lang/String;

    .line 95
    iput-object p3, p0, Lcom/alibaba/ailabs/basedomain/ui/ExitView;->mBackSpm:Ljava/lang/String;

    return-void
.end method

.method public setHomeUtArgs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/ExitView;->mHomePageName:Ljava/lang/String;

    .line 88
    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/ExitView;->mHomeEventName:Ljava/lang/String;

    .line 89
    iput-object p3, p0, Lcom/alibaba/ailabs/basedomain/ui/ExitView;->mHomeSpm:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/ExitView;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/ExitView;->mTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/ExitView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
