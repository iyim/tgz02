.class public abstract Lcom/alibaba/ailabs/base/activity/InitActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "InitActivity.java"


# instance fields
.field protected activity:Landroid/app/Activity;

.field protected context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method protected abstract getLayoutId()I
.end method

.method protected abstract initData()V
.end method

.method protected initEvent()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected initSome(Landroid/os/Bundle;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected abstract initView()V
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 22
    invoke-virtual {p0}, Lcom/alibaba/ailabs/base/activity/InitActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    const/4 v0, 0x1

    .line 23
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/base/activity/InitActivity;->requestWindowFeature(I)Z

    .line 24
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    iput-object p0, p0, Lcom/alibaba/ailabs/base/activity/InitActivity;->context:Landroid/content/Context;

    .line 27
    iput-object p0, p0, Lcom/alibaba/ailabs/base/activity/InitActivity;->activity:Landroid/app/Activity;

    .line 28
    invoke-virtual {p0}, Lcom/alibaba/ailabs/base/activity/InitActivity;->getLayoutId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/base/activity/InitActivity;->setContentView(I)V

    .line 29
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/base/activity/InitActivity;->initSome(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lcom/alibaba/ailabs/base/activity/InitActivity;->initView()V

    .line 33
    invoke-virtual {p0}, Lcom/alibaba/ailabs/base/activity/InitActivity;->initData()V

    .line 35
    invoke-virtual {p0}, Lcom/alibaba/ailabs/base/activity/InitActivity;->initEvent()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 55
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/alibaba/ailabs/base/activity/InitActivity;->context:Landroid/content/Context;

    .line 57
    iput-object v0, p0, Lcom/alibaba/ailabs/base/activity/InitActivity;->activity:Landroid/app/Activity;

    return-void
.end method
