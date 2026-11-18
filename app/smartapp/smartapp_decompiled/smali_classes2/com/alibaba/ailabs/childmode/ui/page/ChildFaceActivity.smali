.class public Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity;
.super Lcom/alibaba/ailabs/childmode/ui/page/BaseActivity;
.source "ChildFaceActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ChildFaceActivity"


# instance fields
.field final PAGE_NAME:Ljava/lang/String;

.field childFaceClickInterface:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$ChildFaceClickInterface;

.field childFaceIdentifyInterface:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$ChildFaceIdentifyInterface;

.field mDialog:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceDialog;

.field mValidatePasswordFlow:Lcom/alibaba/ailabs/childmode/common/FlowTask;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/page/BaseActivity;-><init>()V

    const-string v0, "childface_identiy"

    .line 33
    iput-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity;->PAGE_NAME:Ljava/lang/String;

    .line 87
    new-instance v0, Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity$2;-><init>(Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity;->childFaceClickInterface:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$ChildFaceClickInterface;

    .line 116
    new-instance v0, Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity$3;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity$3;-><init>(Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity;->childFaceIdentifyInterface:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$ChildFaceIdentifyInterface;

    .line 169
    new-instance v0, Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity$5;

    new-instance v1, Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity$4;-><init>(Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity$5;-><init>(Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity;->mValidatePasswordFlow:Lcom/alibaba/ailabs/childmode/common/FlowTask;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity;Z)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity;->playSound(Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private playSound(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/alibaba/ailabs/genie/timestatistics/R$raw;->childface_fail:I

    invoke-static {p1, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object p1

    .line 159
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/alibaba/ailabs/genie/timestatistics/R$raw;->childface_ok:I

    invoke-static {p1, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object p1

    .line 162
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected enableShieldHome()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected enableTranslucentStatus()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 37
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/childmode/ui/page/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "ChildFaceActivity"

    const-string v0, "onCreate: "

    .line 38
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 40
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x10700

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/high16 v0, -0x80000000

    .line 43
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 45
    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 46
    new-instance p1, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceDialog;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity;->mDialog:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceDialog;

    .line 47
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity;->mDialog:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceDialog;

    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity;->childFaceClickInterface:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$ChildFaceClickInterface;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceDialog;->setChildFaceClickInterface(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$ChildFaceClickInterface;)V

    .line 48
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity;->mDialog:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceDialog;

    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity;->childFaceIdentifyInterface:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$ChildFaceIdentifyInterface;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceDialog;->setChildFaceIdentifyInterface(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$ChildFaceIdentifyInterface;)V

    .line 49
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity;->mDialog:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceDialog;

    new-instance v0, Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity$1;-><init>(Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity;)V

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 59
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity;->mDialog:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceDialog;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceDialog;->show()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 191
    invoke-super {p0}, Lcom/alibaba/ailabs/childmode/ui/page/BaseActivity;->onDestroy()V

    const-string v0, "ChildFaceActivity"

    const-string v1, "onDestroy: "

    .line 192
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity;->mDialog:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceDialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 194
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceDialog;->setChildFaceClickInterface(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$ChildFaceClickInterface;)V

    .line 195
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity;->mDialog:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceDialog;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceDialog;->setChildFaceIdentifyInterface(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$ChildFaceIdentifyInterface;)V

    .line 196
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity;->mDialog:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceDialog;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceDialog;->dismiss()V

    .line 197
    iput-object v1, p0, Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity;->mDialog:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceDialog;

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 74
    invoke-super {p0}, Lcom/alibaba/ailabs/childmode/ui/page/BaseActivity;->onPause()V

    const-string v0, "ChildFaceActivity"

    const-string v1, "onPause: "

    .line 75
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity;->mDialog:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity;->mDialog:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceDialog;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceDialog;->getChildFaceIdentifyPresenter()Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity;->mDialog:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceDialog;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceDialog;->getChildFaceIdentifyPresenter()Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->onPauseForAttach()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 65
    invoke-super {p0}, Lcom/alibaba/ailabs/childmode/ui/page/BaseActivity;->onResume()V

    const-string v0, "ChildFaceActivity"

    const-string v1, "onResume: "

    .line 66
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity;->mDialog:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity;->mDialog:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceDialog;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceDialog;->getChildFaceIdentifyPresenter()Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity;->mDialog:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceDialog;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceDialog;->getChildFaceIdentifyPresenter()Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->onResumeForAttach()V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 83
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/childmode/ui/page/BaseActivity;->onWindowFocusChanged(Z)V

    const-string p1, "ChildFaceActivity"

    const-string v0, "onWindowFocusChanged: "

    .line 84
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
