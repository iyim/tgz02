.class public Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RightAccountDialog$Builder;
.super Ljava/lang/Object;
.source "RightAccountDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RightAccountDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private clickListener:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RightAccountDialog$ClickListener;

.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RightAccountDialog$Builder;->context:Landroid/content/Context;

    return-void
.end method

.method private clearGlide()V
    .locals 2

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RightAccountDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->clearMemory()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 126
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RightAccountDialog"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RightAccountDialog;
    .locals 7

    .line 48
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RightAccountDialog$Builder;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 49
    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RightAccountDialog;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RightAccountDialog$Builder;->context:Landroid/content/Context;

    sget v3, Lcom/alibaba/ailabs/genie/musicplayer/R$style;->Dialog:I

    invoke-direct {v1, v2, v3}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RightAccountDialog;-><init>(Landroid/content/Context;I)V

    .line 51
    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$layout;->dialog_right_account:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 62
    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->dialog_bg:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 63
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 64
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RightAccountDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 67
    :cond_0
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {p2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, p2}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RightAccountDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    sget p2, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->dialog_layout:I

    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v2, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/-$$Lambda$RightAccountDialog$Builder$si3n7dGf1deIsYhRF94qJLWnadQ;

    invoke-direct {v2, p0, p1, v1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/-$$Lambda$RightAccountDialog$Builder$si3n7dGf1deIsYhRF94qJLWnadQ;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RightAccountDialog$Builder;Ljava/lang/String;Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RightAccountDialog;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    sget p2, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->dialog_cancel:I

    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v2, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/-$$Lambda$RightAccountDialog$Builder$Axw0zJkjMe2By-LKovY8eIaHPIs;

    invoke-direct {v2, p0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/-$$Lambda$RightAccountDialog$Builder$Axw0zJkjMe2By-LKovY8eIaHPIs;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RightAccountDialog$Builder;Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RightAccountDialog;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    sget p2, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->dialog_full_layout:I

    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v2, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/-$$Lambda$RightAccountDialog$Builder$QnkkRpnXvLKv89PbWjA71hNqi0M;

    invoke-direct {v2, p0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/-$$Lambda$RightAccountDialog$Builder$QnkkRpnXvLKv89PbWjA71hNqi0M;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RightAccountDialog$Builder;Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RightAccountDialog;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RightAccountDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    .line 102
    iget v2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    const/high16 v3, 0x44800000    # 1024.0f

    div-float/2addr v2, v3

    .line 103
    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float p2, p2

    const/high16 v3, 0x44160000    # 600.0f

    div-float/2addr p2, v3

    .line 105
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RightAccountDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 106
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 107
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    const v6, 0x442c8000    # 690.0f

    mul-float v2, v2, v6

    float-to-int v2, v2

    invoke-virtual {v5, v2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 108
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const v5, 0x440f8000    # 574.0f

    mul-float p2, p2, v5

    float-to-int p2, p2

    invoke-virtual {v2, p2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 109
    invoke-virtual {v3, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 111
    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RightAccountDialog;->setContentView(Landroid/view/View;)V

    .line 113
    new-instance p2, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;

    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StaticsManager;->page_music_tme_poplayer:Ljava/lang/String;

    sget-object v2, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StaticsManager;->spm_cnt_music_account:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RightAccountDialog$Builder;->context:Landroid/content/Context;

    const-string v4, "music_tme_poplayer"

    invoke-direct {p2, v0, v2, v4, v3}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 117
    invoke-virtual {p2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;->withPageType(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StaticsManager;->reportExposeEvent(Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;)V

    return-object v1
.end method

.method public synthetic lambda$create$36$RightAccountDialog$Builder(Ljava/lang/String;Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RightAccountDialog;Landroid/view/View;)V
    .locals 4

    .line 71
    iget-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RightAccountDialog$Builder;->clickListener:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RightAccountDialog$ClickListener;

    if-eqz p3, :cond_0

    .line 72
    invoke-interface {p3, p1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RightAccountDialog$ClickListener;->onConfirm(Ljava/lang/String;)V

    .line 75
    :cond_0
    new-instance p3, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;

    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StaticsManager;->page_music_tme_poplayer:Ljava/lang/String;

    sget-object v1, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StaticsManager;->spm_cnt_tme_poplayer:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RightAccountDialog$Builder;->context:Landroid/content/Context;

    const-string v3, "music_tme_poplayer_click"

    invoke-direct {p3, v0, v1, v3, v2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 79
    invoke-virtual {p3, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;->withPageType(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StaticsManager;->spm_cnt_tme_poplayer:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "c1625624459288"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "d1625624459288"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 80
    invoke-virtual {p1, p3}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;->withSpm(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;

    move-result-object p1

    .line 79
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StaticsManager;->reportClickEvent(Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;)V

    .line 82
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RightAccountDialog;->dismiss()V

    .line 83
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RightAccountDialog$Builder;->clearGlide()V

    return-void
.end method

.method public synthetic lambda$create$37$RightAccountDialog$Builder(Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RightAccountDialog;Landroid/view/View;)V
    .locals 0

    .line 86
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RightAccountDialog$Builder;->clickListener:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RightAccountDialog$ClickListener;

    if-eqz p2, :cond_0

    .line 87
    invoke-interface {p2}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RightAccountDialog$ClickListener;->onCancel()V

    .line 89
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RightAccountDialog;->dismiss()V

    .line 90
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RightAccountDialog$Builder;->clearGlide()V

    return-void
.end method

.method public synthetic lambda$create$38$RightAccountDialog$Builder(Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RightAccountDialog;Landroid/view/View;)V
    .locals 0

    .line 94
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RightAccountDialog$Builder;->clickListener:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RightAccountDialog$ClickListener;

    if-eqz p2, :cond_0

    .line 95
    invoke-interface {p2}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RightAccountDialog$ClickListener;->onCancel()V

    .line 97
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RightAccountDialog;->dismiss()V

    .line 98
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RightAccountDialog$Builder;->clearGlide()V

    return-void
.end method

.method public setClickListener(Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RightAccountDialog$ClickListener;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RightAccountDialog$Builder;->clickListener:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RightAccountDialog$ClickListener;

    return-void
.end method
