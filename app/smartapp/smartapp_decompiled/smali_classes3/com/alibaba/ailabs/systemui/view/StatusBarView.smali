.class public Lcom/alibaba/ailabs/systemui/view/StatusBarView;
.super Landroid/widget/RelativeLayout;
.source "StatusBarView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StatusBarView"


# instance fields
.field private clickCount:I

.field private mAppChildIconContainer:Landroid/view/ViewGroup;

.field private mAppIconContainer:Landroid/view/ViewGroup;

.field private mBack:Landroid/view/View;

.field private mBackBgExt:Landroid/view/View;

.field private mBackExt:Landroid/view/View;

.field private mBackExtChild:Landroid/view/View;

.field private mChildBack:Landroid/view/View;

.field private mChildHome:Landroid/view/View;

.field private mChildMode:Z

.field private mExpended:Z

.field private mHome:Landroid/view/View;

.field private mTitle:Landroid/widget/TextView;

.field private preClickTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 67
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->mExpended:Z

    .line 68
    iput-boolean p2, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->mChildMode:Z

    .line 69
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/alibaba/ailabs/systemui/R$layout;->layout_navigator:I

    invoke-virtual {p2, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 70
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->initView(Landroid/content/Context;)V

    .line 71
    invoke-direct {p0}, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->update()V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/systemui/view/StatusBarView;)J
    .locals 2

    .line 40
    iget-wide v0, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->preClickTime:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/alibaba/ailabs/systemui/view/StatusBarView;J)J
    .locals 0

    .line 40
    iput-wide p1, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->preClickTime:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/systemui/view/StatusBarView;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->clickCount:I

    return p0
.end method

.method static synthetic access$102(Lcom/alibaba/ailabs/systemui/view/StatusBarView;I)I
    .locals 0

    .line 40
    iput p1, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->clickCount:I

    return p1
.end method

