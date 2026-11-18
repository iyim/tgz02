.class public Lcom/alibaba/ailabs/genie/musicplayer/activity/SpeedActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SpeedActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpeedActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 33
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    sget p1, Lcom/alibaba/ailabs/genie/musicplayer/R$layout;->activity_speed_layout:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/activity/SpeedActivity;->setContentView(I)V

    .line 35
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-string p1, "0.5"

    .line 36
    invoke-interface {v6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "0.75"

    .line 37
    invoke-interface {v6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "1"

    .line 38
    invoke-interface {v6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "1.25"

    .line 39
    invoke-interface {v6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "1.5"

    .line 40
    invoke-interface {v6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "2"

    .line 41
    invoke-interface {v6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/SpeedActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "speed"

    .line 47
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 48
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 49
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v5, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    const/4 v5, -0x1

    .line 56
    :goto_1
    sget p1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->speedRyId:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/activity/SpeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    .line 57
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 60
    new-instance v7, Lcom/alibaba/ailabs/genie/musicplayer/activity/SpeedActivity$1;

    sget v3, Lcom/alibaba/ailabs/genie/musicplayer/R$layout;->speed_item:I

    move-object v0, v7

    move-object v1, p0

    move-object v2, p0

    move-object v4, v6

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/ailabs/genie/musicplayer/activity/SpeedActivity$1;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/activity/SpeedActivity;Landroid/content/Context;ILjava/util/List;ILjava/util/List;)V

    .line 81
    invoke-virtual {p1, v7}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 82
    invoke-virtual {v7}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 96
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 97
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/App;->getApp()Lcom/alibaba/ailabs/genie/musicplayer/App;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/App;->getApp()Lcom/alibaba/ailabs/genie/musicplayer/App;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/App;->setSpeedActivityInForeground(Z)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 87
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 88
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/activity/ActivityManager;->getInstance()Lcom/alibaba/ailabs/genie/musicplayer/activity/ActivityManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/ActivityManager;->addActivity(Landroid/app/Activity;)V

    .line 89
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/App;->getApp()Lcom/alibaba/ailabs/genie/musicplayer/App;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/App;->getApp()Lcom/alibaba/ailabs/genie/musicplayer/App;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/App;->setSpeedActivityInForeground(Z)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 104
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/SpeedActivity;->finish()V

    .line 105
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
