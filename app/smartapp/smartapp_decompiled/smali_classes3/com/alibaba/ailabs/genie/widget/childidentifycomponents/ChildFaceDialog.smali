.class public Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceDialog;
.super Landroid/app/Dialog;
.source "ChildFaceDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceDialog$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ChildFaceIdentify"


# instance fields
.field private childFaceClickInterface:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$ChildFaceClickInterface;

.field private childFaceIdentifyInterface:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$ChildFaceIdentifyInterface;

.field private childFaceIdentifyPresenter:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;

.field private mChildFaceIdentifyRelativeView:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 33
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getChildFaceIdentifyPresenter()Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceDialog;->childFaceIdentifyPresenter:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;

    return-object v0
.end method

.method public getChildIdentityView()Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceDialog;->mChildFaceIdentifyRelativeView:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 65
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 67
    new-instance p1, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceDialog;->mChildFaceIdentifyRelativeView:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;

    .line 68
    new-instance p1, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter$Builder;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter$Builder;-><init>()V

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceDialog;->mChildFaceIdentifyRelativeView:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;

    .line 69
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter$Builder;->setView(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$View;)Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceDialog;->childFaceIdentifyInterface:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$ChildFaceIdentifyInterface;

    .line 70
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter$Builder;->setChildFaceIdentifyInterface(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$ChildFaceIdentifyInterface;)Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceDialog;->childFaceClickInterface:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$ChildFaceClickInterface;

    .line 71
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter$Builder;->setChildFaceClickInterface(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$ChildFaceClickInterface;)Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter$Builder;

    move-result-object p1

    .line 72
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter$Builder;->build()Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceDialog;->childFaceIdentifyPresenter:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;

    .line 74
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceDialog;->mChildFaceIdentifyRelativeView:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceDialog;->childFaceIdentifyPresenter:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->setPresenter(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$Presenter;)V

    .line 75
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceDialog;->mChildFaceIdentifyRelativeView:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceDialog;->setContentView(Landroid/view/View;)V

    .line 76
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceDialog;->mChildFaceIdentifyRelativeView:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceDialog;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public setChildFaceClickInterface(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$ChildFaceClickInterface;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceDialog;->childFaceClickInterface:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$ChildFaceClickInterface;

    return-void
.end method

.method public setChildFaceIdentifyInterface(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$ChildFaceIdentifyInterface;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceDialog;->childFaceIdentifyInterface:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$ChildFaceIdentifyInterface;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceDialog;->title:Ljava/lang/String;

    return-void
.end method

.method public show()V
    .locals 3

    .line 81
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 85
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x50

    .line 87
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, -0x1

    .line 88
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 89
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v1, 0x500

    .line 90
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 91
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 92
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
