.class public abstract Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment;
.super Landroid/app/DialogFragment;
.source "BaseDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment$IGetUserCheckedPermissionStatus;
    }
.end annotation


# static fields
.field private static final SAVED_DIALOG_STATE_TAG:Ljava/lang/String; = "android:savedDialogState"

.field private static final TAG:Ljava/lang/String; = "BaseDialogFragment"


# instance fields
.field private DefaultGravity:I

.field private drawable:Landroid/graphics/drawable/GradientDrawable;

.field protected mGetAuthServiceResponse:Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;

.field protected mGetUserCheckedPermissionStatus:Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment$IGetUserCheckedPermissionStatus;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private initDialog()V
    .locals 3

    .line 177
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 178
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 179
    iget v2, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment;->DefaultGravity:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v2, -0x1

    .line 180
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v2, -0x2

    .line 181
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 182
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v0, 0x0

    .line 183
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment;->setCancelable(Z)V

    return-void
.end method


# virtual methods
.method public abstract getScreenWidthRatio()D
.end method

.method public abstract getView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public initData(Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;)Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment;
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment;->mGetAuthServiceResponse:Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;

    return-object p0
.end method

.method public isDialogFragmentShowing()Z
    .locals 1

    .line 196
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "======"

    const-string v1, "FragmentActivityCreated"

    .line 112
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment;->getShowsDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 114
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment;->setShowsDialog(Z)V

    .line 116
    :cond_0
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    .line 117
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment;->setShowsDialog(Z)V

    .line 119
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 121
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    .line 124
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 122
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "DialogFragment can not be attached to a container view"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 126
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 128
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    :cond_3
    if-eqz p1, :cond_4

    const-string v0, "android:savedDialogState"

    .line 131
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 133
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_4
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 37
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 38
    sget p1, Lcom/alibaba/ailabs/genie/authservice/R$style;->bottom_dialog:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment;->setStyle(II)V

    const-string p1, "========="

    const-string v0, "FragmentonCreate"

    .line 40
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 97
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment;->initDialog()V

    .line 98
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment;->getView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment;->view:Landroid/view/View;

    .line 99
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment;->drawable:Landroid/graphics/drawable/GradientDrawable;

    if-eqz p1, :cond_0

    .line 100
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment;->view:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const-string p1, "========="

    const-string p2, "onCreateView"

    .line 102
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment;->view:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 270
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    const-string v0, "========="

    const-string v1, "FragmentonDestroy"

    .line 271
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 273
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment;->mGetUserCheckedPermissionStatus:Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment$IGetUserCheckedPermissionStatus;

    .line 274
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment;->mGetAuthServiceResponse:Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 84
    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    const-string v0, "========="

    const-string v1, "FragmentonPause"

    .line 85
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onResume()V
    .locals 2

    .line 77
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    const-string v0, "========="

    const-string v1, "FragmentonResume"

    .line 78
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onStart()V
    .locals 7

    .line 47
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    const-string v0, "========="

    const-string v1, "FragmentonStart"

    .line 49
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 52
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 54
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 55
    iget v2, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment;->DefaultGravity:I

    const/16 v3, 0x11

    if-ne v2, v3, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v3, v0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment;->getScreenWidthRatio()D

    move-result-wide v5

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    double-to-int v0, v3

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v2, v0, v1}, Landroid/view/Window;->setLayout(II)V

    goto :goto_2

    :cond_0
    const/16 v3, 0x50

    if-eq v2, v3, :cond_4

    const/16 v3, 0x30

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    goto :goto_0

    :cond_2
    if-nez v2, :cond_5

    .line 64
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v2, v0}, Landroid/view/Window;->setLayout(II)V

    goto :goto_2

    .line 62
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2, v1, v0}, Landroid/view/Window;->setLayout(II)V

    goto :goto_2

    .line 58
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setLayout(II)V

    :cond_5
    :goto_2
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 90
    invoke-super {p0}, Landroid/app/DialogFragment;->onStop()V

    const-string v0, "========="

    const-string v1, "FragmentonStop"

    .line 91
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setGravity(I)Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment;
    .locals 2

    .line 143
    iput p1, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment;->DefaultGravity:I

    .line 144
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment;->drawable:Landroid/graphics/drawable/GradientDrawable;

    .line 145
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment;->drawable:Landroid/graphics/drawable/GradientDrawable;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x3

    const/16 v1, 0x8

    if-eq p1, v0, :cond_4

    const/4 v0, 0x5

    if-eq p1, v0, :cond_3

    const/16 v0, 0x11

    if-eq p1, v0, :cond_2

    const/16 v0, 0x30

    if-eq p1, v0, :cond_1

    const/16 v0, 0x50

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 151
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment;->drawable:Landroid/graphics/drawable/GradientDrawable;

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    goto :goto_0

    .line 154
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment;->drawable:Landroid/graphics/drawable/GradientDrawable;

    new-array v0, v1, [F

    fill-array-data v0, :array_1

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    goto :goto_0

    .line 148
    :cond_2
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment;->drawable:Landroid/graphics/drawable/GradientDrawable;

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    goto :goto_0

    .line 160
    :cond_3
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment;->drawable:Landroid/graphics/drawable/GradientDrawable;

    new-array v0, v1, [F

    fill-array-data v0, :array_2

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    goto :goto_0

    .line 157
    :cond_4
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment;->drawable:Landroid/graphics/drawable/GradientDrawable;

    new-array v0, v1, [F

    fill-array-data v0, :array_3

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    goto :goto_0

    .line 163
    :cond_5
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment;->drawable:Landroid/graphics/drawable/GradientDrawable;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :goto_0
    return-object p0

    :array_0
    .array-data 4
        0x41a00000    # 20.0f
        0x41a00000    # 20.0f
        0x41a00000    # 20.0f
        0x41a00000    # 20.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x41a00000    # 20.0f
        0x41a00000    # 20.0f
        0x41a00000    # 20.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_2
    .array-data 4
        0x41a00000    # 20.0f
        0x41a00000    # 20.0f
        0x0
        0x0
        0x0
        0x0
        0x41a00000    # 20.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
        0x41a00000    # 20.0f
        0x41a00000    # 20.0f
        0x41a00000    # 20.0f
        0x41a00000    # 20.0f
        0x0
        0x0
    .end array-data
.end method

.method public setUserCheckedPermissionListener(Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment$IGetUserCheckedPermissionStatus;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment;->mGetUserCheckedPermissionStatus:Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment$IGetUserCheckedPermissionStatus;

    return-void
.end method

.method public show(Landroid/app/FragmentManager;)V
    .locals 1

    const/16 v0, 0x11

    .line 187
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment;->setGravity(I)Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment;

    .line 188
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BaseDialogFragment"

    .line 189
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