.method static synthetic access$108(Lcom/alibaba/ailabs/systemui/view/StatusBarView;)I
    .locals 2

    .line 40
    iget v0, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->clickCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->clickCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/systemui/view/StatusBarView;)Landroid/view/View;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->mBack:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/systemui/view/StatusBarView;)Landroid/view/View;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->mChildBack:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/systemui/view/StatusBarView;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->mChildMode:Z

    return p0
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/systemui/view/StatusBarView;)Landroid/view/View;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->mBackExtChild:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$600(Lcom/alibaba/ailabs/systemui/view/StatusBarView;)Landroid/view/View;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->mBackBgExt:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$700(Lcom/alibaba/ailabs/systemui/view/StatusBarView;)Landroid/view/ViewGroup;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->mAppIconContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private closeExpended()V
    .locals 4

    .line 388
    iget-object v0, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->mAppIconContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 391
    new-instance v0, Lcom/alibaba/ailabs/systemui/view/StatusBarView$4;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/systemui/view/StatusBarView$4;-><init>(Lcom/alibaba/ailabs/systemui/view/StatusBarView;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 401
    iget-object v0, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->mAppIconContainer:Landroid/view/ViewGroup;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->showAnimAlpha(Landroid/view/View;FFLandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private expend()V
    .locals 4

    .line 375
    iget-object v0, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->mAppIconContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 382
    iget-object v0, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->mAppIconContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->showAnimAlpha(Landroid/view/View;FFLandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private initClickListener()V
    .locals 2

    .line 159
    new-instance v0, Lcom/alibaba/ailabs/systemui/view/StatusBarView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/systemui/view/StatusBarView$1;-><init>(Lcom/alibaba/ailabs/systemui/view/StatusBarView;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    new-instance v0, Lcom/alibaba/ailabs/systemui/view/StatusBarView$2;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/systemui/view/StatusBarView$2;-><init>(Lcom/alibaba/ailabs/systemui/view/StatusBarView;)V

    .line 183
    iget-object v1, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->mBack:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v1, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->mChildHome:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v1, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->mHome:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v1, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->mChildBack:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    sget v1, Lcom/alibaba/ailabs/systemui/R$id;->film:I

    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    sget v1, Lcom/alibaba/ailabs/systemui/R$id;->music:I

    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    sget v1, Lcom/alibaba/ailabs/systemui/R$id;->voice:I

    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    sget v1, Lcom/alibaba/ailabs/systemui/R$id;->shopping:I

    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    sget v1, Lcom/alibaba/ailabs/systemui/R$id;->video:I

    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    sget v1, Lcom/alibaba/ailabs/systemui/R$id;->child_cartoon:I

    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    sget v1, Lcom/alibaba/ailabs/systemui/R$id;->child_music:I

    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    sget v1, Lcom/alibaba/ailabs/systemui/R$id;->child_listen:I

    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    sget v1, Lcom/alibaba/ailabs/systemui/R$id;->child_like_learn:I

    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    sget v1, Lcom/alibaba/ailabs/systemui/R$id;->child_call:I

    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    sget v1, Lcom/alibaba/ailabs/systemui/R$id;->child_star:I

    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    sget v1, Lcom/alibaba/ailabs/systemui/R$id;->iot:I

    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object v0, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->mBackExt:Landroid/view/View;

    new-instance v1, Lcom/alibaba/ailabs/systemui/view/StatusBarView$3;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/systemui/view/StatusBarView$3;-><init>(Lcom/alibaba/ailabs/systemui/view/StatusBarView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 1

    .line 77
    sget p1, Lcom/alibaba/ailabs/systemui/R$id;->appNavContainer:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->mAppIconContainer:Landroid/view/ViewGroup;

    .line 78
    sget p1, Lcom/alibaba/ailabs/systemui/R$id;->back:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->mBack:Landroid/view/View;

    .line 79
    sget p1, Lcom/alibaba/ailabs/systemui/R$id;->home:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->mHome:Landroid/view/View;

    .line 80
    sget p1, Lcom/alibaba/ailabs/systemui/R$id;->appChildNavContainer:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->mAppChildIconContainer:Landroid/view/ViewGroup;

    .line 81
    sget p1, Lcom/alibaba/ailabs/systemui/R$id;->childBack:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->mChildBack:Landroid/view/View;

    .line 82
    sget p1, Lcom/alibaba/ailabs/systemui/R$id;->child_home:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->mChildHome:Landroid/view/View;

    .line 83
    sget p1, Lcom/alibaba/ailabs/systemui/R$id;->title:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->mTitle:Landroid/widget/TextView;

    .line 84
    sget p1, Lcom/alibaba/ailabs/systemui/R$id;->back_ext:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->mBackExt:Landroid/view/View;

    .line 85
    sget p1, Lcom/alibaba/ailabs/systemui/R$id;->back_ext_bg:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->mBackBgExt:Landroid/view/View;

    .line 86
    sget p1, Lcom/alibaba/ailabs/systemui/R$id;->back_ext_bg_child:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->mBackExtChild:Landroid/view/View;

    .line 87
    iget-object p1, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->mBackBgExt:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 88
    iget-object p1, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->mBackExtChild:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 89
    invoke-direct {p0}, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->initClickListener()V

    return-void
.end method

.method private startAppNav(Ljava/lang/String;)V
    .locals 3

    const-string v0, "StatusBarView"

    .line 143
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    invoke-direct {p0}, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->toHome()V

    return-void

    .line 147
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startAppNav: uri"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 149
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 150
    invoke-virtual {p0}, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 152
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startAppNav \u5f02\u5e38: uri"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private toHome()V
    .locals 2

    .line 135
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MAIN"

    .line 136
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.HOME"

    .line 137
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    invoke-virtual {p0}, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private update()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 244
    iget-boolean v0, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->mChildMode:Z

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->mAppChildIconContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 246
    iget-object v0, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->mAppIconContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->mBack:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->mHome:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->mChildBack:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 250
    iget-object v0, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->mChildHome:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->mAppChildIconContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->mAppIconContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->mBack:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->mHome:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->mChildBack:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->mChildHome:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public noEscape()V
    .locals 2

    .line 423
    iget-object v0, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->mBack:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 424
    iget-object v0, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->mHome:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 425
    iget-object v0, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 427
    iget-object v0, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->mAppIconContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 428
    iget-object v0, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->mAppChildIconContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public onItemClick(Landroid/view/View;)V
    .locals 3

    const-string v0, "StatusBarView"

    const-string v1, "onItemClick"

    .line 94
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-static {}, Lcom/alibaba/ailabs/systemui/StatusNavManager;->getInstance()Lcom/alibaba/ailabs/systemui/StatusNavManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/systemui/StatusNavManager;->getListener()Lcom/alibaba/ailabs/systemui/StatusNavManager$NavBarEventListener;

    move-result-object v1

    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 97
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    if-eqz v1, :cond_0

    .line 121
    invoke-interface {v1, p1}, Lcom/alibaba/ailabs/systemui/StatusNavManager$NavBarEventListener;->onNabv(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "\u5bfc\u822a \u4e8b\u4ef6\u88ab\u5f53\u524d\u9875\u9762\u62e6\u622a\u4e86"

    .line 123
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 127
    :cond_0
    invoke-static {p1}, Lcom/alibaba/ailabs/systemui/AppNavInfo;->getAction(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->startAppNav(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 111
    invoke-interface {v1}, Lcom/alibaba/ailabs/systemui/StatusNavManager$NavBarEventListener;->onHome()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "home \u4e8b\u4ef6\u88ab\u5f53\u524d\u9875\u9762\u62e6\u622a\u4e86"

    .line 113
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 117
    :cond_2
    invoke-direct {p0}, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->toHome()V

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    .line 101
    invoke-interface {v1}, Lcom/alibaba/ailabs/systemui/StatusNavManager$NavBarEventListener;->onBack()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "back \u4e8b\u4ef6\u88ab\u5f53\u524d\u9875\u9762\u62e6\u622a\u4e86"

    .line 103
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 107
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public onlyBack()V
    .locals 2

    .line 432
    iget-object v0, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->mAppIconContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 433
    iget-object v0, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->mAppChildIconContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v0, 0x0

    .line 434
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->setBackVisibility(I)V

    .line 435
    iget-object v0, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->mHome:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 436
    iget-object v0, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->mChildHome:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 437
    iget-object v0, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public onlyEscape()V
    .locals 3

    .line 409
    iget-object v0, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->mAppIconContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 410
    iget-object v0, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->mAppChildIconContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 411
    iget-boolean v0, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->mChildMode:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->mChildHome:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->mHome:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 418
    :goto_0
    invoke-virtual {p0, v2}, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->setBackVisibility(I)V

    .line 419
    iget-object v0, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setBackVisibility(I)V
    .locals 1

    .line 336
    iget-boolean v0, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->mChildMode:Z

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->mChildBack:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->mBack:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 342
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->mBackExt:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setHomeVisibility(I)V
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->mHome:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2

    .line 351
    iget-object v0, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->mAppChildIconContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 352
    iget-object v0, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->mAppIconContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 353
    iget-object v0, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->mTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 354
    iget-object v0, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showAnimAlpha(Landroid/view/View;FFLandroid/animation/Animator$AnimatorListener;)V
    .locals 7

    const/4 v0, 0x2

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    const-string v5, "alpha"

    cmpl-float v6, p2, p3

    if-lez v6, :cond_0

    .line 303
    new-array v4, v4, [F

    aput p2, v4, v3

    div-float/2addr p2, v1

    aput p2, v4, v2

    aput p3, v4, v0

    invoke-static {p1, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    goto :goto_0

    .line 305
    :cond_0
    new-array v4, v4, [F

    aput p2, v4, v3

    div-float p2, p3, v1

    aput p2, v4, v2

    aput p3, v4, v0

    invoke-static {p1, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    :goto_0
    const-wide/16 p2, 0x12c

    .line 310
    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 311
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    if-eqz p4, :cond_1

    .line 313
    invoke-virtual {p1, p4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    return-void
.end method

.method public showAnimScale(Landroid/view/View;FFLandroid/animation/Animator$AnimatorListener;)V
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    const-string v4, "scaleX"

    cmpl-float v5, p2, p3

    if-lez v5, :cond_0

    .line 321
    new-array p3, v3, [F

    aput p2, p3, v2

    const v2, 0x3f666666    # 0.9f

    mul-float v2, v2, p2

    aput v2, p3, v1

    const v1, 0x3f4ccccd    # 0.8f

    mul-float p2, p2, v1

    aput p2, p3, v0

    invoke-static {p1, v4, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    goto :goto_0

    .line 323
    :cond_0
    new-array v3, v3, [F

    aput p2, v3, v2

    const v2, 0x3f8ccccd    # 1.1f

    mul-float p2, p2, v2

    aput p2, v3, v1

    aput p3, v3, v0

    invoke-static {p1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    :goto_0
    const-wide/16 p2, 0x12c

    .line 328
    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 329
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    if-eqz p4, :cond_1

    .line 331
    invoke-virtual {p1, p4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    return-void
.end method

.method public showAppNavItem(I)V
    .locals 7

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showAppNavItem: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatusBarView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v0, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->mAppIconContainer:Landroid/view/ViewGroup;

    .line 267
    iget-boolean v2, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->mChildMode:Z

    if-eqz v2, :cond_0

    .line 268
    iget-object v0, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->mAppChildIconContainer:Landroid/view/ViewGroup;

    :cond_0
    const/4 v2, 0x0

    .line 272
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 273
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    .line 275
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 276
    instance-of v6, v5, Landroid/widget/ImageView;

    if-eqz v6, :cond_2

    .line 278
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    .line 279
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-ne p1, v6, :cond_1

    .line 281
    nop

    nop

    const/4 v6, 0x1

    invoke-static {p1, v6}, Lcom/alibaba/ailabs/systemui/AppNavInfo;->getSrc(IZ)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 284
    :cond_1
    nop

    nop

    invoke-static {v6, v2}, Lcom/alibaba/ailabs/systemui/AppNavInfo;->getSrc(IZ)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "showAppNavItem \u5f02\u5e38"

    .line 289
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    return-void
.end method

.method public showExpended(Z)V
    .locals 1

    .line 360
    iget-boolean v0, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->mExpended:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 364
    invoke-direct {p0}, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->closeExpended()V

    goto :goto_0

    .line 366
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->expend()V

    .line 368
    :goto_0
    iput-boolean p1, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->mExpended:Z

    return-void
.end method

.method public updateBattery(ZI)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public updateBlueTooth(I)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public updateDnd(Z)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public updateEyeMode(Z)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public updateMoonMode(Z)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public updateTime(Ljava/lang/String;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public updateVolume(I)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public updateWifi(ZI)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
