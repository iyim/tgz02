.class public final Lcom/alibaba/ailabs/genie/widget/topsnackbar/TopSnackBar;
.super Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;
.source "TopSnackBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/widget/topsnackbar/TopSnackBar$SnackBarLayout;,
        Lcom/alibaba/ailabs/genie/widget/topsnackbar/TopSnackBar$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar<",
        "Lcom/alibaba/ailabs/genie/widget/topsnackbar/TopSnackBar;",
        ">;"
    }
.end annotation


# static fields
.field public static final LENGTH_INDEFINITE:I = -0x2

.field public static final LENGTH_LONG:I = 0x0

.field public static final LENGTH_SHORT:I = -0x1


# instance fields
.field private mCallback:Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$BaseCallback;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$BaseCallback<",
            "Lcom/alibaba/ailabs/genie/widget/topsnackbar/TopSnackBar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$ContentViewCallback;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$ContentViewCallback;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static findSuitableParent(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 3

    const/4 v0, 0x0

    move-object v1, v0

    .line 223
    :cond_0
    instance-of v2, p0, Landroid/support/design/widget/CoordinatorLayout;

    if-eqz v2, :cond_1

    .line 225
    nop

    nop

    return-object p0

    .line 226
    :cond_1
    instance-of v2, p0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_3

    .line 227
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x1020002

    if-ne v1, v2, :cond_2

    .line 230
    nop

    nop

    return-object p0

    .line 233
    :cond_2
    move-object v1, p0

    nop

    nop

    :cond_3
    if-eqz p0, :cond_5

    .line 239
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 240
    instance-of v2, p0, Landroid/view/View;

    if-eqz v2, :cond_4

    check-cast p0, Landroid/view/View;

    goto :goto_0

    :cond_4
    move-object p0, v0

    :cond_5
    :goto_0
    if-nez p0, :cond_0

    return-object v1
.end method

.method public static make(Landroid/view/View;II)Lcom/alibaba/ailabs/genie/widget/topsnackbar/TopSnackBar;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 217
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/TopSnackBar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/alibaba/ailabs/genie/widget/topsnackbar/TopSnackBar;

    move-result-object p0

    return-object p0
.end method

.method public static make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/alibaba/ailabs/genie/widget/topsnackbar/TopSnackBar;
    .locals 3
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 135
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/TopSnackBar;->findSuitableParent(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 141
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 142
    sget v1, Lcom/alibaba/ailabs/genie/widget/topsnackbar/R$layout;->design_layout_top_snackbar_include:I

    const/4 v2, 0x0

    .line 143
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackbarContentLayout;

    .line 145
    new-instance v1, Lcom/alibaba/ailabs/genie/widget/topsnackbar/TopSnackBar;

    invoke-direct {v1, p0, v0, v0}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/TopSnackBar;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$ContentViewCallback;)V

    .line 146
    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/TopSnackBar;->setText(Ljava/lang/CharSequence;)Lcom/alibaba/ailabs/genie/widget/topsnackbar/TopSnackBar;

    .line 147
    invoke-virtual {v1, p2}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/TopSnackBar;->setDuration(I)Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;

    return-object v1

    .line 137
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No suitable parent found from the given view. Please provide a valid view."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public setAction(ILandroid/view/View$OnClickListener;)Lcom/alibaba/ailabs/genie/widget/topsnackbar/TopSnackBar;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 279
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/TopSnackBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/TopSnackBar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/alibaba/ailabs/genie/widget/topsnackbar/TopSnackBar;

    move-result-object p1

    return-object p1
.end method

.method public setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/alibaba/ailabs/genie/widget/topsnackbar/TopSnackBar;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 290
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/TopSnackBar;->mView:Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackbarContentLayout;

    .line 291
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackbarContentLayout;->getActionView()Landroid/widget/Button;

    move-result-object v0

    .line 293
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 297
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 298
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    new-instance p1, Lcom/alibaba/ailabs/genie/widget/topsnackbar/TopSnackBar$1;

    invoke-direct {p1, p0, p2}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/TopSnackBar$1;-><init>(Lcom/alibaba/ailabs/genie/widget/topsnackbar/TopSnackBar;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/16 p1, 0x8

    .line 294
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 p1, 0x0

    .line 295
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    return-object p0
.end method

.method public setActionTextColor(I)Lcom/alibaba/ailabs/genie/widget/topsnackbar/TopSnackBar;
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 329
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/TopSnackBar;->mView:Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackbarContentLayout;

    .line 330
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackbarContentLayout;->getActionView()Landroid/widget/Button;

    move-result-object v0

    .line 331
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p0
.end method

.method public setActionTextColor(Landroid/content/res/ColorStateList;)Lcom/alibaba/ailabs/genie/widget/topsnackbar/TopSnackBar;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 317
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/TopSnackBar;->mView:Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackbarContentLayout;

    .line 318
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackbarContentLayout;->getActionView()Landroid/widget/Button;

    move-result-object v0

    .line 319
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-object p0
.end method

.method public setCallback(Lcom/alibaba/ailabs/genie/widget/topsnackbar/TopSnackBar$Callback;)Lcom/alibaba/ailabs/genie/widget/topsnackbar/TopSnackBar;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 352
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/TopSnackBar;->mCallback:Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$BaseCallback;

    if-eqz v0, :cond_0

    .line 353
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/TopSnackBar;->removeCallback(Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$BaseCallback;)Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;

    :cond_0
    if-eqz p1, :cond_1

    .line 356
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/TopSnackBar;->addCallback(Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$BaseCallback;)Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;

    .line 360
    :cond_1
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/TopSnackBar;->mCallback:Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$BaseCallback;

    return-object p0
.end method

.method public setIcon(I)V
    .locals 2

    .line 159
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/TopSnackBar;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/widget/topsnackbar/R$id;->icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 162
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 163
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 165
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 177
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/TopSnackBar;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/widget/topsnackbar/R$id;->icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 180
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 181
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 183
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setText(I)Lcom/alibaba/ailabs/genie/widget/topsnackbar/TopSnackBar;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 268
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/TopSnackBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/TopSnackBar;->setText(Ljava/lang/CharSequence;)Lcom/alibaba/ailabs/genie/widget/topsnackbar/TopSnackBar;

    move-result-object p1

    return-object p1
.end method

.method public setText(Ljava/lang/CharSequence;)Lcom/alibaba/ailabs/genie/widget/topsnackbar/TopSnackBar;
    .locals 2
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 255
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/TopSnackBar;->mView:Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackbarContentLayout;

    .line 256
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackbarContentLayout;->getMessageView()Landroid/widget/TextView;

    move-result-object v0

    .line 257
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public showSuccess()V
    .locals 2

    .line 189
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/TopSnackBar;->getView()Landroid/view/View;

    move-result-object v0

    const v1, -0x33d43ca7    # -4.502666E7f

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 190
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/TopSnackBar;->show()V

    return-void
.end method

.method public showWarning()V
    .locals 2

    .line 194
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/TopSnackBar;->getView()Landroid/view/View;

    move-result-object v0

    const v1, -0x3307b2d5

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 195
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/TopSnackBar;->show()V

    return-void
.end method
