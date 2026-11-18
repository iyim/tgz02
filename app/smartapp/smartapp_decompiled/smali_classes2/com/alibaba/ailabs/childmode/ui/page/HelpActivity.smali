.class public Lcom/alibaba/ailabs/childmode/ui/page/HelpActivity;
.super Landroid/app/Activity;
.source "HelpActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "HelpActivity"

.field private static final TYPE_AI_GENIE_LABS:I = 0x3

.field private static final TYPE_CHILD_MODE:I = 0x0

.field private static final TYPE_EYE_YIELD_MODE:I = 0x1

.field private static final TYPE_LISTEN_MODE:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private getLayoutId(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 95
    sget p1, Lcom/alibaba/ailabs/genie/setting/R$layout;->child_mode_help_layout:I

    return p1

    .line 93
    :cond_0
    sget p1, Lcom/alibaba/ailabs/genie/setting/R$layout;->aigenielabs_help_layout:I

    return p1

    .line 91
    :cond_1
    sget p1, Lcom/alibaba/ailabs/genie/setting/R$layout;->listenmode_help_layout:I

    return p1

    .line 89
    :cond_2
    sget p1, Lcom/alibaba/ailabs/genie/setting/R$layout;->eye_yield_help_layout:I

    return p1
.end method

.method private getType(Landroid/net/Uri;)I
    .locals 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 75
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HelpActivity"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "type"

    .line 77
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 78
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 80
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 101
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/page/HelpActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-static {p0}, Lcom/alibaba/ailabs/childmode/common/CommUtils;->setFullScreen(Landroid/app/Activity;)V

    .line 44
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/page/HelpActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 45
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 47
    :goto_0
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/childmode/ui/page/HelpActivity;->getType(Landroid/net/Uri;)I

    move-result p1

    .line 48
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/childmode/ui/page/HelpActivity;->getLayoutId(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/childmode/ui/page/HelpActivity;->setContentView(I)V

    .line 50
    sget p1, Lcom/alibaba/ailabs/genie/setting/R$id;->close:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/childmode/ui/page/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 52
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    :cond_1
    sget p1, Lcom/alibaba/ailabs/genie/setting/R$id;->root1:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/childmode/ui/page/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 55
    new-instance v0, Lcom/alibaba/ailabs/childmode/ui/page/HelpActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/childmode/ui/page/HelpActivity$1;-><init>(Lcom/alibaba/ailabs/childmode/ui/page/HelpActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    sget p1, Lcom/alibaba/ailabs/genie/setting/R$id;->root2:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/childmode/ui/page/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 63
    new-instance v0, Lcom/alibaba/ailabs/childmode/ui/page/HelpActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/childmode/ui/page/HelpActivity$2;-><init>(Lcom/alibaba/ailabs/childmode/ui/page/HelpActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
