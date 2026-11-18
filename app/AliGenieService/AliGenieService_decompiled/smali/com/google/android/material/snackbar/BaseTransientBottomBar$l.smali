.class public Lcom/google/android/material/snackbar/BaseTransientBottomBar$l;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/snackbar/BaseTransientBottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "l"
.end annotation


# static fields
.field public static final i:Landroid/view/View$OnTouchListener;


# instance fields
.field public b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$k;

.field public c:Lcom/google/android/material/snackbar/BaseTransientBottomBar$j;

.field public d:I

.field public final e:F

.field public final f:F

.field public g:Landroid/content/res/ColorStateList;

.field public h:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$l$a;

    invoke-direct {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$l$a;-><init>()V

    sput-object v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$l;->i:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$l;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1, p2, v0, v0}, Lc/d/a/a/j0/a/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v1, Lc/d/a/a/k;->SnackbarLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    sget v1, Lc/d/a/a/k;->SnackbarLayout_elevation:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lc/d/a/a/k;->SnackbarLayout_elevation:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p0, v1}, Lb/h/k/q;->a(Landroid/view/View;F)V

    :cond_0
    sget v1, Lc/d/a/a/k;->SnackbarLayout_animationMode:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$l;->d:I

    sget v1, Lc/d/a/a/k;->SnackbarLayout_backgroundOverlayColorAlpha:I

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$l;->e:F

    sget v1, Lc/d/a/a/k;->SnackbarLayout_backgroundTint:I

    invoke-static {p1, p2, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$l;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    sget p1, Lc/d/a/a/k;->SnackbarLayout_backgroundTintMode:I

    const/4 v1, -0x1

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p1, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$l;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    sget p1, Lc/d/a/a/k;->SnackbarLayout_actionTextColorAlpha:I

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$l;->f:F

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    sget-object p1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$l;->i:Landroid/view/View$OnTouchListener;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_2

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lc/d/a/a/d;->mtrl_snackbar_background_corner_radius:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    new-instance p2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    sget p1, Lc/d/a/a/b;->colorSurface:I

    sget v0, Lc/d/a/a/b;->colorOnSurface:I

    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$l;->getBackgroundOverlayColorAlpha()F

    move-result v1

    .line 2
    invoke-static {p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Landroid/view/View;I)I

    move-result p1

    invoke-static {p0, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Landroid/view/View;I)I

    move-result v0

    invoke-static {p1, v0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(IIF)I

    move-result p1

    .line 3
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$l;->g:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_1

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 6
    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    :goto_0
    invoke-static {p0, p2}, Lb/h/k/q;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public getActionTextColorAlpha()F
    .locals 1

    iget v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$l;->f:F

    return v0
.end method

.method public getAnimationMode()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$l;->d:I

    return v0
.end method

.method public getBackgroundOverlayColorAlpha()F
    .locals 1

    iget v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$l;->e:F

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$l;->c:Lcom/google/android/material/snackbar/BaseTransientBottomBar$j;

    if-eqz v0, :cond_0

    check-cast v0, Lc/d/a/a/h0/h;

    invoke-virtual {v0, p0}, Lc/d/a/a/h0/h;->a(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lb/h/k/q;->F(Landroid/view/View;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$l;->c:Lcom/google/android/material/snackbar/BaseTransientBottomBar$j;

    if-eqz v0, :cond_0

    check-cast v0, Lc/d/a/a/h0/h;

    .line 1
    iget-object v1, v0, Lc/d/a/a/h0/h;->a:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-virtual {v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->s:Landroid/os/Handler;

    new-instance v2, Lc/d/a/a/h0/g;

    invoke-direct {v2, v0}, Lc/d/a/a/h0/g;-><init>(Lc/d/a/a/h0/h;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$l;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$k;

    if-eqz p1, :cond_0

    check-cast p1, Lc/d/a/a/h0/i;

    .line 1
    iget-object p2, p1, Lc/d/a/a/h0/i;->a:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    iget-object p2, p2, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->c:Lcom/google/android/material/snackbar/BaseTransientBottomBar$l;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$l;->setOnLayoutChangeListener(Lcom/google/android/material/snackbar/BaseTransientBottomBar$k;)V

    iget-object p1, p1, Lc/d/a/a/h0/i;->a:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->g()V

    :cond_0
    return-void
.end method

.method public setAnimationMode(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$l;->d:I

    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$l;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$l;->g:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$l;->g:Landroid/content/res/ColorStateList;

    .line 3
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 4
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$l;->h:Landroid/graphics/PorterDuff$Mode;

    .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 6
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$l;->g:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 3
    iget-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$l;->h:Landroid/graphics/PorterDuff$Mode;

    .line 4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eq v0, p1, :cond_0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$l;->h:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eq v0, p1, :cond_0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setOnAttachStateChangeListener(Lcom/google/android/material/snackbar/BaseTransientBottomBar$j;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$l;->c:Lcom/google/android/material/snackbar/BaseTransientBottomBar$j;

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$l;->i:Landroid/view/View$OnTouchListener;

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnLayoutChangeListener(Lcom/google/android/material/snackbar/BaseTransientBottomBar$k;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$l;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$k;

    return-void
.end method
