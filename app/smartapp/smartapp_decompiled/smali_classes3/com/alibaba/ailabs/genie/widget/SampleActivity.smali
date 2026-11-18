.class public Lcom/alibaba/ailabs/genie/widget/SampleActivity;
.super Landroid/app/Activity;
.source "SampleActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 14
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    sget p1, Lcom/alibaba/ailabs/genie/widget/R$layout;->layout_genie_sample_activity:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/widget/SampleActivity;->setContentView(I)V

    .line 18
    sget p1, Lcom/alibaba/ailabs/genie/widget/R$id;->sample_demo_genie_nav_bar_1:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/widget/SampleActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/widget/GenieNormalNavBar;

    .line 19
    invoke-virtual {p1, p0}, Lcom/alibaba/ailabs/genie/widget/GenieNormalNavBar;->setHostActivity(Landroid/app/Activity;)V

    .line 21
    sget p1, Lcom/alibaba/ailabs/genie/widget/R$id;->sample_demo_genie_nav_bar_3:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/widget/SampleActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/widget/GenieNormalNavBar;

    const-string v0, "\u6d4b\u8bd5\u6807\u98983"

    .line 22
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/widget/GenieNormalNavBar;->setTitle(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/widget/GenieNormalNavBar;

    .line 24
    sget p1, Lcom/alibaba/ailabs/genie/widget/R$id;->sample_demo_genie_nav_bar_2:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/widget/SampleActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar;

    const-string v0, "\u70ed\u95e8\u7535\u5f71"

    .line 25
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar;->addTab(Ljava/lang/String;)V

    const-string v1, "\u70ed\u95e8\u97f3\u4e50"

    .line 26
    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar;->addTab(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar;->addTab(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar;->addTab(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar;->addTab(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar;->addTab(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar;->addTab(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar;->addTab(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar;->addTab(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar;->addTab(Ljava/lang/String;)V

    .line 36
    new-instance v0, Lcom/alibaba/ailabs/genie/widget/SampleActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/widget/SampleActivity$1;-><init>(Lcom/alibaba/ailabs/genie/widget/SampleActivity;)V

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar;->setOnNavEventListener(Lcom/alibaba/ailabs/genie/widget/GenieNormalNavBar$OnNavEventListener;)Lcom/alibaba/ailabs/genie/widget/GenieNormalNavBar;

    return-void
.end method
